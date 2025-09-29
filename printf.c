#include "types.h"
#include "stat.h"
#include "user.h"
static void
putc(int fd, char c)
{
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    putc(fd, buf[i]);
}

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1); 
        ap++;

      } else if(c == 'f'){
        double *fp = (double*) ap; //ap is actually 4 bytes and floats are 8 bytes so we need to cast it.
        double value = *fp;
        int integer_part = (int) value;
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
        if (fraction_part < 0) //if number is negative (without this output will make no
          fraction_part = -fraction_part;
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
        putc(fd, '.'); //adds the decimal point
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
          fraction_part *= 10;
          int digit = (int) fraction_part;
          if (digit > 9) digit = 9;   // prevent ':' bug
          putc(fd, '0' + digit);
          fraction_part -= digit;
        }
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
      }
        else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    }
  }
}
