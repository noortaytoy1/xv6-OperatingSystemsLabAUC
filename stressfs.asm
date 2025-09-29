
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
   7:	b8 30 00 00 00       	mov    $0x30,%eax
{
   c:	ff 71 fc             	push   -0x4(%ecx)
   f:	55                   	push   %ebp
  10:	89 e5                	mov    %esp,%ebp
  12:	57                   	push   %edi
  13:	56                   	push   %esi
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
  14:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
{
  1a:	53                   	push   %ebx

  for(i = 0; i < 4; i++)
  1b:	31 db                	xor    %ebx,%ebx
{
  1d:	51                   	push   %ecx
  1e:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
  24:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
  printf(1, "stressfs starting\n");
  2b:	68 a8 0b 00 00       	push   $0xba8
  30:	6a 01                	push   $0x1
  char path[] = "stressfs0";
  32:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
  39:	74 72 65 
  3c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
  43:	73 66 73 
  printf(1, "stressfs starting\n");
  46:	e8 f5 06 00 00       	call   740 <printf>
  memset(data, 'a', sizeof(data));
  4b:	83 c4 0c             	add    $0xc,%esp
  4e:	68 00 02 00 00       	push   $0x200
  53:	6a 61                	push   $0x61
  55:	56                   	push   %esi
  56:	e8 b5 01 00 00       	call   210 <memset>
  5b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
  5e:	e8 6d 05 00 00       	call   5d0 <fork>
  63:	85 c0                	test   %eax,%eax
  65:	0f 8f bf 00 00 00    	jg     12a <main+0x12a>
  for(i = 0; i < 4; i++)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	83 fb 04             	cmp    $0x4,%ebx
  71:	75 eb                	jne    5e <main+0x5e>
  73:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
  78:	83 ec 04             	sub    $0x4,%esp
  7b:	53                   	push   %ebx

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  7c:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
  81:	68 bb 0b 00 00       	push   $0xbbb
  86:	6a 01                	push   $0x1
  88:	e8 b3 06 00 00       	call   740 <printf>
  path[8] += i;
  8d:	89 f8                	mov    %edi,%eax
  fd = open(path, O_CREATE | O_RDWR);
  8f:	5f                   	pop    %edi
  path[8] += i;
  90:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
  96:	58                   	pop    %eax
  97:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  9d:	68 02 02 00 00       	push   $0x202
  a2:	50                   	push   %eax
  a3:	e8 70 05 00 00       	call   618 <open>
  a8:	83 c4 10             	add    $0x10,%esp
  ab:	89 c7                	mov    %eax,%edi
  for(i = 0; i < 20; i++)
  ad:	8d 76 00             	lea    0x0(%esi),%esi
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  b0:	83 ec 04             	sub    $0x4,%esp
  b3:	68 00 02 00 00       	push   $0x200
  b8:	56                   	push   %esi
  b9:	57                   	push   %edi
  ba:	e8 39 05 00 00       	call   5f8 <write>
  for(i = 0; i < 20; i++)
  bf:	83 c4 10             	add    $0x10,%esp
  c2:	83 eb 01             	sub    $0x1,%ebx
  c5:	75 e9                	jne    b0 <main+0xb0>
  close(fd);
  c7:	83 ec 0c             	sub    $0xc,%esp
  ca:	57                   	push   %edi
  cb:	e8 30 05 00 00       	call   600 <close>

  printf(1, "read\n");
  d0:	58                   	pop    %eax
  d1:	5a                   	pop    %edx
  d2:	68 c5 0b 00 00       	push   $0xbc5
  d7:	6a 01                	push   $0x1
  d9:	e8 62 06 00 00       	call   740 <printf>

  fd = open(path, O_RDONLY);
  de:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  e4:	59                   	pop    %ecx
  e5:	5b                   	pop    %ebx
  e6:	6a 00                	push   $0x0
  e8:	bb 14 00 00 00       	mov    $0x14,%ebx
  ed:	50                   	push   %eax
  ee:	e8 25 05 00 00       	call   618 <open>
  f3:	83 c4 10             	add    $0x10,%esp
  f6:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
  f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ff:	00 
    read(fd, data, sizeof(data));
 100:	83 ec 04             	sub    $0x4,%esp
 103:	68 00 02 00 00       	push   $0x200
 108:	56                   	push   %esi
 109:	57                   	push   %edi
 10a:	e8 e1 04 00 00       	call   5f0 <read>
  for (i = 0; i < 20; i++)
 10f:	83 c4 10             	add    $0x10,%esp
 112:	83 eb 01             	sub    $0x1,%ebx
 115:	75 e9                	jne    100 <main+0x100>
  close(fd);
 117:	83 ec 0c             	sub    $0xc,%esp
 11a:	57                   	push   %edi
 11b:	e8 e0 04 00 00       	call   600 <close>

  wait();
 120:	e8 bb 04 00 00       	call   5e0 <wait>

  exit();
 125:	e8 ae 04 00 00       	call   5d8 <exit>
  path[8] += i;
 12a:	89 df                	mov    %ebx,%edi
 12c:	e9 47 ff ff ff       	jmp    78 <main+0x78>
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
 44b:	d9 05 d4 0b 00 00    	flds   0xbd4
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
 49d:	d8 0d d4 0b 00 00    	fmuls  0xbd4
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
 52d:	d8 0d d8 0b 00 00    	fmuls  0xbd8
    for (int i = 0; i < 20; i++) {
 533:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 53a:	00 
 53b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 540:	d9 c1                	fld    %st(1)
 542:	d8 f1                	fdiv   %st(1),%st
 544:	de c1                	faddp  %st,%st(1)
 546:	d8 0d d8 0b 00 00    	fmuls  0xbd8
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
 678:	66 90                	xchg   %ax,%ax
 67a:	66 90                	xchg   %ax,%ax
 67c:	66 90                	xchg   %ax,%ax
 67e:	66 90                	xchg   %ax,%ax

00000680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 688:	89 d1                	mov    %edx,%ecx
{
 68a:	83 ec 3c             	sub    $0x3c,%esp
 68d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 690:	85 d2                	test   %edx,%edx
 692:	0f 89 98 00 00 00    	jns    730 <printint+0xb0>
 698:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 69c:	0f 84 8e 00 00 00    	je     730 <printint+0xb0>
    x = -xx;
 6a2:	f7 d9                	neg    %ecx
    neg = 1;
 6a4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 6a9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6ac:	31 f6                	xor    %esi,%esi
 6ae:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6b5:	00 
 6b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6bd:	00 
 6be:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 6c0:	89 c8                	mov    %ecx,%eax
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	89 f7                	mov    %esi,%edi
 6c6:	f7 f3                	div    %ebx
 6c8:	8d 76 01             	lea    0x1(%esi),%esi
 6cb:	0f b6 92 34 0c 00 00 	movzbl 0xc34(%edx),%edx
 6d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 6d6:	89 ca                	mov    %ecx,%edx
 6d8:	89 c1                	mov    %eax,%ecx
 6da:	39 da                	cmp    %ebx,%edx
 6dc:	73 e2                	jae    6c0 <printint+0x40>
  if(neg)
 6de:	8b 45 c0             	mov    -0x40(%ebp),%eax
 6e1:	85 c0                	test   %eax,%eax
 6e3:	74 07                	je     6ec <printint+0x6c>
    buf[i++] = '-';
 6e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 6ea:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 6ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 6ef:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 6f2:	01 df                	add    %ebx,%edi
 6f4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fb:	00 
 6fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 700:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 703:	83 ec 04             	sub    $0x4,%esp
 706:	88 45 d7             	mov    %al,-0x29(%ebp)
 709:	8d 45 d7             	lea    -0x29(%ebp),%eax
 70c:	6a 01                	push   $0x1
 70e:	50                   	push   %eax
 70f:	56                   	push   %esi
 710:	e8 e3 fe ff ff       	call   5f8 <write>
  while(--i >= 0)
 715:	89 f8                	mov    %edi,%eax
 717:	83 c4 10             	add    $0x10,%esp
 71a:	83 ef 01             	sub    $0x1,%edi
 71d:	39 d8                	cmp    %ebx,%eax
 71f:	75 df                	jne    700 <printint+0x80>
}
 721:	8d 65 f4             	lea    -0xc(%ebp),%esp
 724:	5b                   	pop    %ebx
 725:	5e                   	pop    %esi
 726:	5f                   	pop    %edi
 727:	5d                   	pop    %ebp
 728:	c3                   	ret
 729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 730:	31 c0                	xor    %eax,%eax
 732:	e9 72 ff ff ff       	jmp    6a9 <printint+0x29>
 737:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73e:	00 
 73f:	90                   	nop

00000740 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 745:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 748:	53                   	push   %ebx
 749:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 74c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 74f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 752:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 755:	0f b6 01             	movzbl (%ecx),%eax
 758:	84 c0                	test   %al,%al
 75a:	74 2f                	je     78b <printf+0x4b>
 75c:	31 db                	xor    %ebx,%ebx
 75e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 760:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 763:	83 fa 25             	cmp    $0x25,%edx
 766:	74 30                	je     798 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 768:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 76b:	83 ec 04             	sub    $0x4,%esp
 76e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 771:	6a 01                	push   $0x1
 773:	50                   	push   %eax
 774:	56                   	push   %esi
 775:	e8 7e fe ff ff       	call   5f8 <write>
        putc(fd, c);
 77a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 77d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 780:	83 c3 01             	add    $0x1,%ebx
 783:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 787:	84 c0                	test   %al,%al
 789:	75 d5                	jne    760 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 78b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 78e:	5b                   	pop    %ebx
 78f:	5e                   	pop    %esi
 790:	5f                   	pop    %edi
 791:	5d                   	pop    %ebp
 792:	c3                   	ret
 793:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 798:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 79d:	8d 7b 01             	lea    0x1(%ebx),%edi
 7a0:	84 d2                	test   %dl,%dl
 7a2:	74 e7                	je     78b <printf+0x4b>
    c = fmt[i] & 0xff;
 7a4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 7a7:	80 fa 25             	cmp    $0x25,%dl
 7aa:	0f 84 10 02 00 00    	je     9c0 <printf+0x280>
 7b0:	83 e8 63             	sub    $0x63,%eax
 7b3:	83 f8 15             	cmp    $0x15,%eax
 7b6:	77 08                	ja     7c0 <printf+0x80>
 7b8:	ff 24 85 dc 0b 00 00 	jmp    *0xbdc(,%eax,4)
 7bf:	90                   	nop
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 7c6:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 7c9:	89 fb                	mov    %edi,%ebx
 7cb:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 7cf:	6a 01                	push   $0x1
 7d1:	51                   	push   %ecx
 7d2:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 7d5:	56                   	push   %esi
 7d6:	e8 1d fe ff ff       	call   5f8 <write>
        putc(fd, c);
 7db:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 7df:	83 c4 0c             	add    $0xc,%esp
 7e2:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7e5:	6a 01                	push   $0x1
 7e7:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 7ea:	51                   	push   %ecx
 7eb:	56                   	push   %esi
 7ec:	e8 07 fe ff ff       	call   5f8 <write>
        putc(fd, c);
 7f1:	83 c4 10             	add    $0x10,%esp
 7f4:	eb 87                	jmp    77d <printf+0x3d>
 7f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7fd:	00 
 7fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 800:	8b 7d d0             	mov    -0x30(%ebp),%edi
 803:	83 ec 0c             	sub    $0xc,%esp
 806:	b9 10 00 00 00       	mov    $0x10,%ecx
 80b:	8b 17                	mov    (%edi),%edx
 80d:	6a 00                	push   $0x0
 80f:	89 f0                	mov    %esi,%eax
 811:	e8 6a fe ff ff       	call   680 <printint>
        ap++;
 816:	83 c7 04             	add    $0x4,%edi
 819:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 81c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 81f:	83 c3 02             	add    $0x2,%ebx
 822:	83 c4 10             	add    $0x10,%esp
 825:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 829:	84 c0                	test   %al,%al
 82b:	0f 85 2f ff ff ff    	jne    760 <printf+0x20>
}
 831:	8d 65 f4             	lea    -0xc(%ebp),%esp
 834:	5b                   	pop    %ebx
 835:	5e                   	pop    %esi
 836:	5f                   	pop    %edi
 837:	5d                   	pop    %ebp
 838:	c3                   	ret
 839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 840:	8b 45 d0             	mov    -0x30(%ebp),%eax
 843:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 845:	d9 7d d6             	fnstcw -0x2a(%ebp)
 848:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 84c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 84f:	80 cc 0c             	or     $0xc,%ah
 852:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 856:	d9 6d d4             	fldcw  -0x2c(%ebp)
 859:	db 55 c0             	fistl  -0x40(%ebp)
 85c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 85f:	db 45 c0             	fildl  -0x40(%ebp)
 862:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 864:	d9 ee                	fldz
 866:	df f1                	fcomip %st(1),%st
 868:	0f 87 82 01 00 00    	ja     9f0 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 86e:	83 ec 0c             	sub    $0xc,%esp
 871:	dd 5d b0             	fstpl  -0x50(%ebp)
 874:	b9 0a 00 00 00       	mov    $0xa,%ecx
 879:	89 f0                	mov    %esi,%eax
 87b:	6a 01                	push   $0x1
 87d:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 880:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 885:	e8 f6 fd ff ff       	call   680 <printint>
  write(fd, &c, 1);
 88a:	83 c4 0c             	add    $0xc,%esp
 88d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 890:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 894:	6a 01                	push   $0x1
 896:	51                   	push   %ecx
 897:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 89a:	56                   	push   %esi
 89b:	e8 58 fd ff ff       	call   5f8 <write>
        putc(fd, '.'); //adds the decimal point
 8a0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 8a3:	83 c4 10             	add    $0x10,%esp
 8a6:	dd 45 b0             	fldl   -0x50(%ebp)
 8a9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 8ac:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 8af:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 8b2:	d8 0d d4 0b 00 00    	fmuls  0xbd4
          int digit = (int) fraction_part;
 8b8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 8bc:	80 cc 0c             	or     $0xc,%ah
 8bf:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 8c3:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 8c8:	d9 6d d4             	fldcw  -0x2c(%ebp)
 8cb:	db 55 c8             	fistl  -0x38(%ebp)
 8ce:	d9 6d d6             	fldcw  -0x2a(%ebp)
 8d1:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 8d4:	39 c3                	cmp    %eax,%ebx
 8d6:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 8d9:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 8dc:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 8df:	8d 43 30             	lea    0x30(%ebx),%eax
 8e2:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8e5:	6a 01                	push   $0x1
 8e7:	ff 75 bc             	push   -0x44(%ebp)
 8ea:	56                   	push   %esi
 8eb:	e8 08 fd ff ff       	call   5f8 <write>
          fraction_part -= digit;
 8f0:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 8f3:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 8f6:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 8f9:	dd 45 c0             	fldl   -0x40(%ebp)
 8fc:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 8fe:	83 ef 01             	sub    $0x1,%edi
 901:	75 ac                	jne    8af <printf+0x16f>
 903:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 905:	8b 45 d0             	mov    -0x30(%ebp),%eax
 908:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 90b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 90e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 911:	83 c3 02             	add    $0x2,%ebx
 914:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 918:	84 c0                	test   %al,%al
 91a:	0f 85 40 fe ff ff    	jne    760 <printf+0x20>
}
 920:	8d 65 f4             	lea    -0xc(%ebp),%esp
 923:	5b                   	pop    %ebx
 924:	5e                   	pop    %esi
 925:	5f                   	pop    %edi
 926:	5d                   	pop    %ebp
 927:	c3                   	ret
 928:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 92f:	00 
        s = (char*)*ap;
 930:	8b 45 d0             	mov    -0x30(%ebp),%eax
 933:	8b 38                	mov    (%eax),%edi
        ap++;
 935:	83 c0 04             	add    $0x4,%eax
 938:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 93b:	85 ff                	test   %edi,%edi
 93d:	0f 84 9d 00 00 00    	je     9e0 <printf+0x2a0>
        while(*s != 0){
 943:	0f b6 07             	movzbl (%edi),%eax
 946:	84 c0                	test   %al,%al
 948:	0f 84 a9 00 00 00    	je     9f7 <printf+0x2b7>
 94e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 951:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 954:	89 fb                	mov    %edi,%ebx
 956:	89 cf                	mov    %ecx,%edi
 958:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 95f:	00 
  write(fd, &c, 1);
 960:	83 ec 04             	sub    $0x4,%esp
 963:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 966:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 969:	6a 01                	push   $0x1
 96b:	57                   	push   %edi
 96c:	56                   	push   %esi
 96d:	e8 86 fc ff ff       	call   5f8 <write>
        while(*s != 0){
 972:	0f b6 03             	movzbl (%ebx),%eax
 975:	83 c4 10             	add    $0x10,%esp
 978:	84 c0                	test   %al,%al
 97a:	75 e4                	jne    960 <printf+0x220>
 97c:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 97f:	eb 8d                	jmp    90e <printf+0x1ce>
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 988:	8b 7d d0             	mov    -0x30(%ebp),%edi
 98b:	83 ec 0c             	sub    $0xc,%esp
 98e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 993:	8b 17                	mov    (%edi),%edx
 995:	6a 01                	push   $0x1
 997:	e9 73 fe ff ff       	jmp    80f <printf+0xcf>
 99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 9a0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 9a3:	83 ec 04             	sub    $0x4,%esp
 9a6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 9a9:	8b 07                	mov    (%edi),%eax
 9ab:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9ae:	6a 01                	push   $0x1
 9b0:	51                   	push   %ecx
 9b1:	56                   	push   %esi
 9b2:	e8 41 fc ff ff       	call   5f8 <write>
 9b7:	e9 5a fe ff ff       	jmp    816 <printf+0xd6>
 9bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9c0:	83 ec 04             	sub    $0x4,%esp
 9c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 9c6:	88 55 e7             	mov    %dl,-0x19(%ebp)
 9c9:	6a 01                	push   $0x1
 9cb:	51                   	push   %ecx
 9cc:	56                   	push   %esi
 9cd:	e8 26 fc ff ff       	call   5f8 <write>
 9d2:	e9 45 fe ff ff       	jmp    81c <printf+0xdc>
 9d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 9de:	00 
 9df:	90                   	nop
 9e0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 9e5:	bf cb 0b 00 00       	mov    $0xbcb,%edi
 9ea:	e9 5f ff ff ff       	jmp    94e <printf+0x20e>
 9ef:	90                   	nop
          fraction_part = -fraction_part;
 9f0:	d9 e0                	fchs
 9f2:	e9 77 fe ff ff       	jmp    86e <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 9f7:	83 c3 02             	add    $0x2,%ebx
 9fa:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 9fe:	84 c0                	test   %al,%al
 a00:	0f 85 5a fd ff ff    	jne    760 <printf+0x20>
 a06:	e9 80 fd ff ff       	jmp    78b <printf+0x4b>
 a0b:	66 90                	xchg   %ax,%ax
 a0d:	66 90                	xchg   %ax,%ax
 a0f:	66 90                	xchg   %ax,%ax
 a11:	66 90                	xchg   %ax,%ax
 a13:	66 90                	xchg   %ax,%ax
 a15:	66 90                	xchg   %ax,%ax
 a17:	66 90                	xchg   %ax,%ax
 a19:	66 90                	xchg   %ax,%ax
 a1b:	66 90                	xchg   %ax,%ax
 a1d:	66 90                	xchg   %ax,%ax
 a1f:	90                   	nop

00000a20 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a20:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a21:	a1 94 0f 00 00       	mov    0xf94,%eax
{
 a26:	89 e5                	mov    %esp,%ebp
 a28:	57                   	push   %edi
 a29:	56                   	push   %esi
 a2a:	53                   	push   %ebx
 a2b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a2e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a31:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a38:	00 
 a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a40:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a42:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a44:	39 ca                	cmp    %ecx,%edx
 a46:	73 30                	jae    a78 <free+0x58>
 a48:	39 c1                	cmp    %eax,%ecx
 a4a:	72 04                	jb     a50 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a4c:	39 c2                	cmp    %eax,%edx
 a4e:	72 f0                	jb     a40 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a50:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a53:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a56:	39 f8                	cmp    %edi,%eax
 a58:	74 36                	je     a90 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a5a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a5d:	8b 42 04             	mov    0x4(%edx),%eax
 a60:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a63:	39 f1                	cmp    %esi,%ecx
 a65:	74 40                	je     aa7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a67:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a69:	5b                   	pop    %ebx
  freep = p;
 a6a:	89 15 94 0f 00 00    	mov    %edx,0xf94
}
 a70:	5e                   	pop    %esi
 a71:	5f                   	pop    %edi
 a72:	5d                   	pop    %ebp
 a73:	c3                   	ret
 a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a78:	39 c2                	cmp    %eax,%edx
 a7a:	72 c4                	jb     a40 <free+0x20>
 a7c:	39 c1                	cmp    %eax,%ecx
 a7e:	73 c0                	jae    a40 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 a80:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a83:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a86:	39 f8                	cmp    %edi,%eax
 a88:	75 d0                	jne    a5a <free+0x3a>
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 a90:	03 70 04             	add    0x4(%eax),%esi
 a93:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a96:	8b 02                	mov    (%edx),%eax
 a98:	8b 00                	mov    (%eax),%eax
 a9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a9d:	8b 42 04             	mov    0x4(%edx),%eax
 aa0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 aa3:	39 f1                	cmp    %esi,%ecx
 aa5:	75 c0                	jne    a67 <free+0x47>
    p->s.size += bp->s.size;
 aa7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 aaa:	89 15 94 0f 00 00    	mov    %edx,0xf94
    p->s.size += bp->s.size;
 ab0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 ab3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ab6:	89 0a                	mov    %ecx,(%edx)
}
 ab8:	5b                   	pop    %ebx
 ab9:	5e                   	pop    %esi
 aba:	5f                   	pop    %edi
 abb:	5d                   	pop    %ebp
 abc:	c3                   	ret
 abd:	8d 76 00             	lea    0x0(%esi),%esi

00000ac0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ac0:	55                   	push   %ebp
 ac1:	89 e5                	mov    %esp,%ebp
 ac3:	57                   	push   %edi
 ac4:	56                   	push   %esi
 ac5:	53                   	push   %ebx
 ac6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ac9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 acc:	8b 15 94 0f 00 00    	mov    0xf94,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ad2:	8d 78 07             	lea    0x7(%eax),%edi
 ad5:	c1 ef 03             	shr    $0x3,%edi
 ad8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 adb:	85 d2                	test   %edx,%edx
 add:	0f 84 8d 00 00 00    	je     b70 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ae5:	8b 48 04             	mov    0x4(%eax),%ecx
 ae8:	39 f9                	cmp    %edi,%ecx
 aea:	73 64                	jae    b50 <malloc+0x90>
  if(nu < 4096)
 aec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 af1:	39 df                	cmp    %ebx,%edi
 af3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 af6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 afd:	eb 0a                	jmp    b09 <malloc+0x49>
 aff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b00:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b02:	8b 48 04             	mov    0x4(%eax),%ecx
 b05:	39 f9                	cmp    %edi,%ecx
 b07:	73 47                	jae    b50 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b09:	89 c2                	mov    %eax,%edx
 b0b:	39 05 94 0f 00 00    	cmp    %eax,0xf94
 b11:	75 ed                	jne    b00 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 b13:	83 ec 0c             	sub    $0xc,%esp
 b16:	56                   	push   %esi
 b17:	e8 44 fb ff ff       	call   660 <sbrk>
  if(p == (char*)-1)
 b1c:	83 c4 10             	add    $0x10,%esp
 b1f:	83 f8 ff             	cmp    $0xffffffff,%eax
 b22:	74 1c                	je     b40 <malloc+0x80>
  hp->s.size = nu;
 b24:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b27:	83 ec 0c             	sub    $0xc,%esp
 b2a:	83 c0 08             	add    $0x8,%eax
 b2d:	50                   	push   %eax
 b2e:	e8 ed fe ff ff       	call   a20 <free>
  return freep;
 b33:	8b 15 94 0f 00 00    	mov    0xf94,%edx
      if((p = morecore(nunits)) == 0)
 b39:	83 c4 10             	add    $0x10,%esp
 b3c:	85 d2                	test   %edx,%edx
 b3e:	75 c0                	jne    b00 <malloc+0x40>
        return 0;
  }
}
 b40:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b43:	31 c0                	xor    %eax,%eax
}
 b45:	5b                   	pop    %ebx
 b46:	5e                   	pop    %esi
 b47:	5f                   	pop    %edi
 b48:	5d                   	pop    %ebp
 b49:	c3                   	ret
 b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b50:	39 cf                	cmp    %ecx,%edi
 b52:	74 4c                	je     ba0 <malloc+0xe0>
        p->s.size -= nunits;
 b54:	29 f9                	sub    %edi,%ecx
 b56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b5c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 b5f:	89 15 94 0f 00 00    	mov    %edx,0xf94
}
 b65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b68:	83 c0 08             	add    $0x8,%eax
}
 b6b:	5b                   	pop    %ebx
 b6c:	5e                   	pop    %esi
 b6d:	5f                   	pop    %edi
 b6e:	5d                   	pop    %ebp
 b6f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 b70:	c7 05 94 0f 00 00 98 	movl   $0xf98,0xf94
 b77:	0f 00 00 
    base.s.size = 0;
 b7a:	b8 98 0f 00 00       	mov    $0xf98,%eax
    base.s.ptr = freep = prevp = &base;
 b7f:	c7 05 98 0f 00 00 98 	movl   $0xf98,0xf98
 b86:	0f 00 00 
    base.s.size = 0;
 b89:	c7 05 9c 0f 00 00 00 	movl   $0x0,0xf9c
 b90:	00 00 00 
    if(p->s.size >= nunits){
 b93:	e9 54 ff ff ff       	jmp    aec <malloc+0x2c>
 b98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b9f:	00 
        prevp->s.ptr = p->s.ptr;
 ba0:	8b 08                	mov    (%eax),%ecx
 ba2:	89 0a                	mov    %ecx,(%edx)
 ba4:	eb b9                	jmp    b5f <malloc+0x9f>
