
_zombie:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  if(fork() > 0)
  11:	e8 ba 04 00 00       	call   4d0 <fork>
  16:	85 c0                	test   %eax,%eax
  18:	7e 0d                	jle    27 <main+0x27>
    sleep(5);  // Let child exit before parent.
  1a:	83 ec 0c             	sub    $0xc,%esp
  1d:	6a 05                	push   $0x5
  1f:	e8 44 05 00 00       	call   568 <sleep>
  24:	83 c4 10             	add    $0x10,%esp
  exit();
  27:	e8 ac 04 00 00       	call   4d8 <exit>
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax
  30:	66 90                	xchg   %ax,%ax
  32:	66 90                	xchg   %ax,%ax
  34:	66 90                	xchg   %ax,%ax
  36:	66 90                	xchg   %ax,%ax
  38:	66 90                	xchg   %ax,%ax
  3a:	66 90                	xchg   %ax,%ax
  3c:	66 90                	xchg   %ax,%ax
  3e:	66 90                	xchg   %ax,%ax

00000040 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  40:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  41:	31 c0                	xor    %eax,%eax
{
  43:	89 e5                	mov    %esp,%ebp
  45:	53                   	push   %ebx
  46:	8b 4d 08             	mov    0x8(%ebp),%ecx
  49:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  50:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  54:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  57:	83 c0 01             	add    $0x1,%eax
  5a:	84 d2                	test   %dl,%dl
  5c:	75 f2                	jne    50 <strcpy+0x10>
    ;
  return os;
}
  5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  61:	89 c8                	mov    %ecx,%eax
  63:	c9                   	leave
  64:	c3                   	ret
  65:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  6c:	00 
  6d:	8d 76 00             	lea    0x0(%esi),%esi

00000070 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	53                   	push   %ebx
  74:	8b 55 08             	mov    0x8(%ebp),%edx
  77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  7a:	0f b6 02             	movzbl (%edx),%eax
  7d:	84 c0                	test   %al,%al
  7f:	75 2f                	jne    b0 <strcmp+0x40>
  81:	eb 4a                	jmp    cd <strcmp+0x5d>
  83:	eb 1b                	jmp    a0 <strcmp+0x30>
  85:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  8c:	00 
  8d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  94:	00 
  95:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  9c:	00 
  9d:	8d 76 00             	lea    0x0(%esi),%esi
  a0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  a4:	83 c2 01             	add    $0x1,%edx
  a7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  aa:	84 c0                	test   %al,%al
  ac:	74 12                	je     c0 <strcmp+0x50>
  ae:	89 d9                	mov    %ebx,%ecx
  b0:	0f b6 19             	movzbl (%ecx),%ebx
  b3:	38 c3                	cmp    %al,%bl
  b5:	74 e9                	je     a0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
  b7:	29 d8                	sub    %ebx,%eax
}
  b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  bc:	c9                   	leave
  bd:	c3                   	ret
  be:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
  c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  c4:	31 c0                	xor    %eax,%eax
  c6:	29 d8                	sub    %ebx,%eax
}
  c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  cb:	c9                   	leave
  cc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
  cd:	0f b6 19             	movzbl (%ecx),%ebx
  d0:	31 c0                	xor    %eax,%eax
  d2:	eb e3                	jmp    b7 <strcmp+0x47>
  d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  db:	00 
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000e0 <strlen>:

uint
strlen(const char *s)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  e6:	80 3a 00             	cmpb   $0x0,(%edx)
  e9:	74 15                	je     100 <strlen+0x20>
  eb:	31 c0                	xor    %eax,%eax
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c0 01             	add    $0x1,%eax
  f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
  f7:	89 c1                	mov    %eax,%ecx
  f9:	75 f5                	jne    f0 <strlen+0x10>
    ;
  return n;
}
  fb:	89 c8                	mov    %ecx,%eax
  fd:	5d                   	pop    %ebp
  fe:	c3                   	ret
  ff:	90                   	nop
  for(n = 0; s[n]; n++)
 100:	31 c9                	xor    %ecx,%ecx
}
 102:	5d                   	pop    %ebp
 103:	89 c8                	mov    %ecx,%eax
 105:	c3                   	ret
 106:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 10d:	00 
 10e:	66 90                	xchg   %ax,%ax

00000110 <memset>:

void*
memset(void *dst, int c, uint n)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	57                   	push   %edi
 114:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 117:	8b 4d 10             	mov    0x10(%ebp),%ecx
 11a:	8b 45 0c             	mov    0xc(%ebp),%eax
 11d:	89 d7                	mov    %edx,%edi
 11f:	fc                   	cld
 120:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 122:	8b 7d fc             	mov    -0x4(%ebp),%edi
 125:	89 d0                	mov    %edx,%eax
 127:	c9                   	leave
 128:	c3                   	ret
 129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000130 <strchr>:

char*
strchr(const char *s, char c)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	8b 45 08             	mov    0x8(%ebp),%eax
 136:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 13a:	0f b6 10             	movzbl (%eax),%edx
 13d:	84 d2                	test   %dl,%dl
 13f:	75 1a                	jne    15b <strchr+0x2b>
 141:	eb 25                	jmp    168 <strchr+0x38>
 143:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14a:	00 
 14b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 150:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 154:	83 c0 01             	add    $0x1,%eax
 157:	84 d2                	test   %dl,%dl
 159:	74 0d                	je     168 <strchr+0x38>
    if(*s == c)
 15b:	38 d1                	cmp    %dl,%cl
 15d:	75 f1                	jne    150 <strchr+0x20>
      return (char*)s;
  return 0;
}
 15f:	5d                   	pop    %ebp
 160:	c3                   	ret
 161:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 168:	31 c0                	xor    %eax,%eax
}
 16a:	5d                   	pop    %ebp
 16b:	c3                   	ret
 16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000170 <gets>:

char*
gets(char *buf, int max)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 175:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 178:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 179:	31 db                	xor    %ebx,%ebx
{
 17b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 17e:	eb 27                	jmp    1a7 <gets+0x37>
    cc = read(0, &c, 1);
 180:	83 ec 04             	sub    $0x4,%esp
 183:	6a 01                	push   $0x1
 185:	56                   	push   %esi
 186:	6a 00                	push   $0x0
 188:	e8 63 03 00 00       	call   4f0 <read>
    if(cc < 1)
 18d:	83 c4 10             	add    $0x10,%esp
 190:	85 c0                	test   %eax,%eax
 192:	7e 1d                	jle    1b1 <gets+0x41>
      break;
    buf[i++] = c;
 194:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 198:	8b 55 08             	mov    0x8(%ebp),%edx
 19b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 19f:	3c 0a                	cmp    $0xa,%al
 1a1:	74 10                	je     1b3 <gets+0x43>
 1a3:	3c 0d                	cmp    $0xd,%al
 1a5:	74 0c                	je     1b3 <gets+0x43>
  for(i=0; i+1 < max; ){
 1a7:	89 df                	mov    %ebx,%edi
 1a9:	83 c3 01             	add    $0x1,%ebx
 1ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1af:	7c cf                	jl     180 <gets+0x10>
 1b1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 1b3:	8b 45 08             	mov    0x8(%ebp),%eax
 1b6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 1ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1bd:	5b                   	pop    %ebx
 1be:	5e                   	pop    %esi
 1bf:	5f                   	pop    %edi
 1c0:	5d                   	pop    %ebp
 1c1:	c3                   	ret
 1c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1c9:	00 
 1ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	56                   	push   %esi
 1d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1d5:	83 ec 08             	sub    $0x8,%esp
 1d8:	6a 00                	push   $0x0
 1da:	ff 75 08             	push   0x8(%ebp)
 1dd:	e8 36 03 00 00       	call   518 <open>
  if(fd < 0)
 1e2:	83 c4 10             	add    $0x10,%esp
 1e5:	85 c0                	test   %eax,%eax
 1e7:	78 27                	js     210 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 1e9:	83 ec 08             	sub    $0x8,%esp
 1ec:	ff 75 0c             	push   0xc(%ebp)
 1ef:	89 c3                	mov    %eax,%ebx
 1f1:	50                   	push   %eax
 1f2:	e8 39 03 00 00       	call   530 <fstat>
  close(fd);
 1f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 1fa:	89 c6                	mov    %eax,%esi
  close(fd);
 1fc:	e8 ff 02 00 00       	call   500 <close>
  return r;
 201:	83 c4 10             	add    $0x10,%esp
}
 204:	8d 65 f8             	lea    -0x8(%ebp),%esp
 207:	89 f0                	mov    %esi,%eax
 209:	5b                   	pop    %ebx
 20a:	5e                   	pop    %esi
 20b:	5d                   	pop    %ebp
 20c:	c3                   	ret
 20d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 210:	be ff ff ff ff       	mov    $0xffffffff,%esi
 215:	eb ed                	jmp    204 <stat+0x34>
 217:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 21e:	00 
 21f:	90                   	nop

00000220 <atoi>:

int
atoi(const char *s)
{
 220:	55                   	push   %ebp
 221:	b8 01 00 00 00       	mov    $0x1,%eax
 226:	89 e5                	mov    %esp,%ebp
 228:	56                   	push   %esi
 229:	8b 75 08             	mov    0x8(%ebp),%esi
 22c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 22d:	0f be 16             	movsbl (%esi),%edx
 230:	80 fa 2d             	cmp    $0x2d,%dl
 233:	75 0c                	jne    241 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 235:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 239:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 23e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 241:	8d 4a d0             	lea    -0x30(%edx),%ecx
 244:	80 f9 09             	cmp    $0x9,%cl
 247:	77 37                	ja     280 <atoi+0x60>
  n = 0;
 249:	31 c9                	xor    %ecx,%ecx
 24b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 252:	00 
 253:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 25a:	00 
 25b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 260:	83 c6 01             	add    $0x1,%esi
 263:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 266:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 26a:	0f be 16             	movsbl (%esi),%edx
 26d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 270:	80 fb 09             	cmp    $0x9,%bl
 273:	76 eb                	jbe    260 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 275:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 276:	0f af c1             	imul   %ecx,%eax
}
 279:	5e                   	pop    %esi
 27a:	5d                   	pop    %ebp
 27b:	c3                   	ret
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 280:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 281:	31 c0                	xor    %eax,%eax
}
 283:	5e                   	pop    %esi
 284:	5d                   	pop    %ebp
 285:	c3                   	ret
 286:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28d:	00 
 28e:	66 90                	xchg   %ax,%ax

00000290 <atof>:

double atof(const char *s){
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	56                   	push   %esi
 295:	53                   	push   %ebx
 296:	83 ec 0c             	sub    $0xc,%esp
 299:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 29c:	0f b6 0a             	movzbl (%edx),%ecx
 29f:	80 f9 2d             	cmp    $0x2d,%cl
 2a2:	0f 84 28 01 00 00    	je     3d0 <atof+0x140>
  const char *integerPart = s;
 2a8:	89 d3                	mov    %edx,%ebx
 2aa:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 2ad:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 2b4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 2b6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 2bb:	84 c9                	test   %cl,%cl
 2bd:	75 2f                	jne    2ee <atof+0x5e>
 2bf:	eb 7b                	jmp    33c <atof+0xac>
 2c1:	eb 1d                	jmp    2e0 <atof+0x50>
 2c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ca:	00 
 2cb:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2d2:	00 
 2d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2da:	00 
 2db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 2e0:	0f b6 08             	movzbl (%eax),%ecx
 2e3:	84 c9                	test   %cl,%cl
 2e5:	0f 84 d5 00 00 00    	je     3c0 <atof+0x130>
 2eb:	83 c0 01             	add    $0x1,%eax
 2ee:	89 c2                	mov    %eax,%edx
    if(*s == c)
 2f0:	80 f9 2e             	cmp    $0x2e,%cl
 2f3:	75 eb                	jne    2e0 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 2f5:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 2f8:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 2fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2fd:	80 f9 09             	cmp    $0x9,%cl
 300:	77 3a                	ja     33c <atof+0xac>
 302:	eb 1c                	jmp    320 <atof+0x90>
 304:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 30b:	00 
 30c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 313:	00 
 314:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 31b:	00 
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 320:	83 e8 30             	sub    $0x30,%eax
 323:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 326:	83 c3 01             	add    $0x1,%ebx
 329:	0f be c0             	movsbl %al,%eax
 32c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 32f:	0f b6 03             	movzbl (%ebx),%eax
 332:	8d 70 d0             	lea    -0x30(%eax),%esi
 335:	89 f1                	mov    %esi,%ecx
 337:	80 f9 09             	cmp    $0x9,%cl
 33a:	76 e4                	jbe    320 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 33c:	0f b6 02             	movzbl (%edx),%eax
 33f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 342:	80 fb 09             	cmp    $0x9,%bl
 345:	0f 87 9d 00 00 00    	ja     3e8 <atof+0x158>
  double divisor = 10.0;   
 34b:	d9 05 a8 0a 00 00    	flds   0xaa8
  double fraction = 0.0;  
 351:	d9 ee                	fldz
 353:	eb 2d                	jmp    382 <atof+0xf2>
 355:	eb 29                	jmp    380 <atof+0xf0>
 357:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35e:	00 
 35f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 366:	00 
 367:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 36e:	00 
 36f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 376:	00 
 377:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 37e:	00 
 37f:	90                   	nop
 380:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 382:	83 e8 30             	sub    $0x30,%eax
 385:	83 c2 01             	add    $0x1,%edx
 388:	66 98                	cbtw
 38a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 38e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 391:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 394:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 396:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 399:	de c1                	faddp  %st,%st(1)
 39b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 39d:	d8 0d a8 0a 00 00    	fmuls  0xaa8
  while('0' <= *fractionPart && *fractionPart <= '9'){
 3a3:	80 fb 09             	cmp    $0x9,%bl
 3a6:	76 d8                	jbe    380 <atof+0xf0>
 3a8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 3aa:	89 7d ec             	mov    %edi,-0x14(%ebp)
 3ad:	db 45 ec             	fildl  -0x14(%ebp)
 3b0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 3b2:	db 45 e8             	fildl  -0x18(%ebp)
}
 3b5:	83 c4 0c             	add    $0xc,%esp
 3b8:	5b                   	pop    %ebx
 3b9:	5e                   	pop    %esi
 3ba:	5f                   	pop    %edi
 3bb:	5d                   	pop    %ebp
  return sign*answer;
 3bc:	de c9                	fmulp  %st,%st(1)
}
 3be:	c3                   	ret
 3bf:	90                   	nop
 3c0:	ba 01 00 00 00       	mov    $0x1,%edx
 3c5:	e9 2b ff ff ff       	jmp    2f5 <atof+0x65>
 3ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 3d0:	8d 42 01             	lea    0x1(%edx),%eax
 3d3:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 3da:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 3dc:	e9 0d ff ff ff       	jmp    2ee <atof+0x5e>
 3e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 3e8:	d9 ee                	fldz
 3ea:	eb be                	jmp    3aa <atof+0x11a>
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	8b 45 10             	mov    0x10(%ebp),%eax
 3f7:	8b 55 08             	mov    0x8(%ebp),%edx
 3fa:	56                   	push   %esi
 3fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3fe:	85 c0                	test   %eax,%eax
 400:	7e 13                	jle    415 <memmove+0x25>
 402:	01 d0                	add    %edx,%eax
  dst = vdst;
 404:	89 d7                	mov    %edx,%edi
 406:	66 90                	xchg   %ax,%ax
 408:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40f:	00 
    *dst++ = *src++;
 410:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 411:	39 f8                	cmp    %edi,%eax
 413:	75 fb                	jne    410 <memmove+0x20>
  return vdst;
}
 415:	5e                   	pop    %esi
 416:	89 d0                	mov    %edx,%eax
 418:	5f                   	pop    %edi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret
 41b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000420 <fsqrt>:

double fsqrt(double n) {
 420:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 421:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 426:	89 e5                	mov    %esp,%ebp
 428:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 42b:	d9 c0                	fld    %st(0)
 42d:	d8 0d ac 0a 00 00    	fmuls  0xaac
    for (int i = 0; i < 20; i++) {
 433:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43a:	00 
 43b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 440:	d9 c1                	fld    %st(1)
 442:	d8 f1                	fdiv   %st(1),%st
 444:	de c1                	faddp  %st,%st(1)
 446:	d8 0d ac 0a 00 00    	fmuls  0xaac
    for (int i = 0; i < 20; i++) {
 44c:	83 e8 01             	sub    $0x1,%eax
 44f:	75 ef                	jne    440 <fsqrt+0x20>
 451:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 453:	5d                   	pop    %ebp
 454:	c3                   	ret
 455:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45c:	00 
 45d:	8d 76 00             	lea    0x0(%esi),%esi

00000460 <insertionSort>:

void insertionSort(double arr[], int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 7d 0c             	mov    0xc(%ebp),%edi
 467:	56                   	push   %esi
 468:	8b 75 08             	mov    0x8(%ebp),%esi
 46b:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 46c:	83 ff 01             	cmp    $0x1,%edi
 46f:	7e 5a                	jle    4cb <insertionSort+0x6b>
 471:	bb 01 00 00 00       	mov    $0x1,%ebx
 476:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47d:	00 
 47e:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 480:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 483:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 486:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 489:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 490:	00 
 491:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 498:	00 
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4a0:	dd 40 f8             	fldl   -0x8(%eax)
 4a3:	89 c1                	mov    %eax,%ecx
 4a5:	db f1                	fcomi  %st(1),%st
 4a7:	76 17                	jbe    4c0 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 4a9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 4ac:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 4ae:	8d 41 f8             	lea    -0x8(%ecx),%eax
 4b1:	83 fa ff             	cmp    $0xffffffff,%edx
 4b4:	75 ea                	jne    4a0 <insertionSort+0x40>
 4b6:	89 f1                	mov    %esi,%ecx
 4b8:	eb 08                	jmp    4c2 <insertionSort+0x62>
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4c0:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 4c2:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 4c5:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 4c7:	39 df                	cmp    %ebx,%edi
 4c9:	75 b5                	jne    480 <insertionSort+0x20>
    }
    
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret

000004d0 <fork>:
 4d0:	b8 01 00 00 00       	mov    $0x1,%eax
 4d5:	cd 40                	int    $0x40
 4d7:	c3                   	ret

000004d8 <exit>:
 4d8:	b8 02 00 00 00       	mov    $0x2,%eax
 4dd:	cd 40                	int    $0x40
 4df:	c3                   	ret

000004e0 <wait>:
 4e0:	b8 03 00 00 00       	mov    $0x3,%eax
 4e5:	cd 40                	int    $0x40
 4e7:	c3                   	ret

000004e8 <pipe>:
 4e8:	b8 04 00 00 00       	mov    $0x4,%eax
 4ed:	cd 40                	int    $0x40
 4ef:	c3                   	ret

000004f0 <read>:
 4f0:	b8 05 00 00 00       	mov    $0x5,%eax
 4f5:	cd 40                	int    $0x40
 4f7:	c3                   	ret

000004f8 <write>:
 4f8:	b8 10 00 00 00       	mov    $0x10,%eax
 4fd:	cd 40                	int    $0x40
 4ff:	c3                   	ret

00000500 <close>:
 500:	b8 15 00 00 00       	mov    $0x15,%eax
 505:	cd 40                	int    $0x40
 507:	c3                   	ret

00000508 <kill>:
 508:	b8 06 00 00 00       	mov    $0x6,%eax
 50d:	cd 40                	int    $0x40
 50f:	c3                   	ret

00000510 <exec>:
 510:	b8 07 00 00 00       	mov    $0x7,%eax
 515:	cd 40                	int    $0x40
 517:	c3                   	ret

00000518 <open>:
 518:	b8 0f 00 00 00       	mov    $0xf,%eax
 51d:	cd 40                	int    $0x40
 51f:	c3                   	ret

00000520 <mknod>:
 520:	b8 11 00 00 00       	mov    $0x11,%eax
 525:	cd 40                	int    $0x40
 527:	c3                   	ret

00000528 <unlink>:
 528:	b8 12 00 00 00       	mov    $0x12,%eax
 52d:	cd 40                	int    $0x40
 52f:	c3                   	ret

00000530 <fstat>:
 530:	b8 08 00 00 00       	mov    $0x8,%eax
 535:	cd 40                	int    $0x40
 537:	c3                   	ret

00000538 <link>:
 538:	b8 13 00 00 00       	mov    $0x13,%eax
 53d:	cd 40                	int    $0x40
 53f:	c3                   	ret

00000540 <mkdir>:
 540:	b8 14 00 00 00       	mov    $0x14,%eax
 545:	cd 40                	int    $0x40
 547:	c3                   	ret

00000548 <chdir>:
 548:	b8 09 00 00 00       	mov    $0x9,%eax
 54d:	cd 40                	int    $0x40
 54f:	c3                   	ret

00000550 <dup>:
 550:	b8 0a 00 00 00       	mov    $0xa,%eax
 555:	cd 40                	int    $0x40
 557:	c3                   	ret

00000558 <getpid>:
 558:	b8 0b 00 00 00       	mov    $0xb,%eax
 55d:	cd 40                	int    $0x40
 55f:	c3                   	ret

00000560 <sbrk>:
 560:	b8 0c 00 00 00       	mov    $0xc,%eax
 565:	cd 40                	int    $0x40
 567:	c3                   	ret

00000568 <sleep>:
 568:	b8 0d 00 00 00       	mov    $0xd,%eax
 56d:	cd 40                	int    $0x40
 56f:	c3                   	ret

00000570 <uptime>:
 570:	b8 0e 00 00 00       	mov    $0xe,%eax
 575:	cd 40                	int    $0x40
 577:	c3                   	ret
 578:	66 90                	xchg   %ax,%ax
 57a:	66 90                	xchg   %ax,%ax
 57c:	66 90                	xchg   %ax,%ax
 57e:	66 90                	xchg   %ax,%ax

00000580 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
 586:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 588:	89 d1                	mov    %edx,%ecx
{
 58a:	83 ec 3c             	sub    $0x3c,%esp
 58d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 590:	85 d2                	test   %edx,%edx
 592:	0f 89 98 00 00 00    	jns    630 <printint+0xb0>
 598:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 59c:	0f 84 8e 00 00 00    	je     630 <printint+0xb0>
    x = -xx;
 5a2:	f7 d9                	neg    %ecx
    neg = 1;
 5a4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 5a9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5ac:	31 f6                	xor    %esi,%esi
 5ae:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5b5:	00 
 5b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5bd:	00 
 5be:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 5c0:	89 c8                	mov    %ecx,%eax
 5c2:	31 d2                	xor    %edx,%edx
 5c4:	89 f7                	mov    %esi,%edi
 5c6:	f7 f3                	div    %ebx
 5c8:	8d 76 01             	lea    0x1(%esi),%esi
 5cb:	0f b6 92 10 0b 00 00 	movzbl 0xb10(%edx),%edx
 5d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 5d6:	89 ca                	mov    %ecx,%edx
 5d8:	89 c1                	mov    %eax,%ecx
 5da:	39 da                	cmp    %ebx,%edx
 5dc:	73 e2                	jae    5c0 <printint+0x40>
  if(neg)
 5de:	8b 45 c0             	mov    -0x40(%ebp),%eax
 5e1:	85 c0                	test   %eax,%eax
 5e3:	74 07                	je     5ec <printint+0x6c>
    buf[i++] = '-';
 5e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 5ea:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 5ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 5ef:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 5f2:	01 df                	add    %ebx,%edi
 5f4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5fb:	00 
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 600:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 603:	83 ec 04             	sub    $0x4,%esp
 606:	88 45 d7             	mov    %al,-0x29(%ebp)
 609:	8d 45 d7             	lea    -0x29(%ebp),%eax
 60c:	6a 01                	push   $0x1
 60e:	50                   	push   %eax
 60f:	56                   	push   %esi
 610:	e8 e3 fe ff ff       	call   4f8 <write>
  while(--i >= 0)
 615:	89 f8                	mov    %edi,%eax
 617:	83 c4 10             	add    $0x10,%esp
 61a:	83 ef 01             	sub    $0x1,%edi
 61d:	39 d8                	cmp    %ebx,%eax
 61f:	75 df                	jne    600 <printint+0x80>
}
 621:	8d 65 f4             	lea    -0xc(%ebp),%esp
 624:	5b                   	pop    %ebx
 625:	5e                   	pop    %esi
 626:	5f                   	pop    %edi
 627:	5d                   	pop    %ebp
 628:	c3                   	ret
 629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 630:	31 c0                	xor    %eax,%eax
 632:	e9 72 ff ff ff       	jmp    5a9 <printint+0x29>
 637:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 63e:	00 
 63f:	90                   	nop

00000640 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 645:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 648:	53                   	push   %ebx
 649:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 64c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 64f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 652:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 655:	0f b6 01             	movzbl (%ecx),%eax
 658:	84 c0                	test   %al,%al
 65a:	74 2f                	je     68b <printf+0x4b>
 65c:	31 db                	xor    %ebx,%ebx
 65e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 660:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 663:	83 fa 25             	cmp    $0x25,%edx
 666:	74 30                	je     698 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 668:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 66b:	83 ec 04             	sub    $0x4,%esp
 66e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 671:	6a 01                	push   $0x1
 673:	50                   	push   %eax
 674:	56                   	push   %esi
 675:	e8 7e fe ff ff       	call   4f8 <write>
        putc(fd, c);
 67a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 67d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 680:	83 c3 01             	add    $0x1,%ebx
 683:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 687:	84 c0                	test   %al,%al
 689:	75 d5                	jne    660 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 68b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68e:	5b                   	pop    %ebx
 68f:	5e                   	pop    %esi
 690:	5f                   	pop    %edi
 691:	5d                   	pop    %ebp
 692:	c3                   	ret
 693:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 698:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 69d:	8d 7b 01             	lea    0x1(%ebx),%edi
 6a0:	84 d2                	test   %dl,%dl
 6a2:	74 e7                	je     68b <printf+0x4b>
    c = fmt[i] & 0xff;
 6a4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 6a7:	80 fa 25             	cmp    $0x25,%dl
 6aa:	0f 84 10 02 00 00    	je     8c0 <printf+0x280>
 6b0:	83 e8 63             	sub    $0x63,%eax
 6b3:	83 f8 15             	cmp    $0x15,%eax
 6b6:	77 08                	ja     6c0 <printf+0x80>
 6b8:	ff 24 85 b8 0a 00 00 	jmp    *0xab8(,%eax,4)
 6bf:	90                   	nop
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
 6c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 6c6:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 6c9:	89 fb                	mov    %edi,%ebx
 6cb:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 6cf:	6a 01                	push   $0x1
 6d1:	51                   	push   %ecx
 6d2:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 6d5:	56                   	push   %esi
 6d6:	e8 1d fe ff ff       	call   4f8 <write>
        putc(fd, c);
 6db:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 6df:	83 c4 0c             	add    $0xc,%esp
 6e2:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6e5:	6a 01                	push   $0x1
 6e7:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 6ea:	51                   	push   %ecx
 6eb:	56                   	push   %esi
 6ec:	e8 07 fe ff ff       	call   4f8 <write>
        putc(fd, c);
 6f1:	83 c4 10             	add    $0x10,%esp
 6f4:	eb 87                	jmp    67d <printf+0x3d>
 6f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fd:	00 
 6fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 700:	8b 7d d0             	mov    -0x30(%ebp),%edi
 703:	83 ec 0c             	sub    $0xc,%esp
 706:	b9 10 00 00 00       	mov    $0x10,%ecx
 70b:	8b 17                	mov    (%edi),%edx
 70d:	6a 00                	push   $0x0
 70f:	89 f0                	mov    %esi,%eax
 711:	e8 6a fe ff ff       	call   580 <printint>
        ap++;
 716:	83 c7 04             	add    $0x4,%edi
 719:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 71c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 71f:	83 c3 02             	add    $0x2,%ebx
 722:	83 c4 10             	add    $0x10,%esp
 725:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 729:	84 c0                	test   %al,%al
 72b:	0f 85 2f ff ff ff    	jne    660 <printf+0x20>
}
 731:	8d 65 f4             	lea    -0xc(%ebp),%esp
 734:	5b                   	pop    %ebx
 735:	5e                   	pop    %esi
 736:	5f                   	pop    %edi
 737:	5d                   	pop    %ebp
 738:	c3                   	ret
 739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 740:	8b 45 d0             	mov    -0x30(%ebp),%eax
 743:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 745:	d9 7d d6             	fnstcw -0x2a(%ebp)
 748:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 74c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 74f:	80 cc 0c             	or     $0xc,%ah
 752:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 756:	d9 6d d4             	fldcw  -0x2c(%ebp)
 759:	db 55 c0             	fistl  -0x40(%ebp)
 75c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 75f:	db 45 c0             	fildl  -0x40(%ebp)
 762:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 764:	d9 ee                	fldz
 766:	df f1                	fcomip %st(1),%st
 768:	0f 87 82 01 00 00    	ja     8f0 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 76e:	83 ec 0c             	sub    $0xc,%esp
 771:	dd 5d b0             	fstpl  -0x50(%ebp)
 774:	b9 0a 00 00 00       	mov    $0xa,%ecx
 779:	89 f0                	mov    %esi,%eax
 77b:	6a 01                	push   $0x1
 77d:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 780:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 785:	e8 f6 fd ff ff       	call   580 <printint>
  write(fd, &c, 1);
 78a:	83 c4 0c             	add    $0xc,%esp
 78d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 790:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 794:	6a 01                	push   $0x1
 796:	51                   	push   %ecx
 797:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 79a:	56                   	push   %esi
 79b:	e8 58 fd ff ff       	call   4f8 <write>
        putc(fd, '.'); //adds the decimal point
 7a0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 7a3:	83 c4 10             	add    $0x10,%esp
 7a6:	dd 45 b0             	fldl   -0x50(%ebp)
 7a9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 7ac:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 7af:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 7b2:	d8 0d a8 0a 00 00    	fmuls  0xaa8
          int digit = (int) fraction_part;
 7b8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 7bc:	80 cc 0c             	or     $0xc,%ah
 7bf:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 7c3:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 7c8:	d9 6d d4             	fldcw  -0x2c(%ebp)
 7cb:	db 55 c8             	fistl  -0x38(%ebp)
 7ce:	d9 6d d6             	fldcw  -0x2a(%ebp)
 7d1:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 7d4:	39 c3                	cmp    %eax,%ebx
 7d6:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 7d9:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 7dc:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 7df:	8d 43 30             	lea    0x30(%ebx),%eax
 7e2:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7e5:	6a 01                	push   $0x1
 7e7:	ff 75 bc             	push   -0x44(%ebp)
 7ea:	56                   	push   %esi
 7eb:	e8 08 fd ff ff       	call   4f8 <write>
          fraction_part -= digit;
 7f0:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 7f3:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 7f6:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 7f9:	dd 45 c0             	fldl   -0x40(%ebp)
 7fc:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 7fe:	83 ef 01             	sub    $0x1,%edi
 801:	75 ac                	jne    7af <printf+0x16f>
 803:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 805:	8b 45 d0             	mov    -0x30(%ebp),%eax
 808:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 80b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 80e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 811:	83 c3 02             	add    $0x2,%ebx
 814:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 818:	84 c0                	test   %al,%al
 81a:	0f 85 40 fe ff ff    	jne    660 <printf+0x20>
}
 820:	8d 65 f4             	lea    -0xc(%ebp),%esp
 823:	5b                   	pop    %ebx
 824:	5e                   	pop    %esi
 825:	5f                   	pop    %edi
 826:	5d                   	pop    %ebp
 827:	c3                   	ret
 828:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 82f:	00 
        s = (char*)*ap;
 830:	8b 45 d0             	mov    -0x30(%ebp),%eax
 833:	8b 38                	mov    (%eax),%edi
        ap++;
 835:	83 c0 04             	add    $0x4,%eax
 838:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 83b:	85 ff                	test   %edi,%edi
 83d:	0f 84 9d 00 00 00    	je     8e0 <printf+0x2a0>
        while(*s != 0){
 843:	0f b6 07             	movzbl (%edi),%eax
 846:	84 c0                	test   %al,%al
 848:	0f 84 a9 00 00 00    	je     8f7 <printf+0x2b7>
 84e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 851:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 854:	89 fb                	mov    %edi,%ebx
 856:	89 cf                	mov    %ecx,%edi
 858:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 85f:	00 
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 866:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 869:	6a 01                	push   $0x1
 86b:	57                   	push   %edi
 86c:	56                   	push   %esi
 86d:	e8 86 fc ff ff       	call   4f8 <write>
        while(*s != 0){
 872:	0f b6 03             	movzbl (%ebx),%eax
 875:	83 c4 10             	add    $0x10,%esp
 878:	84 c0                	test   %al,%al
 87a:	75 e4                	jne    860 <printf+0x220>
 87c:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 87f:	eb 8d                	jmp    80e <printf+0x1ce>
 881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 888:	8b 7d d0             	mov    -0x30(%ebp),%edi
 88b:	83 ec 0c             	sub    $0xc,%esp
 88e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 893:	8b 17                	mov    (%edi),%edx
 895:	6a 01                	push   $0x1
 897:	e9 73 fe ff ff       	jmp    70f <printf+0xcf>
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 8a0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 8a3:	83 ec 04             	sub    $0x4,%esp
 8a6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 8a9:	8b 07                	mov    (%edi),%eax
 8ab:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ae:	6a 01                	push   $0x1
 8b0:	51                   	push   %ecx
 8b1:	56                   	push   %esi
 8b2:	e8 41 fc ff ff       	call   4f8 <write>
 8b7:	e9 5a fe ff ff       	jmp    716 <printf+0xd6>
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 8c6:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8c9:	6a 01                	push   $0x1
 8cb:	51                   	push   %ecx
 8cc:	56                   	push   %esi
 8cd:	e8 26 fc ff ff       	call   4f8 <write>
 8d2:	e9 45 fe ff ff       	jmp    71c <printf+0xdc>
 8d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8de:	00 
 8df:	90                   	nop
 8e0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 8e5:	bf b0 0a 00 00       	mov    $0xab0,%edi
 8ea:	e9 5f ff ff ff       	jmp    84e <printf+0x20e>
 8ef:	90                   	nop
          fraction_part = -fraction_part;
 8f0:	d9 e0                	fchs
 8f2:	e9 77 fe ff ff       	jmp    76e <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 8f7:	83 c3 02             	add    $0x2,%ebx
 8fa:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 8fe:	84 c0                	test   %al,%al
 900:	0f 85 5a fd ff ff    	jne    660 <printf+0x20>
 906:	e9 80 fd ff ff       	jmp    68b <printf+0x4b>
 90b:	66 90                	xchg   %ax,%ax
 90d:	66 90                	xchg   %ax,%ax
 90f:	66 90                	xchg   %ax,%ax
 911:	66 90                	xchg   %ax,%ax
 913:	66 90                	xchg   %ax,%ax
 915:	66 90                	xchg   %ax,%ax
 917:	66 90                	xchg   %ax,%ax
 919:	66 90                	xchg   %ax,%ax
 91b:	66 90                	xchg   %ax,%ax
 91d:	66 90                	xchg   %ax,%ax
 91f:	90                   	nop

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 60 0e 00 00       	mov    0xe60,%eax
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 92e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 938:	00 
 939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 940:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 942:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 944:	39 ca                	cmp    %ecx,%edx
 946:	73 30                	jae    978 <free+0x58>
 948:	39 c1                	cmp    %eax,%ecx
 94a:	72 04                	jb     950 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 94c:	39 c2                	cmp    %eax,%edx
 94e:	72 f0                	jb     940 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 950:	8b 73 fc             	mov    -0x4(%ebx),%esi
 953:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 956:	39 f8                	cmp    %edi,%eax
 958:	74 36                	je     990 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 95a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 95d:	8b 42 04             	mov    0x4(%edx),%eax
 960:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 963:	39 f1                	cmp    %esi,%ecx
 965:	74 40                	je     9a7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 967:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 969:	5b                   	pop    %ebx
  freep = p;
 96a:	89 15 60 0e 00 00    	mov    %edx,0xe60
}
 970:	5e                   	pop    %esi
 971:	5f                   	pop    %edi
 972:	5d                   	pop    %ebp
 973:	c3                   	ret
 974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 978:	39 c2                	cmp    %eax,%edx
 97a:	72 c4                	jb     940 <free+0x20>
 97c:	39 c1                	cmp    %eax,%ecx
 97e:	73 c0                	jae    940 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 980:	8b 73 fc             	mov    -0x4(%ebx),%esi
 983:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 986:	39 f8                	cmp    %edi,%eax
 988:	75 d0                	jne    95a <free+0x3a>
 98a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 990:	03 70 04             	add    0x4(%eax),%esi
 993:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 996:	8b 02                	mov    (%edx),%eax
 998:	8b 00                	mov    (%eax),%eax
 99a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 99d:	8b 42 04             	mov    0x4(%edx),%eax
 9a0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a3:	39 f1                	cmp    %esi,%ecx
 9a5:	75 c0                	jne    967 <free+0x47>
    p->s.size += bp->s.size;
 9a7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9aa:	89 15 60 0e 00 00    	mov    %edx,0xe60
    p->s.size += bp->s.size;
 9b0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9b3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9b6:	89 0a                	mov    %ecx,(%edx)
}
 9b8:	5b                   	pop    %ebx
 9b9:	5e                   	pop    %esi
 9ba:	5f                   	pop    %edi
 9bb:	5d                   	pop    %ebp
 9bc:	c3                   	ret
 9bd:	8d 76 00             	lea    0x0(%esi),%esi

000009c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9cc:	8b 15 60 0e 00 00    	mov    0xe60,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d2:	8d 78 07             	lea    0x7(%eax),%edi
 9d5:	c1 ef 03             	shr    $0x3,%edi
 9d8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 9db:	85 d2                	test   %edx,%edx
 9dd:	0f 84 8d 00 00 00    	je     a70 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9e5:	8b 48 04             	mov    0x4(%eax),%ecx
 9e8:	39 f9                	cmp    %edi,%ecx
 9ea:	73 64                	jae    a50 <malloc+0x90>
  if(nu < 4096)
 9ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9f1:	39 df                	cmp    %ebx,%edi
 9f3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 9f6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 9fd:	eb 0a                	jmp    a09 <malloc+0x49>
 9ff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a00:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a02:	8b 48 04             	mov    0x4(%eax),%ecx
 a05:	39 f9                	cmp    %edi,%ecx
 a07:	73 47                	jae    a50 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a09:	89 c2                	mov    %eax,%edx
 a0b:	39 05 60 0e 00 00    	cmp    %eax,0xe60
 a11:	75 ed                	jne    a00 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 a13:	83 ec 0c             	sub    $0xc,%esp
 a16:	56                   	push   %esi
 a17:	e8 44 fb ff ff       	call   560 <sbrk>
  if(p == (char*)-1)
 a1c:	83 c4 10             	add    $0x10,%esp
 a1f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a22:	74 1c                	je     a40 <malloc+0x80>
  hp->s.size = nu;
 a24:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a27:	83 ec 0c             	sub    $0xc,%esp
 a2a:	83 c0 08             	add    $0x8,%eax
 a2d:	50                   	push   %eax
 a2e:	e8 ed fe ff ff       	call   920 <free>
  return freep;
 a33:	8b 15 60 0e 00 00    	mov    0xe60,%edx
      if((p = morecore(nunits)) == 0)
 a39:	83 c4 10             	add    $0x10,%esp
 a3c:	85 d2                	test   %edx,%edx
 a3e:	75 c0                	jne    a00 <malloc+0x40>
        return 0;
  }
}
 a40:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a43:	31 c0                	xor    %eax,%eax
}
 a45:	5b                   	pop    %ebx
 a46:	5e                   	pop    %esi
 a47:	5f                   	pop    %edi
 a48:	5d                   	pop    %ebp
 a49:	c3                   	ret
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a50:	39 cf                	cmp    %ecx,%edi
 a52:	74 4c                	je     aa0 <malloc+0xe0>
        p->s.size -= nunits;
 a54:	29 f9                	sub    %edi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 a5f:	89 15 60 0e 00 00    	mov    %edx,0xe60
}
 a65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a68:	83 c0 08             	add    $0x8,%eax
}
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 a70:	c7 05 60 0e 00 00 64 	movl   $0xe64,0xe60
 a77:	0e 00 00 
    base.s.size = 0;
 a7a:	b8 64 0e 00 00       	mov    $0xe64,%eax
    base.s.ptr = freep = prevp = &base;
 a7f:	c7 05 64 0e 00 00 64 	movl   $0xe64,0xe64
 a86:	0e 00 00 
    base.s.size = 0;
 a89:	c7 05 68 0e 00 00 00 	movl   $0x0,0xe68
 a90:	00 00 00 
    if(p->s.size >= nunits){
 a93:	e9 54 ff ff ff       	jmp    9ec <malloc+0x2c>
 a98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a9f:	00 
        prevp->s.ptr = p->s.ptr;
 aa0:	8b 08                	mov    (%eax),%ecx
 aa2:	89 0a                	mov    %ecx,(%edx)
 aa4:	eb b9                	jmp    a5f <malloc+0x9f>
