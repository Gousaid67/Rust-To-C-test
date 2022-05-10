extern crate serde;
extern crate serde_json;
extern crate libc;

use serde_json::{Value};
use serde::{Deserialize, Serialize};
use serde_json::Result;
use std::io;
use std::fs;
use std::ffi;
use std::convert::TryInto;

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
}

#[derive(Serialize, Deserialize)]
struct JInfo
{
    name : String,
    date : String
}
#[derive(Debug, Deserialize, Serialize)]
struct JBody
{
    name: String,
    radius: f64,
    mass: f64,
    location: [f64 ; 3],
    velocity: [f64 ; 3]
}

#[repr(C)]
pub struct body
{
    name : [u8; 32],
    bid : libc::c_uint,
    mass : libc::c_double,
    radius : libc::c_double,
    position : [libc::c_double; 3],
    velocity : [libc::c_double; 3]
}

#[repr(C)]
pub struct blist
{
    name : [u8; 32],
    size : libc::size_t,
    list : *const body
}

#[no_mangle]
pub extern "C" fn get_body_from_json(json_path : *const libc::c_char) -> blist
{
    let blistout : blist;
    let f_path : String;
    unsafe // oh god oh fuck
    {
        f_path = ffi::CStr::from_ptr(json_path).to_string_lossy().into_owned();

    }
    let file = fs::File::open(f_path).expect("File open failed yo");
    let mut parse_res : Value = serde_json::from_reader(file).expect("JSON failed yo"); 
    let p_info : JInfo = serde_json::from_value(parse_res["Info"].take()).expect("Info fetch failed");
 
    let mut blist_name_str : [u8; 32] = str_to_u8_arr(p_info.name);
    blist_name_str[31] = '\0' as u8;



    let jbody_list : Vec<JBody> = serde_json::from_value(parse_res["Bodies"].take()).expect("Body fetching failed!");

    let bsize = jbody_list.len();
    let mut body_list : Vec<body> = Vec::new();
    let mut curr_id = 0;
    for bodies in jbody_list
    {
        let mut name_u8 : [u8 ; 32] = str_to_u8_arr(bodies.name);
        name_u8[31] = '\0' as u8;
        body_list.push(
            body
            {
                bid : curr_id,
                name : name_u8,
                mass : bodies.mass,
                radius : bodies.radius,
                position : bodies.location,
                velocity : bodies.velocity
                 

            }
        );
        curr_id += 1;

    }
    body_list.shrink_to_fit();
    blistout = blist
    {
        name : blist_name_str,
        size : bsize,
        list : body_list.as_ptr()

    };
    std::mem::forget(body_list);
    blistout


}
fn str_to_u8_arr(str : String) -> [u8 ; 32]
{
    let mut final_arr : [u8 ; 32] = [0x30 ; 32];
    let u8b = str.as_bytes();
    let u8size = u8b.len();
    let u8ptr = u8b.as_ptr();
    unsafe
    {

    
        if u8size >= 32
        {
            for i in 0..30 
            {
                final_arr[i] = *u8ptr.offset(i as isize);
            
            }
        }
        else
        {
            for i in 0..u8size - 1
            {
                final_arr[i] = *u8ptr.offset(i as isize);
            
            }
        }
    }
    final_arr
}
/*
fn str_to_u8_slice<'a>(str : &'a String, size : usize) -> &'a [u8]
{
    let slice : &'a [u8] = str.as_bytes();
    if slice.len() > size - 1 
    {
        &slice[0..size - 1]        
    }
    else
    {
        &slice
    }

}
*/
/*
fn str_to_u8_slice<'a>(str : &'a String, size : usize) -> [u8; 32]
{
    let mut final_arr : [u8 ; 32] = [0x30 ; 32];
    let slice : &'a [u8] = str.as_bytes();
    if slice.len() > size - 1 
    {
        final_arr[0..size - 2] = slice[0..30].try_into().unwrap();
    }
    else
    {

    }

}
*/