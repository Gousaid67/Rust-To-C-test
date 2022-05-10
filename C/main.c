#include "lib/parse_json.h"

const char* getargvinput(int argc, char *argv[])
{
        if(argc > 0) // assume first arg is a path
    {
        return argv[1];

    }
}

int main(int argc, char *argv[]) {
    
    const char *path = "C:\\Users\\19erlind\\Desktop\\Rust Code\\physicssim_rust\\Sol.json\0";
    printf("%s", path);
    blist res = get_body_from_json(path);
    //printf("%d", res.list[0].mass);
    


}

