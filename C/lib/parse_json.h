#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>


typedef struct body {
  uint8_t name[32];
  unsigned int bid;
  double mass;
  double radius;
  double position[3];
  double velocity[3];
} body;

typedef struct blist {
  uint8_t name[32];
  size_t size;
  const struct body *list;
} blist;

struct blist get_body_from_json(const char *json_path);
