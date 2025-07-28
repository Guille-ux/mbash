#ifndef COMMON_H
#define COMMON_H

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdarg.h>

/* 
 * Definitions for kprintf, kmalloc and kfree
 */

#define kmalloc(size) (malloc((size)))
#define kfree(ptr) (free((ptr)))

static int kprintf(const char *format, ...) {
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
  return 0;
}

#endif
