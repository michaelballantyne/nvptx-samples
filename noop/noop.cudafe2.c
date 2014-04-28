# 1 "noop.cudafe1.gpu"
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h" 3
typedef unsigned long size_t;
#include "crt/host_runtime.h"
void *memcpy(void*, const void*, size_t); void *memset(void*, int, size_t);

#include "noop.cudafe2.stub.c"
