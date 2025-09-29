
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   6:	e8 35 00 00 00       	call   40 <forktest>
  exit();
   b:	e8 c8 05 00 00       	call   5d8 <exit>

00000010 <printf>:
{
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	83 ec 10             	sub    $0x10,%esp
  17:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  1a:	53                   	push   %ebx
  1b:	e8 c0 01 00 00       	call   1e0 <strlen>
  20:	83 c4 0c             	add    $0xc,%esp
  23:	50                   	push   %eax
  24:	53                   	push   %ebx
  25:	ff 75 08             	push   0x8(%ebp)
  28:	e8 cb 05 00 00       	call   5f8 <write>
}
  2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  30:	83 c4 10             	add    $0x10,%esp
  33:	c9                   	leave
  34:	c3                   	ret
  35:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  3c:	00 
  3d:	8d 76 00             	lea    0x0(%esi),%esi

00000040 <forktest>:
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  for(n=0; n<N; n++){
  44:	31 db                	xor    %ebx,%ebx
{
  46:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  49:	68 78 06 00 00       	push   $0x678
  4e:	e8 8d 01 00 00       	call   1e0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 78 06 00 00       	push   $0x678
  5c:	6a 01                	push   $0x1
  5e:	e8 95 05 00 00       	call   5f8 <write>
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb 19                	jmp    81 <forktest+0x41>
  68:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  6f:	00 
    if(pid == 0)
  70:	74 58                	je     ca <forktest+0x8a>
  for(n=0; n<N; n++){
  72:	83 c3 01             	add    $0x1,%ebx
  75:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  7b:	0f 84 83 00 00 00    	je     104 <forktest+0xc4>
    pid = fork();
  81:	e8 4a 05 00 00       	call   5d0 <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 4b 05 00 00       	call   5e0 <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 3d 05 00 00       	call   5e0 <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 aa 06 00 00       	push   $0x6aa
  b0:	e8 2b 01 00 00       	call   1e0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 aa 06 00 00       	push   $0x6aa
  be:	6a 01                	push   $0x1
  c0:	e8 33 05 00 00       	call   5f8 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave
  c9:	c3                   	ret
      exit();
  ca:	e8 09 05 00 00       	call   5d8 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 83 06 00 00       	push   $0x683
  d7:	e8 04 01 00 00       	call   1e0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 83 06 00 00       	push   $0x683
  e5:	6a 01                	push   $0x1
  e7:	e8 0c 05 00 00       	call   5f8 <write>
      exit();
  ec:	e8 e7 04 00 00       	call   5d8 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 97 06 00 00       	push   $0x697
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 d4 04 00 00       	call   5d8 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 b8 06 00 00       	push   $0x6b8
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 bd 04 00 00       	call   5d8 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	66 90                	xchg   %ax,%ax
 121:	66 90                	xchg   %ax,%ax
 123:	66 90                	xchg   %ax,%ax
 125:	66 90                	xchg   %ax,%ax
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	66 90                	xchg   %ax,%ax
 131:	66 90                	xchg   %ax,%ax
 133:	66 90                	xchg   %ax,%ax
 135:	66 90                	xchg   %ax,%ax
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 140:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 141:	31 c0                	xor    %eax,%eax
{
 143:	89 e5                	mov    %esp,%ebp
 145:	53                   	push   %ebx
 146:	8b 4d 08             	mov    0x8(%ebp),%ecx
 149:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 150:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 154:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 157:	83 c0 01             	add    $0x1,%eax
 15a:	84 d2                	test   %dl,%dl
 15c:	75 f2                	jne    150 <strcpy+0x10>
    ;
  return os;
}
 15e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 161:	89 c8                	mov    %ecx,%eax
 163:	c9                   	leave
 164:	c3                   	ret
 165:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 16c:	00 
 16d:	8d 76 00             	lea    0x0(%esi),%esi

00000170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	53                   	push   %ebx
 174:	8b 55 08             	mov    0x8(%ebp),%edx
 177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 17a:	0f b6 02             	movzbl (%edx),%eax
 17d:	84 c0                	test   %al,%al
 17f:	75 2f                	jne    1b0 <strcmp+0x40>
 181:	eb 4a                	jmp    1cd <strcmp+0x5d>
 183:	eb 1b                	jmp    1a0 <strcmp+0x30>
 185:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 18c:	00 
 18d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 194:	00 
 195:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 19c:	00 
 19d:	8d 76 00             	lea    0x0(%esi),%esi
 1a0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1a4:	83 c2 01             	add    $0x1,%edx
 1a7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1aa:	84 c0                	test   %al,%al
 1ac:	74 12                	je     1c0 <strcmp+0x50>
 1ae:	89 d9                	mov    %ebx,%ecx
 1b0:	0f b6 19             	movzbl (%ecx),%ebx
 1b3:	38 c3                	cmp    %al,%bl
 1b5:	74 e9                	je     1a0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 1b7:	29 d8                	sub    %ebx,%eax
}
 1b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1bc:	c9                   	leave
 1bd:	c3                   	ret
 1be:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 1c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1c4:	31 c0                	xor    %eax,%eax
 1c6:	29 d8                	sub    %ebx,%eax
}
 1c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1cb:	c9                   	leave
 1cc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 1cd:	0f b6 19             	movzbl (%ecx),%ebx
 1d0:	31 c0                	xor    %eax,%eax
 1d2:	eb e3                	jmp    1b7 <strcmp+0x47>
 1d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1db:	00 
 1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001e0 <strlen>:

uint
strlen(const char *s)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1e6:	80 3a 00             	cmpb   $0x0,(%edx)
 1e9:	74 15                	je     200 <strlen+0x20>
 1eb:	31 c0                	xor    %eax,%eax
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
 1f0:	83 c0 01             	add    $0x1,%eax
 1f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1f7:	89 c1                	mov    %eax,%ecx
 1f9:	75 f5                	jne    1f0 <strlen+0x10>
    ;
  return n;
}
 1fb:	89 c8                	mov    %ecx,%eax
 1fd:	5d                   	pop    %ebp
 1fe:	c3                   	ret
 1ff:	90                   	nop
  for(n = 0; s[n]; n++)
 200:	31 c9                	xor    %ecx,%ecx
}
 202:	5d                   	pop    %ebp
 203:	89 c8                	mov    %ecx,%eax
 205:	c3                   	ret
 206:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20d:	00 
 20e:	66 90                	xchg   %ax,%ax

00000210 <memset>:

void*
memset(void *dst, int c, uint n)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 217:	8b 4d 10             	mov    0x10(%ebp),%ecx
 21a:	8b 45 0c             	mov    0xc(%ebp),%eax
 21d:	89 d7                	mov    %edx,%edi
 21f:	fc                   	cld
 220:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 222:	8b 7d fc             	mov    -0x4(%ebp),%edi
 225:	89 d0                	mov    %edx,%eax
 227:	c9                   	leave
 228:	c3                   	ret
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000230 <strchr>:

char*
strchr(const char *s, char c)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 45 08             	mov    0x8(%ebp),%eax
 236:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 23a:	0f b6 10             	movzbl (%eax),%edx
 23d:	84 d2                	test   %dl,%dl
 23f:	75 1a                	jne    25b <strchr+0x2b>
 241:	eb 25                	jmp    268 <strchr+0x38>
 243:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 24a:	00 
 24b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 250:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 254:	83 c0 01             	add    $0x1,%eax
 257:	84 d2                	test   %dl,%dl
 259:	74 0d                	je     268 <strchr+0x38>
    if(*s == c)
 25b:	38 d1                	cmp    %dl,%cl
 25d:	75 f1                	jne    250 <strchr+0x20>
      return (char*)s;
  return 0;
}
 25f:	5d                   	pop    %ebp
 260:	c3                   	ret
 261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 268:	31 c0                	xor    %eax,%eax
}
 26a:	5d                   	pop    %ebp
 26b:	c3                   	ret
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000270 <gets>:

char*
gets(char *buf, int max)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
 274:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 275:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 278:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 279:	31 db                	xor    %ebx,%ebx
{
 27b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 27e:	eb 27                	jmp    2a7 <gets+0x37>
    cc = read(0, &c, 1);
 280:	83 ec 04             	sub    $0x4,%esp
 283:	6a 01                	push   $0x1
 285:	56                   	push   %esi
 286:	6a 00                	push   $0x0
 288:	e8 63 03 00 00       	call   5f0 <read>
    if(cc < 1)
 28d:	83 c4 10             	add    $0x10,%esp
 290:	85 c0                	test   %eax,%eax
 292:	7e 1d                	jle    2b1 <gets+0x41>
      break;
    buf[i++] = c;
 294:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 298:	8b 55 08             	mov    0x8(%ebp),%edx
 29b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 29f:	3c 0a                	cmp    $0xa,%al
 2a1:	74 10                	je     2b3 <gets+0x43>
 2a3:	3c 0d                	cmp    $0xd,%al
 2a5:	74 0c                	je     2b3 <gets+0x43>
  for(i=0; i+1 < max; ){
 2a7:	89 df                	mov    %ebx,%edi
 2a9:	83 c3 01             	add    $0x1,%ebx
 2ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2af:	7c cf                	jl     280 <gets+0x10>
 2b1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 2ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2bd:	5b                   	pop    %ebx
 2be:	5e                   	pop    %esi
 2bf:	5f                   	pop    %edi
 2c0:	5d                   	pop    %ebp
 2c1:	c3                   	ret
 2c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2c9:	00 
 2ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	56                   	push   %esi
 2d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2d5:	83 ec 08             	sub    $0x8,%esp
 2d8:	6a 00                	push   $0x0
 2da:	ff 75 08             	push   0x8(%ebp)
 2dd:	e8 36 03 00 00       	call   618 <open>
  if(fd < 0)
 2e2:	83 c4 10             	add    $0x10,%esp
 2e5:	85 c0                	test   %eax,%eax
 2e7:	78 27                	js     310 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2e9:	83 ec 08             	sub    $0x8,%esp
 2ec:	ff 75 0c             	push   0xc(%ebp)
 2ef:	89 c3                	mov    %eax,%ebx
 2f1:	50                   	push   %eax
 2f2:	e8 39 03 00 00       	call   630 <fstat>
  close(fd);
 2f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2fa:	89 c6                	mov    %eax,%esi
  close(fd);
 2fc:	e8 ff 02 00 00       	call   600 <close>
  return r;
 301:	83 c4 10             	add    $0x10,%esp
}
 304:	8d 65 f8             	lea    -0x8(%ebp),%esp
 307:	89 f0                	mov    %esi,%eax
 309:	5b                   	pop    %ebx
 30a:	5e                   	pop    %esi
 30b:	5d                   	pop    %ebp
 30c:	c3                   	ret
 30d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 310:	be ff ff ff ff       	mov    $0xffffffff,%esi
 315:	eb ed                	jmp    304 <stat+0x34>
 317:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 31e:	00 
 31f:	90                   	nop

00000320 <atoi>:

int
atoi(const char *s)
{
 320:	55                   	push   %ebp
 321:	b8 01 00 00 00       	mov    $0x1,%eax
 326:	89 e5                	mov    %esp,%ebp
 328:	56                   	push   %esi
 329:	8b 75 08             	mov    0x8(%ebp),%esi
 32c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 32d:	0f be 16             	movsbl (%esi),%edx
 330:	80 fa 2d             	cmp    $0x2d,%dl
 333:	75 0c                	jne    341 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 335:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 339:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 33e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 341:	8d 4a d0             	lea    -0x30(%edx),%ecx
 344:	80 f9 09             	cmp    $0x9,%cl
 347:	77 37                	ja     380 <atoi+0x60>
  n = 0;
 349:	31 c9                	xor    %ecx,%ecx
 34b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 352:	00 
 353:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35a:	00 
 35b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 360:	83 c6 01             	add    $0x1,%esi
 363:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 366:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 36a:	0f be 16             	movsbl (%esi),%edx
 36d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 370:	80 fb 09             	cmp    $0x9,%bl
 373:	76 eb                	jbe    360 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 375:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 376:	0f af c1             	imul   %ecx,%eax
}
 379:	5e                   	pop    %esi
 37a:	5d                   	pop    %ebp
 37b:	c3                   	ret
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 380:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 381:	31 c0                	xor    %eax,%eax
}
 383:	5e                   	pop    %esi
 384:	5d                   	pop    %ebp
 385:	c3                   	ret
 386:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 38d:	00 
 38e:	66 90                	xchg   %ax,%ax

00000390 <atof>:

double atof(const char *s){
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
 395:	53                   	push   %ebx
 396:	83 ec 0c             	sub    $0xc,%esp
 399:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 39c:	0f b6 0a             	movzbl (%edx),%ecx
 39f:	80 f9 2d             	cmp    $0x2d,%cl
 3a2:	0f 84 28 01 00 00    	je     4d0 <atof+0x140>
  const char *integerPart = s;
 3a8:	89 d3                	mov    %edx,%ebx
 3aa:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 3ad:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 3b4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 3b6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 3bb:	84 c9                	test   %cl,%cl
 3bd:	75 2f                	jne    3ee <atof+0x5e>
 3bf:	eb 7b                	jmp    43c <atof+0xac>
 3c1:	eb 1d                	jmp    3e0 <atof+0x50>
 3c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ca:	00 
 3cb:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3d2:	00 
 3d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3da:	00 
 3db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3e0:	0f b6 08             	movzbl (%eax),%ecx
 3e3:	84 c9                	test   %cl,%cl
 3e5:	0f 84 d5 00 00 00    	je     4c0 <atof+0x130>
 3eb:	83 c0 01             	add    $0x1,%eax
 3ee:	89 c2                	mov    %eax,%edx
    if(*s == c)
 3f0:	80 f9 2e             	cmp    $0x2e,%cl
 3f3:	75 eb                	jne    3e0 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 3f5:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 3f8:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 3fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3fd:	80 f9 09             	cmp    $0x9,%cl
 400:	77 3a                	ja     43c <atof+0xac>
 402:	eb 1c                	jmp    420 <atof+0x90>
 404:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40b:	00 
 40c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 413:	00 
 414:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41b:	00 
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 420:	83 e8 30             	sub    $0x30,%eax
 423:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 426:	83 c3 01             	add    $0x1,%ebx
 429:	0f be c0             	movsbl %al,%eax
 42c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 42f:	0f b6 03             	movzbl (%ebx),%eax
 432:	8d 70 d0             	lea    -0x30(%eax),%esi
 435:	89 f1                	mov    %esi,%ecx
 437:	80 f9 09             	cmp    $0x9,%cl
 43a:	76 e4                	jbe    420 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 43c:	0f b6 02             	movzbl (%edx),%eax
 43f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 442:	80 fb 09             	cmp    $0x9,%bl
 445:	0f 87 9d 00 00 00    	ja     4e8 <atof+0x158>
  double divisor = 10.0;   
 44b:	d9 05 d8 06 00 00    	flds   0x6d8
  double fraction = 0.0;  
 451:	d9 ee                	fldz
 453:	eb 2d                	jmp    482 <atof+0xf2>
 455:	eb 29                	jmp    480 <atof+0xf0>
 457:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45e:	00 
 45f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 466:	00 
 467:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 46e:	00 
 46f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 476:	00 
 477:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47e:	00 
 47f:	90                   	nop
 480:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 482:	83 e8 30             	sub    $0x30,%eax
 485:	83 c2 01             	add    $0x1,%edx
 488:	66 98                	cbtw
 48a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 48e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 491:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 494:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 496:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 499:	de c1                	faddp  %st,%st(1)
 49b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 49d:	d8 0d d8 06 00 00    	fmuls  0x6d8
  while('0' <= *fractionPart && *fractionPart <= '9'){
 4a3:	80 fb 09             	cmp    $0x9,%bl
 4a6:	76 d8                	jbe    480 <atof+0xf0>
 4a8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 4aa:	89 7d ec             	mov    %edi,-0x14(%ebp)
 4ad:	db 45 ec             	fildl  -0x14(%ebp)
 4b0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 4b2:	db 45 e8             	fildl  -0x18(%ebp)
}
 4b5:	83 c4 0c             	add    $0xc,%esp
 4b8:	5b                   	pop    %ebx
 4b9:	5e                   	pop    %esi
 4ba:	5f                   	pop    %edi
 4bb:	5d                   	pop    %ebp
  return sign*answer;
 4bc:	de c9                	fmulp  %st,%st(1)
}
 4be:	c3                   	ret
 4bf:	90                   	nop
 4c0:	ba 01 00 00 00       	mov    $0x1,%edx
 4c5:	e9 2b ff ff ff       	jmp    3f5 <atof+0x65>
 4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 4d0:	8d 42 01             	lea    0x1(%edx),%eax
 4d3:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 4da:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 4dc:	e9 0d ff ff ff       	jmp    3ee <atof+0x5e>
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 4e8:	d9 ee                	fldz
 4ea:	eb be                	jmp    4aa <atof+0x11a>
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004f0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	8b 45 10             	mov    0x10(%ebp),%eax
 4f7:	8b 55 08             	mov    0x8(%ebp),%edx
 4fa:	56                   	push   %esi
 4fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4fe:	85 c0                	test   %eax,%eax
 500:	7e 13                	jle    515 <memmove+0x25>
 502:	01 d0                	add    %edx,%eax
  dst = vdst;
 504:	89 d7                	mov    %edx,%edi
 506:	66 90                	xchg   %ax,%ax
 508:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 50f:	00 
    *dst++ = *src++;
 510:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 511:	39 f8                	cmp    %edi,%eax
 513:	75 fb                	jne    510 <memmove+0x20>
  return vdst;
}
 515:	5e                   	pop    %esi
 516:	89 d0                	mov    %edx,%eax
 518:	5f                   	pop    %edi
 519:	5d                   	pop    %ebp
 51a:	c3                   	ret
 51b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000520 <fsqrt>:

double fsqrt(double n) {
 520:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 521:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 526:	89 e5                	mov    %esp,%ebp
 528:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 52b:	d9 c0                	fld    %st(0)
 52d:	d8 0d dc 06 00 00    	fmuls  0x6dc
    for (int i = 0; i < 20; i++) {
 533:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 53a:	00 
 53b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 540:	d9 c1                	fld    %st(1)
 542:	d8 f1                	fdiv   %st(1),%st
 544:	de c1                	faddp  %st,%st(1)
 546:	d8 0d dc 06 00 00    	fmuls  0x6dc
    for (int i = 0; i < 20; i++) {
 54c:	83 e8 01             	sub    $0x1,%eax
 54f:	75 ef                	jne    540 <fsqrt+0x20>
 551:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 553:	5d                   	pop    %ebp
 554:	c3                   	ret
 555:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55c:	00 
 55d:	8d 76 00             	lea    0x0(%esi),%esi

00000560 <insertionSort>:

void insertionSort(double arr[], int n)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	8b 7d 0c             	mov    0xc(%ebp),%edi
 567:	56                   	push   %esi
 568:	8b 75 08             	mov    0x8(%ebp),%esi
 56b:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 56c:	83 ff 01             	cmp    $0x1,%edi
 56f:	7e 5a                	jle    5cb <insertionSort+0x6b>
 571:	bb 01 00 00 00       	mov    $0x1,%ebx
 576:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 57d:	00 
 57e:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 580:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 583:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 586:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 589:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 590:	00 
 591:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 598:	00 
 599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a0:	dd 40 f8             	fldl   -0x8(%eax)
 5a3:	89 c1                	mov    %eax,%ecx
 5a5:	db f1                	fcomi  %st(1),%st
 5a7:	76 17                	jbe    5c0 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 5a9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 5ac:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 5ae:	8d 41 f8             	lea    -0x8(%ecx),%eax
 5b1:	83 fa ff             	cmp    $0xffffffff,%edx
 5b4:	75 ea                	jne    5a0 <insertionSort+0x40>
 5b6:	89 f1                	mov    %esi,%ecx
 5b8:	eb 08                	jmp    5c2 <insertionSort+0x62>
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5c0:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 5c2:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 5c5:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 5c7:	39 df                	cmp    %ebx,%edi
 5c9:	75 b5                	jne    580 <insertionSort+0x20>
    }
    
 5cb:	5b                   	pop    %ebx
 5cc:	5e                   	pop    %esi
 5cd:	5f                   	pop    %edi
 5ce:	5d                   	pop    %ebp
 5cf:	c3                   	ret

000005d0 <fork>:
 5d0:	b8 01 00 00 00       	mov    $0x1,%eax
 5d5:	cd 40                	int    $0x40
 5d7:	c3                   	ret

000005d8 <exit>:
 5d8:	b8 02 00 00 00       	mov    $0x2,%eax
 5dd:	cd 40                	int    $0x40
 5df:	c3                   	ret

000005e0 <wait>:
 5e0:	b8 03 00 00 00       	mov    $0x3,%eax
 5e5:	cd 40                	int    $0x40
 5e7:	c3                   	ret

000005e8 <pipe>:
 5e8:	b8 04 00 00 00       	mov    $0x4,%eax
 5ed:	cd 40                	int    $0x40
 5ef:	c3                   	ret

000005f0 <read>:
 5f0:	b8 05 00 00 00       	mov    $0x5,%eax
 5f5:	cd 40                	int    $0x40
 5f7:	c3                   	ret

000005f8 <write>:
 5f8:	b8 10 00 00 00       	mov    $0x10,%eax
 5fd:	cd 40                	int    $0x40
 5ff:	c3                   	ret

00000600 <close>:
 600:	b8 15 00 00 00       	mov    $0x15,%eax
 605:	cd 40                	int    $0x40
 607:	c3                   	ret

00000608 <kill>:
 608:	b8 06 00 00 00       	mov    $0x6,%eax
 60d:	cd 40                	int    $0x40
 60f:	c3                   	ret

00000610 <exec>:
 610:	b8 07 00 00 00       	mov    $0x7,%eax
 615:	cd 40                	int    $0x40
 617:	c3                   	ret

00000618 <open>:
 618:	b8 0f 00 00 00       	mov    $0xf,%eax
 61d:	cd 40                	int    $0x40
 61f:	c3                   	ret

00000620 <mknod>:
 620:	b8 11 00 00 00       	mov    $0x11,%eax
 625:	cd 40                	int    $0x40
 627:	c3                   	ret

00000628 <unlink>:
 628:	b8 12 00 00 00       	mov    $0x12,%eax
 62d:	cd 40                	int    $0x40
 62f:	c3                   	ret

00000630 <fstat>:
 630:	b8 08 00 00 00       	mov    $0x8,%eax
 635:	cd 40                	int    $0x40
 637:	c3                   	ret

00000638 <link>:
 638:	b8 13 00 00 00       	mov    $0x13,%eax
 63d:	cd 40                	int    $0x40
 63f:	c3                   	ret

00000640 <mkdir>:
 640:	b8 14 00 00 00       	mov    $0x14,%eax
 645:	cd 40                	int    $0x40
 647:	c3                   	ret

00000648 <chdir>:
 648:	b8 09 00 00 00       	mov    $0x9,%eax
 64d:	cd 40                	int    $0x40
 64f:	c3                   	ret

00000650 <dup>:
 650:	b8 0a 00 00 00       	mov    $0xa,%eax
 655:	cd 40                	int    $0x40
 657:	c3                   	ret

00000658 <getpid>:
 658:	b8 0b 00 00 00       	mov    $0xb,%eax
 65d:	cd 40                	int    $0x40
 65f:	c3                   	ret

00000660 <sbrk>:
 660:	b8 0c 00 00 00       	mov    $0xc,%eax
 665:	cd 40                	int    $0x40
 667:	c3                   	ret

00000668 <sleep>:
 668:	b8 0d 00 00 00       	mov    $0xd,%eax
 66d:	cd 40                	int    $0x40
 66f:	c3                   	ret

00000670 <uptime>:
 670:	b8 0e 00 00 00       	mov    $0xe,%eax
 675:	cd 40                	int    $0x40
 677:	c3                   	ret
