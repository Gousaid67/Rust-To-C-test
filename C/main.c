#include "lib/parse_json.h"

int main(int argc, char *argv[]) {
    const *path; 
    if(argc > 0) // assume first arg is a path
    {
        path = argv[0];

    }
    blist res = get_body_from_json(path);


}