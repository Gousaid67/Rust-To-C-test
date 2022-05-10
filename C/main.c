#include "lib/parse_json.h"
#include <stdio.h>

int main(int argc, char *argv[]) {
    
    const char *path = "C:\\Users\\Erik\\Desktop\\Physicssim_rust\\physics_sim\\Sol.Json\0";
    blist res = get_body_from_json(path);
    //free((void*)res.list);
    


}

