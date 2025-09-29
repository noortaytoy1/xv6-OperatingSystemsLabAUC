#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    ;
  return os;
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    p++, q++;
  return (uchar)*p - (uchar)*q;
}

uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    ;
  return n;
}

void*
memset(void *dst, int c, uint n)
{
  stosb(dst, c, n);
  return dst;
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    if(*s == c)
      return (char*)s;
  return 0;
}

char*
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
  return buf;
}

int
stat(const char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
  close(fd);
  return r;
}

int
atoi(const char *s)
{
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
    n = n*10 + *startPointer++ - '0';
  return sign*n; //this will support negative numbers.
}

double atof(const char *s){
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
    sign = -1;
    integerPart++;
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
    integer = integer*10 + (*integerPart++ - '0');
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
    fraction += (*fractionPart++ - '0') / divisor;
    divisor *= 10.0;
  }

  answer = (double)integer + fraction;
  return sign*answer;
}


void*
memmove(void *vdst, const void *vsrc, int n)
{
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    *dst++ = *src++;
  return vdst;
}

double fsqrt(double n) {
    double x = n;
    double newtonianGuess = n / 2.0;
    for (int i = 0; i < 20; i++) {
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
    }
    return newtonianGuess;
}

void insertionSort(double arr[], int n)
{
    for (int i = 1; i < n; ++i) {
        double key = arr[i];
        int j = i - 1;

        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
    
}