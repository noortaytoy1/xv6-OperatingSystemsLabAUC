
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
   f:	83 ec 08             	sub    $0x8,%esp
  12:	6a 02                	push   $0x2
  14:	68 68 0b 00 00       	push   $0xb68
  19:	e8 ba 05 00 00       	call   5d8 <open>
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	0f 88 9f 00 00 00    	js     c8 <main+0xc8>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 dd 05 00 00       	call   610 <dup>
  dup(0);  // stderr
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 d1 05 00 00       	call   610 <dup>
  3f:	83 c4 10             	add    $0x10,%esp
  42:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  49:	00 
  4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(;;){
    printf(1, "init: starting sh\n");
  50:	83 ec 08             	sub    $0x8,%esp
  53:	68 70 0b 00 00       	push   $0xb70
  58:	6a 01                	push   $0x1
  5a:	e8 a1 06 00 00       	call   700 <printf>
    pid = fork();
  5f:	e8 2c 05 00 00       	call   590 <fork>
    if(pid < 0){
  64:	83 c4 10             	add    $0x10,%esp
    pid = fork();
  67:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  69:	85 c0                	test   %eax,%eax
  6b:	78 24                	js     91 <main+0x91>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  6d:	74 35                	je     a4 <main+0xa4>
  6f:	90                   	nop
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
  70:	e8 2b 05 00 00       	call   5a0 <wait>
  75:	85 c0                	test   %eax,%eax
  77:	78 d7                	js     50 <main+0x50>
  79:	39 c3                	cmp    %eax,%ebx
  7b:	74 d3                	je     50 <main+0x50>
      printf(1, "zombie!\n");
  7d:	83 ec 08             	sub    $0x8,%esp
  80:	68 af 0b 00 00       	push   $0xbaf
  85:	6a 01                	push   $0x1
  87:	e8 74 06 00 00       	call   700 <printf>
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	eb df                	jmp    70 <main+0x70>
      printf(1, "init: fork failed\n");
  91:	53                   	push   %ebx
  92:	53                   	push   %ebx
  93:	68 83 0b 00 00       	push   $0xb83
  98:	6a 01                	push   $0x1
  9a:	e8 61 06 00 00       	call   700 <printf>
      exit();
  9f:	e8 f4 04 00 00       	call   598 <exit>
      exec("sh", argv);
  a4:	50                   	push   %eax
  a5:	50                   	push   %eax
  a6:	68 74 0f 00 00       	push   $0xf74
  ab:	68 96 0b 00 00       	push   $0xb96
  b0:	e8 1b 05 00 00       	call   5d0 <exec>
      printf(1, "init: exec sh failed\n");
  b5:	5a                   	pop    %edx
  b6:	59                   	pop    %ecx
  b7:	68 99 0b 00 00       	push   $0xb99
  bc:	6a 01                	push   $0x1
  be:	e8 3d 06 00 00       	call   700 <printf>
      exit();
  c3:	e8 d0 04 00 00       	call   598 <exit>
    mknod("console", 1, 1);
  c8:	50                   	push   %eax
  c9:	6a 01                	push   $0x1
  cb:	6a 01                	push   $0x1
  cd:	68 68 0b 00 00       	push   $0xb68
  d2:	e8 09 05 00 00       	call   5e0 <mknod>
    open("console", O_RDWR);
  d7:	58                   	pop    %eax
  d8:	5a                   	pop    %edx
  d9:	6a 02                	push   $0x2
  db:	68 68 0b 00 00       	push   $0xb68
  e0:	e8 f3 04 00 00       	call   5d8 <open>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	e9 3c ff ff ff       	jmp    29 <main+0x29>
  ed:	66 90                	xchg   %ax,%ax
  ef:	66 90                	xchg   %ax,%ax
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 100:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 101:	31 c0                	xor    %eax,%eax
{
 103:	89 e5                	mov    %esp,%ebp
 105:	53                   	push   %ebx
 106:	8b 4d 08             	mov    0x8(%ebp),%ecx
 109:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 110:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 114:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 117:	83 c0 01             	add    $0x1,%eax
 11a:	84 d2                	test   %dl,%dl
 11c:	75 f2                	jne    110 <strcpy+0x10>
    ;
  return os;
}
 11e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 121:	89 c8                	mov    %ecx,%eax
 123:	c9                   	leave
 124:	c3                   	ret
 125:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12c:	00 
 12d:	8d 76 00             	lea    0x0(%esi),%esi

00000130 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	8b 55 08             	mov    0x8(%ebp),%edx
 137:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 13a:	0f b6 02             	movzbl (%edx),%eax
 13d:	84 c0                	test   %al,%al
 13f:	75 2f                	jne    170 <strcmp+0x40>
 141:	eb 4a                	jmp    18d <strcmp+0x5d>
 143:	eb 1b                	jmp    160 <strcmp+0x30>
 145:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14c:	00 
 14d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 154:	00 
 155:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 15c:	00 
 15d:	8d 76 00             	lea    0x0(%esi),%esi
 160:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 164:	83 c2 01             	add    $0x1,%edx
 167:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 16a:	84 c0                	test   %al,%al
 16c:	74 12                	je     180 <strcmp+0x50>
 16e:	89 d9                	mov    %ebx,%ecx
 170:	0f b6 19             	movzbl (%ecx),%ebx
 173:	38 c3                	cmp    %al,%bl
 175:	74 e9                	je     160 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 177:	29 d8                	sub    %ebx,%eax
}
 179:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 17c:	c9                   	leave
 17d:	c3                   	ret
 17e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 180:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 184:	31 c0                	xor    %eax,%eax
 186:	29 d8                	sub    %ebx,%eax
}
 188:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 18b:	c9                   	leave
 18c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 18d:	0f b6 19             	movzbl (%ecx),%ebx
 190:	31 c0                	xor    %eax,%eax
 192:	eb e3                	jmp    177 <strcmp+0x47>
 194:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 19b:	00 
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001a0 <strlen>:

uint
strlen(const char *s)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1a6:	80 3a 00             	cmpb   $0x0,(%edx)
 1a9:	74 15                	je     1c0 <strlen+0x20>
 1ab:	31 c0                	xor    %eax,%eax
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c0 01             	add    $0x1,%eax
 1b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1b7:	89 c1                	mov    %eax,%ecx
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
    ;
  return n;
}
 1bb:	89 c8                	mov    %ecx,%eax
 1bd:	5d                   	pop    %ebp
 1be:	c3                   	ret
 1bf:	90                   	nop
  for(n = 0; s[n]; n++)
 1c0:	31 c9                	xor    %ecx,%ecx
}
 1c2:	5d                   	pop    %ebp
 1c3:	89 c8                	mov    %ecx,%eax
 1c5:	c3                   	ret
 1c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cd:	00 
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1da:	8b 45 0c             	mov    0xc(%ebp),%eax
 1dd:	89 d7                	mov    %edx,%edi
 1df:	fc                   	cld
 1e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1e5:	89 d0                	mov    %edx,%eax
 1e7:	c9                   	leave
 1e8:	c3                   	ret
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001f0 <strchr>:

char*
strchr(const char *s, char c)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	75 1a                	jne    21b <strchr+0x2b>
 201:	eb 25                	jmp    228 <strchr+0x38>
 203:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20a:	00 
 20b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 210:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 214:	83 c0 01             	add    $0x1,%eax
 217:	84 d2                	test   %dl,%dl
 219:	74 0d                	je     228 <strchr+0x38>
    if(*s == c)
 21b:	38 d1                	cmp    %dl,%cl
 21d:	75 f1                	jne    210 <strchr+0x20>
      return (char*)s;
  return 0;
}
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret
 221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 228:	31 c0                	xor    %eax,%eax
}
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 235:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 238:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 239:	31 db                	xor    %ebx,%ebx
{
 23b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 23e:	eb 27                	jmp    267 <gets+0x37>
    cc = read(0, &c, 1);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	56                   	push   %esi
 246:	6a 00                	push   $0x0
 248:	e8 63 03 00 00       	call   5b0 <read>
    if(cc < 1)
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
      break;
    buf[i++] = c;
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 25f:	3c 0a                	cmp    $0xa,%al
 261:	74 10                	je     273 <gets+0x43>
 263:	3c 0d                	cmp    $0xd,%al
 265:	74 0c                	je     273 <gets+0x43>
  for(i=0; i+1 < max; ){
 267:	89 df                	mov    %ebx,%edi
 269:	83 c3 01             	add    $0x1,%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
 271:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 27a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27d:	5b                   	pop    %ebx
 27e:	5e                   	pop    %esi
 27f:	5f                   	pop    %edi
 280:	5d                   	pop    %ebp
 281:	c3                   	ret
 282:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 289:	00 
 28a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000290 <stat>:

int
stat(const char *n, struct stat *st)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 295:	83 ec 08             	sub    $0x8,%esp
 298:	6a 00                	push   $0x0
 29a:	ff 75 08             	push   0x8(%ebp)
 29d:	e8 36 03 00 00       	call   5d8 <open>
  if(fd < 0)
 2a2:	83 c4 10             	add    $0x10,%esp
 2a5:	85 c0                	test   %eax,%eax
 2a7:	78 27                	js     2d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2a9:	83 ec 08             	sub    $0x8,%esp
 2ac:	ff 75 0c             	push   0xc(%ebp)
 2af:	89 c3                	mov    %eax,%ebx
 2b1:	50                   	push   %eax
 2b2:	e8 39 03 00 00       	call   5f0 <fstat>
  close(fd);
 2b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ba:	89 c6                	mov    %eax,%esi
  close(fd);
 2bc:	e8 ff 02 00 00       	call   5c0 <close>
  return r;
 2c1:	83 c4 10             	add    $0x10,%esp
}
 2c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2c7:	89 f0                	mov    %esi,%eax
 2c9:	5b                   	pop    %ebx
 2ca:	5e                   	pop    %esi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2d5:	eb ed                	jmp    2c4 <stat+0x34>
 2d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2de:	00 
 2df:	90                   	nop

000002e0 <atoi>:

int
atoi(const char *s)
{
 2e0:	55                   	push   %ebp
 2e1:	b8 01 00 00 00       	mov    $0x1,%eax
 2e6:	89 e5                	mov    %esp,%ebp
 2e8:	56                   	push   %esi
 2e9:	8b 75 08             	mov    0x8(%ebp),%esi
 2ec:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 2ed:	0f be 16             	movsbl (%esi),%edx
 2f0:	80 fa 2d             	cmp    $0x2d,%dl
 2f3:	75 0c                	jne    301 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 2f5:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 2f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 2fe:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 301:	8d 4a d0             	lea    -0x30(%edx),%ecx
 304:	80 f9 09             	cmp    $0x9,%cl
 307:	77 37                	ja     340 <atoi+0x60>
  n = 0;
 309:	31 c9                	xor    %ecx,%ecx
 30b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 312:	00 
 313:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 31a:	00 
 31b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 320:	83 c6 01             	add    $0x1,%esi
 323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 326:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 32a:	0f be 16             	movsbl (%esi),%edx
 32d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 335:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 336:	0f af c1             	imul   %ecx,%eax
}
 339:	5e                   	pop    %esi
 33a:	5d                   	pop    %ebp
 33b:	c3                   	ret
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 340:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 341:	31 c0                	xor    %eax,%eax
}
 343:	5e                   	pop    %esi
 344:	5d                   	pop    %ebp
 345:	c3                   	ret
 346:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 34d:	00 
 34e:	66 90                	xchg   %ax,%ax

00000350 <atof>:

double atof(const char *s){
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
 355:	53                   	push   %ebx
 356:	83 ec 0c             	sub    $0xc,%esp
 359:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 35c:	0f b6 0a             	movzbl (%edx),%ecx
 35f:	80 f9 2d             	cmp    $0x2d,%cl
 362:	0f 84 28 01 00 00    	je     490 <atof+0x140>
  const char *integerPart = s;
 368:	89 d3                	mov    %edx,%ebx
 36a:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 36d:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 374:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 376:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 37b:	84 c9                	test   %cl,%cl
 37d:	75 2f                	jne    3ae <atof+0x5e>
 37f:	eb 7b                	jmp    3fc <atof+0xac>
 381:	eb 1d                	jmp    3a0 <atof+0x50>
 383:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 38a:	00 
 38b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 392:	00 
 393:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 39a:	00 
 39b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3a0:	0f b6 08             	movzbl (%eax),%ecx
 3a3:	84 c9                	test   %cl,%cl
 3a5:	0f 84 d5 00 00 00    	je     480 <atof+0x130>
 3ab:	83 c0 01             	add    $0x1,%eax
 3ae:	89 c2                	mov    %eax,%edx
    if(*s == c)
 3b0:	80 f9 2e             	cmp    $0x2e,%cl
 3b3:	75 eb                	jne    3a0 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 3b5:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 3b8:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 3ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3bd:	80 f9 09             	cmp    $0x9,%cl
 3c0:	77 3a                	ja     3fc <atof+0xac>
 3c2:	eb 1c                	jmp    3e0 <atof+0x90>
 3c4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cb:	00 
 3cc:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3d3:	00 
 3d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3db:	00 
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 3e0:	83 e8 30             	sub    $0x30,%eax
 3e3:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 3e6:	83 c3 01             	add    $0x1,%ebx
 3e9:	0f be c0             	movsbl %al,%eax
 3ec:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 3ef:	0f b6 03             	movzbl (%ebx),%eax
 3f2:	8d 70 d0             	lea    -0x30(%eax),%esi
 3f5:	89 f1                	mov    %esi,%ecx
 3f7:	80 f9 09             	cmp    $0x9,%cl
 3fa:	76 e4                	jbe    3e0 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 3fc:	0f b6 02             	movzbl (%edx),%eax
 3ff:	8d 58 d0             	lea    -0x30(%eax),%ebx
 402:	80 fb 09             	cmp    $0x9,%bl
 405:	0f 87 9d 00 00 00    	ja     4a8 <atof+0x158>
  double divisor = 10.0;   
 40b:	d9 05 c0 0b 00 00    	flds   0xbc0
  double fraction = 0.0;  
 411:	d9 ee                	fldz
 413:	eb 2d                	jmp    442 <atof+0xf2>
 415:	eb 29                	jmp    440 <atof+0xf0>
 417:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41e:	00 
 41f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 426:	00 
 427:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 42e:	00 
 42f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 436:	00 
 437:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43e:	00 
 43f:	90                   	nop
 440:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 442:	83 e8 30             	sub    $0x30,%eax
 445:	83 c2 01             	add    $0x1,%edx
 448:	66 98                	cbtw
 44a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 44e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 451:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 454:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 456:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 459:	de c1                	faddp  %st,%st(1)
 45b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 45d:	d8 0d c0 0b 00 00    	fmuls  0xbc0
  while('0' <= *fractionPart && *fractionPart <= '9'){
 463:	80 fb 09             	cmp    $0x9,%bl
 466:	76 d8                	jbe    440 <atof+0xf0>
 468:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 46a:	89 7d ec             	mov    %edi,-0x14(%ebp)
 46d:	db 45 ec             	fildl  -0x14(%ebp)
 470:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 472:	db 45 e8             	fildl  -0x18(%ebp)
}
 475:	83 c4 0c             	add    $0xc,%esp
 478:	5b                   	pop    %ebx
 479:	5e                   	pop    %esi
 47a:	5f                   	pop    %edi
 47b:	5d                   	pop    %ebp
  return sign*answer;
 47c:	de c9                	fmulp  %st,%st(1)
}
 47e:	c3                   	ret
 47f:	90                   	nop
 480:	ba 01 00 00 00       	mov    $0x1,%edx
 485:	e9 2b ff ff ff       	jmp    3b5 <atof+0x65>
 48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 490:	8d 42 01             	lea    0x1(%edx),%eax
 493:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 49a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 49c:	e9 0d ff ff ff       	jmp    3ae <atof+0x5e>
 4a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 4a8:	d9 ee                	fldz
 4aa:	eb be                	jmp    46a <atof+0x11a>
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	8b 45 10             	mov    0x10(%ebp),%eax
 4b7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ba:	56                   	push   %esi
 4bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4be:	85 c0                	test   %eax,%eax
 4c0:	7e 13                	jle    4d5 <memmove+0x25>
 4c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4c4:	89 d7                	mov    %edx,%edi
 4c6:	66 90                	xchg   %ax,%ax
 4c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4cf:	00 
    *dst++ = *src++;
 4d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4d1:	39 f8                	cmp    %edi,%eax
 4d3:	75 fb                	jne    4d0 <memmove+0x20>
  return vdst;
}
 4d5:	5e                   	pop    %esi
 4d6:	89 d0                	mov    %edx,%eax
 4d8:	5f                   	pop    %edi
 4d9:	5d                   	pop    %ebp
 4da:	c3                   	ret
 4db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000004e0 <fsqrt>:

double fsqrt(double n) {
 4e0:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 4e1:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 4eb:	d9 c0                	fld    %st(0)
 4ed:	d8 0d c4 0b 00 00    	fmuls  0xbc4
    for (int i = 0; i < 20; i++) {
 4f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4fa:	00 
 4fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 500:	d9 c1                	fld    %st(1)
 502:	d8 f1                	fdiv   %st(1),%st
 504:	de c1                	faddp  %st,%st(1)
 506:	d8 0d c4 0b 00 00    	fmuls  0xbc4
    for (int i = 0; i < 20; i++) {
 50c:	83 e8 01             	sub    $0x1,%eax
 50f:	75 ef                	jne    500 <fsqrt+0x20>
 511:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 513:	5d                   	pop    %ebp
 514:	c3                   	ret
 515:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 51c:	00 
 51d:	8d 76 00             	lea    0x0(%esi),%esi

00000520 <insertionSort>:

void insertionSort(double arr[], int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	8b 7d 0c             	mov    0xc(%ebp),%edi
 527:	56                   	push   %esi
 528:	8b 75 08             	mov    0x8(%ebp),%esi
 52b:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 52c:	83 ff 01             	cmp    $0x1,%edi
 52f:	7e 5a                	jle    58b <insertionSort+0x6b>
 531:	bb 01 00 00 00       	mov    $0x1,%ebx
 536:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 53d:	00 
 53e:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 540:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 543:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 546:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 549:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 550:	00 
 551:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 558:	00 
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 560:	dd 40 f8             	fldl   -0x8(%eax)
 563:	89 c1                	mov    %eax,%ecx
 565:	db f1                	fcomi  %st(1),%st
 567:	76 17                	jbe    580 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 569:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 56c:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 56e:	8d 41 f8             	lea    -0x8(%ecx),%eax
 571:	83 fa ff             	cmp    $0xffffffff,%edx
 574:	75 ea                	jne    560 <insertionSort+0x40>
 576:	89 f1                	mov    %esi,%ecx
 578:	eb 08                	jmp    582 <insertionSort+0x62>
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 580:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 582:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 585:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 587:	39 df                	cmp    %ebx,%edi
 589:	75 b5                	jne    540 <insertionSort+0x20>
    }
    
 58b:	5b                   	pop    %ebx
 58c:	5e                   	pop    %esi
 58d:	5f                   	pop    %edi
 58e:	5d                   	pop    %ebp
 58f:	c3                   	ret

00000590 <fork>:
 590:	b8 01 00 00 00       	mov    $0x1,%eax
 595:	cd 40                	int    $0x40
 597:	c3                   	ret

00000598 <exit>:
 598:	b8 02 00 00 00       	mov    $0x2,%eax
 59d:	cd 40                	int    $0x40
 59f:	c3                   	ret

000005a0 <wait>:
 5a0:	b8 03 00 00 00       	mov    $0x3,%eax
 5a5:	cd 40                	int    $0x40
 5a7:	c3                   	ret

000005a8 <pipe>:
 5a8:	b8 04 00 00 00       	mov    $0x4,%eax
 5ad:	cd 40                	int    $0x40
 5af:	c3                   	ret

000005b0 <read>:
 5b0:	b8 05 00 00 00       	mov    $0x5,%eax
 5b5:	cd 40                	int    $0x40
 5b7:	c3                   	ret

000005b8 <write>:
 5b8:	b8 10 00 00 00       	mov    $0x10,%eax
 5bd:	cd 40                	int    $0x40
 5bf:	c3                   	ret

000005c0 <close>:
 5c0:	b8 15 00 00 00       	mov    $0x15,%eax
 5c5:	cd 40                	int    $0x40
 5c7:	c3                   	ret

000005c8 <kill>:
 5c8:	b8 06 00 00 00       	mov    $0x6,%eax
 5cd:	cd 40                	int    $0x40
 5cf:	c3                   	ret

000005d0 <exec>:
 5d0:	b8 07 00 00 00       	mov    $0x7,%eax
 5d5:	cd 40                	int    $0x40
 5d7:	c3                   	ret

000005d8 <open>:
 5d8:	b8 0f 00 00 00       	mov    $0xf,%eax
 5dd:	cd 40                	int    $0x40
 5df:	c3                   	ret

000005e0 <mknod>:
 5e0:	b8 11 00 00 00       	mov    $0x11,%eax
 5e5:	cd 40                	int    $0x40
 5e7:	c3                   	ret

000005e8 <unlink>:
 5e8:	b8 12 00 00 00       	mov    $0x12,%eax
 5ed:	cd 40                	int    $0x40
 5ef:	c3                   	ret

000005f0 <fstat>:
 5f0:	b8 08 00 00 00       	mov    $0x8,%eax
 5f5:	cd 40                	int    $0x40
 5f7:	c3                   	ret

000005f8 <link>:
 5f8:	b8 13 00 00 00       	mov    $0x13,%eax
 5fd:	cd 40                	int    $0x40
 5ff:	c3                   	ret

00000600 <mkdir>:
 600:	b8 14 00 00 00       	mov    $0x14,%eax
 605:	cd 40                	int    $0x40
 607:	c3                   	ret

00000608 <chdir>:
 608:	b8 09 00 00 00       	mov    $0x9,%eax
 60d:	cd 40                	int    $0x40
 60f:	c3                   	ret

00000610 <dup>:
 610:	b8 0a 00 00 00       	mov    $0xa,%eax
 615:	cd 40                	int    $0x40
 617:	c3                   	ret

00000618 <getpid>:
 618:	b8 0b 00 00 00       	mov    $0xb,%eax
 61d:	cd 40                	int    $0x40
 61f:	c3                   	ret

00000620 <sbrk>:
 620:	b8 0c 00 00 00       	mov    $0xc,%eax
 625:	cd 40                	int    $0x40
 627:	c3                   	ret

00000628 <sleep>:
 628:	b8 0d 00 00 00       	mov    $0xd,%eax
 62d:	cd 40                	int    $0x40
 62f:	c3                   	ret

00000630 <uptime>:
 630:	b8 0e 00 00 00       	mov    $0xe,%eax
 635:	cd 40                	int    $0x40
 637:	c3                   	ret
 638:	66 90                	xchg   %ax,%ax
 63a:	66 90                	xchg   %ax,%ax
 63c:	66 90                	xchg   %ax,%ax
 63e:	66 90                	xchg   %ax,%ax

00000640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
 646:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 648:	89 d1                	mov    %edx,%ecx
{
 64a:	83 ec 3c             	sub    $0x3c,%esp
 64d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 650:	85 d2                	test   %edx,%edx
 652:	0f 89 98 00 00 00    	jns    6f0 <printint+0xb0>
 658:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 65c:	0f 84 8e 00 00 00    	je     6f0 <printint+0xb0>
    x = -xx;
 662:	f7 d9                	neg    %ecx
    neg = 1;
 664:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 669:	89 45 c0             	mov    %eax,-0x40(%ebp)
 66c:	31 f6                	xor    %esi,%esi
 66e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 675:	00 
 676:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 67d:	00 
 67e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 680:	89 c8                	mov    %ecx,%eax
 682:	31 d2                	xor    %edx,%edx
 684:	89 f7                	mov    %esi,%edi
 686:	f7 f3                	div    %ebx
 688:	8d 76 01             	lea    0x1(%esi),%esi
 68b:	0f b6 92 20 0c 00 00 	movzbl 0xc20(%edx),%edx
 692:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 696:	89 ca                	mov    %ecx,%edx
 698:	89 c1                	mov    %eax,%ecx
 69a:	39 da                	cmp    %ebx,%edx
 69c:	73 e2                	jae    680 <printint+0x40>
  if(neg)
 69e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 6a1:	85 c0                	test   %eax,%eax
 6a3:	74 07                	je     6ac <printint+0x6c>
    buf[i++] = '-';
 6a5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 6aa:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 6ac:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 6af:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 6b2:	01 df                	add    %ebx,%edi
 6b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6bb:	00 
 6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 6c0:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 6c3:	83 ec 04             	sub    $0x4,%esp
 6c6:	88 45 d7             	mov    %al,-0x29(%ebp)
 6c9:	8d 45 d7             	lea    -0x29(%ebp),%eax
 6cc:	6a 01                	push   $0x1
 6ce:	50                   	push   %eax
 6cf:	56                   	push   %esi
 6d0:	e8 e3 fe ff ff       	call   5b8 <write>
  while(--i >= 0)
 6d5:	89 f8                	mov    %edi,%eax
 6d7:	83 c4 10             	add    $0x10,%esp
 6da:	83 ef 01             	sub    $0x1,%edi
 6dd:	39 d8                	cmp    %ebx,%eax
 6df:	75 df                	jne    6c0 <printint+0x80>
}
 6e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e4:	5b                   	pop    %ebx
 6e5:	5e                   	pop    %esi
 6e6:	5f                   	pop    %edi
 6e7:	5d                   	pop    %ebp
 6e8:	c3                   	ret
 6e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6f0:	31 c0                	xor    %eax,%eax
 6f2:	e9 72 ff ff ff       	jmp    669 <printint+0x29>
 6f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fe:	00 
 6ff:	90                   	nop

00000700 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 705:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 708:	53                   	push   %ebx
 709:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 70c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 70f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 712:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 715:	0f b6 01             	movzbl (%ecx),%eax
 718:	84 c0                	test   %al,%al
 71a:	74 2f                	je     74b <printf+0x4b>
 71c:	31 db                	xor    %ebx,%ebx
 71e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 720:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 723:	83 fa 25             	cmp    $0x25,%edx
 726:	74 30                	je     758 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 728:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 72b:	83 ec 04             	sub    $0x4,%esp
 72e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 731:	6a 01                	push   $0x1
 733:	50                   	push   %eax
 734:	56                   	push   %esi
 735:	e8 7e fe ff ff       	call   5b8 <write>
        putc(fd, c);
 73a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 73d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 740:	83 c3 01             	add    $0x1,%ebx
 743:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 747:	84 c0                	test   %al,%al
 749:	75 d5                	jne    720 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 74b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74e:	5b                   	pop    %ebx
 74f:	5e                   	pop    %esi
 750:	5f                   	pop    %edi
 751:	5d                   	pop    %ebp
 752:	c3                   	ret
 753:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 758:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 75d:	8d 7b 01             	lea    0x1(%ebx),%edi
 760:	84 d2                	test   %dl,%dl
 762:	74 e7                	je     74b <printf+0x4b>
    c = fmt[i] & 0xff;
 764:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 767:	80 fa 25             	cmp    $0x25,%dl
 76a:	0f 84 10 02 00 00    	je     980 <printf+0x280>
 770:	83 e8 63             	sub    $0x63,%eax
 773:	83 f8 15             	cmp    $0x15,%eax
 776:	77 08                	ja     780 <printf+0x80>
 778:	ff 24 85 c8 0b 00 00 	jmp    *0xbc8(,%eax,4)
 77f:	90                   	nop
  write(fd, &c, 1);
 780:	83 ec 04             	sub    $0x4,%esp
 783:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 786:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 789:	89 fb                	mov    %edi,%ebx
 78b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 78f:	6a 01                	push   $0x1
 791:	51                   	push   %ecx
 792:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 795:	56                   	push   %esi
 796:	e8 1d fe ff ff       	call   5b8 <write>
        putc(fd, c);
 79b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 79f:	83 c4 0c             	add    $0xc,%esp
 7a2:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7a5:	6a 01                	push   $0x1
 7a7:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 7aa:	51                   	push   %ecx
 7ab:	56                   	push   %esi
 7ac:	e8 07 fe ff ff       	call   5b8 <write>
        putc(fd, c);
 7b1:	83 c4 10             	add    $0x10,%esp
 7b4:	eb 87                	jmp    73d <printf+0x3d>
 7b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7bd:	00 
 7be:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 7c0:	8b 7d d0             	mov    -0x30(%ebp),%edi
 7c3:	83 ec 0c             	sub    $0xc,%esp
 7c6:	b9 10 00 00 00       	mov    $0x10,%ecx
 7cb:	8b 17                	mov    (%edi),%edx
 7cd:	6a 00                	push   $0x0
 7cf:	89 f0                	mov    %esi,%eax
 7d1:	e8 6a fe ff ff       	call   640 <printint>
        ap++;
 7d6:	83 c7 04             	add    $0x4,%edi
 7d9:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 7dc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 7df:	83 c3 02             	add    $0x2,%ebx
 7e2:	83 c4 10             	add    $0x10,%esp
 7e5:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 7e9:	84 c0                	test   %al,%al
 7eb:	0f 85 2f ff ff ff    	jne    720 <printf+0x20>
}
 7f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7f4:	5b                   	pop    %ebx
 7f5:	5e                   	pop    %esi
 7f6:	5f                   	pop    %edi
 7f7:	5d                   	pop    %ebp
 7f8:	c3                   	ret
 7f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 800:	8b 45 d0             	mov    -0x30(%ebp),%eax
 803:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 805:	d9 7d d6             	fnstcw -0x2a(%ebp)
 808:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 80c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 80f:	80 cc 0c             	or     $0xc,%ah
 812:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 816:	d9 6d d4             	fldcw  -0x2c(%ebp)
 819:	db 55 c0             	fistl  -0x40(%ebp)
 81c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 81f:	db 45 c0             	fildl  -0x40(%ebp)
 822:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 824:	d9 ee                	fldz
 826:	df f1                	fcomip %st(1),%st
 828:	0f 87 82 01 00 00    	ja     9b0 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 82e:	83 ec 0c             	sub    $0xc,%esp
 831:	dd 5d b0             	fstpl  -0x50(%ebp)
 834:	b9 0a 00 00 00       	mov    $0xa,%ecx
 839:	89 f0                	mov    %esi,%eax
 83b:	6a 01                	push   $0x1
 83d:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 840:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 845:	e8 f6 fd ff ff       	call   640 <printint>
  write(fd, &c, 1);
 84a:	83 c4 0c             	add    $0xc,%esp
 84d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 850:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 854:	6a 01                	push   $0x1
 856:	51                   	push   %ecx
 857:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 85a:	56                   	push   %esi
 85b:	e8 58 fd ff ff       	call   5b8 <write>
        putc(fd, '.'); //adds the decimal point
 860:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 863:	83 c4 10             	add    $0x10,%esp
 866:	dd 45 b0             	fldl   -0x50(%ebp)
 869:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 86c:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 86f:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 872:	d8 0d c0 0b 00 00    	fmuls  0xbc0
          int digit = (int) fraction_part;
 878:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 87c:	80 cc 0c             	or     $0xc,%ah
 87f:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 883:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 888:	d9 6d d4             	fldcw  -0x2c(%ebp)
 88b:	db 55 c8             	fistl  -0x38(%ebp)
 88e:	d9 6d d6             	fldcw  -0x2a(%ebp)
 891:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 894:	39 c3                	cmp    %eax,%ebx
 896:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 899:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 89c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 89f:	8d 43 30             	lea    0x30(%ebx),%eax
 8a2:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8a5:	6a 01                	push   $0x1
 8a7:	ff 75 bc             	push   -0x44(%ebp)
 8aa:	56                   	push   %esi
 8ab:	e8 08 fd ff ff       	call   5b8 <write>
          fraction_part -= digit;
 8b0:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 8b3:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 8b6:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 8b9:	dd 45 c0             	fldl   -0x40(%ebp)
 8bc:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 8be:	83 ef 01             	sub    $0x1,%edi
 8c1:	75 ac                	jne    86f <printf+0x16f>
 8c3:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 8c5:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8c8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 8cb:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 8ce:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8d1:	83 c3 02             	add    $0x2,%ebx
 8d4:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 8d8:	84 c0                	test   %al,%al
 8da:	0f 85 40 fe ff ff    	jne    720 <printf+0x20>
}
 8e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8e3:	5b                   	pop    %ebx
 8e4:	5e                   	pop    %esi
 8e5:	5f                   	pop    %edi
 8e6:	5d                   	pop    %ebp
 8e7:	c3                   	ret
 8e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8ef:	00 
        s = (char*)*ap;
 8f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8f3:	8b 38                	mov    (%eax),%edi
        ap++;
 8f5:	83 c0 04             	add    $0x4,%eax
 8f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8fb:	85 ff                	test   %edi,%edi
 8fd:	0f 84 9d 00 00 00    	je     9a0 <printf+0x2a0>
        while(*s != 0){
 903:	0f b6 07             	movzbl (%edi),%eax
 906:	84 c0                	test   %al,%al
 908:	0f 84 a9 00 00 00    	je     9b7 <printf+0x2b7>
 90e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 911:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 914:	89 fb                	mov    %edi,%ebx
 916:	89 cf                	mov    %ecx,%edi
 918:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 91f:	00 
  write(fd, &c, 1);
 920:	83 ec 04             	sub    $0x4,%esp
 923:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 926:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 929:	6a 01                	push   $0x1
 92b:	57                   	push   %edi
 92c:	56                   	push   %esi
 92d:	e8 86 fc ff ff       	call   5b8 <write>
        while(*s != 0){
 932:	0f b6 03             	movzbl (%ebx),%eax
 935:	83 c4 10             	add    $0x10,%esp
 938:	84 c0                	test   %al,%al
 93a:	75 e4                	jne    920 <printf+0x220>
 93c:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 93f:	eb 8d                	jmp    8ce <printf+0x1ce>
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 948:	8b 7d d0             	mov    -0x30(%ebp),%edi
 94b:	83 ec 0c             	sub    $0xc,%esp
 94e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 953:	8b 17                	mov    (%edi),%edx
 955:	6a 01                	push   $0x1
 957:	e9 73 fe ff ff       	jmp    7cf <printf+0xcf>
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 960:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 963:	83 ec 04             	sub    $0x4,%esp
 966:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 969:	8b 07                	mov    (%edi),%eax
 96b:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 96e:	6a 01                	push   $0x1
 970:	51                   	push   %ecx
 971:	56                   	push   %esi
 972:	e8 41 fc ff ff       	call   5b8 <write>
 977:	e9 5a fe ff ff       	jmp    7d6 <printf+0xd6>
 97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 980:	83 ec 04             	sub    $0x4,%esp
 983:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 986:	88 55 e7             	mov    %dl,-0x19(%ebp)
 989:	6a 01                	push   $0x1
 98b:	51                   	push   %ecx
 98c:	56                   	push   %esi
 98d:	e8 26 fc ff ff       	call   5b8 <write>
 992:	e9 45 fe ff ff       	jmp    7dc <printf+0xdc>
 997:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 99e:	00 
 99f:	90                   	nop
 9a0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 9a5:	bf b8 0b 00 00       	mov    $0xbb8,%edi
 9aa:	e9 5f ff ff ff       	jmp    90e <printf+0x20e>
 9af:	90                   	nop
          fraction_part = -fraction_part;
 9b0:	d9 e0                	fchs
 9b2:	e9 77 fe ff ff       	jmp    82e <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 9b7:	83 c3 02             	add    $0x2,%ebx
 9ba:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 9be:	84 c0                	test   %al,%al
 9c0:	0f 85 5a fd ff ff    	jne    720 <printf+0x20>
 9c6:	e9 80 fd ff ff       	jmp    74b <printf+0x4b>
 9cb:	66 90                	xchg   %ax,%ax
 9cd:	66 90                	xchg   %ax,%ax
 9cf:	66 90                	xchg   %ax,%ax
 9d1:	66 90                	xchg   %ax,%ax
 9d3:	66 90                	xchg   %ax,%ax
 9d5:	66 90                	xchg   %ax,%ax
 9d7:	66 90                	xchg   %ax,%ax
 9d9:	66 90                	xchg   %ax,%ax
 9db:	66 90                	xchg   %ax,%ax
 9dd:	66 90                	xchg   %ax,%ax
 9df:	90                   	nop

000009e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e1:	a1 7c 0f 00 00       	mov    0xf7c,%eax
{
 9e6:	89 e5                	mov    %esp,%ebp
 9e8:	57                   	push   %edi
 9e9:	56                   	push   %esi
 9ea:	53                   	push   %ebx
 9eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 9f8:	00 
 9f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a00:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a02:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a04:	39 ca                	cmp    %ecx,%edx
 a06:	73 30                	jae    a38 <free+0x58>
 a08:	39 c1                	cmp    %eax,%ecx
 a0a:	72 04                	jb     a10 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a0c:	39 c2                	cmp    %eax,%edx
 a0e:	72 f0                	jb     a00 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a10:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a13:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a16:	39 f8                	cmp    %edi,%eax
 a18:	74 36                	je     a50 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a1a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a1d:	8b 42 04             	mov    0x4(%edx),%eax
 a20:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a23:	39 f1                	cmp    %esi,%ecx
 a25:	74 40                	je     a67 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a27:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a29:	5b                   	pop    %ebx
  freep = p;
 a2a:	89 15 7c 0f 00 00    	mov    %edx,0xf7c
}
 a30:	5e                   	pop    %esi
 a31:	5f                   	pop    %edi
 a32:	5d                   	pop    %ebp
 a33:	c3                   	ret
 a34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a38:	39 c2                	cmp    %eax,%edx
 a3a:	72 c4                	jb     a00 <free+0x20>
 a3c:	39 c1                	cmp    %eax,%ecx
 a3e:	73 c0                	jae    a00 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 a40:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a43:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a46:	39 f8                	cmp    %edi,%eax
 a48:	75 d0                	jne    a1a <free+0x3a>
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 a50:	03 70 04             	add    0x4(%eax),%esi
 a53:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a56:	8b 02                	mov    (%edx),%eax
 a58:	8b 00                	mov    (%eax),%eax
 a5a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a5d:	8b 42 04             	mov    0x4(%edx),%eax
 a60:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a63:	39 f1                	cmp    %esi,%ecx
 a65:	75 c0                	jne    a27 <free+0x47>
    p->s.size += bp->s.size;
 a67:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a6a:	89 15 7c 0f 00 00    	mov    %edx,0xf7c
    p->s.size += bp->s.size;
 a70:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a73:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a76:	89 0a                	mov    %ecx,(%edx)
}
 a78:	5b                   	pop    %ebx
 a79:	5e                   	pop    %esi
 a7a:	5f                   	pop    %edi
 a7b:	5d                   	pop    %ebp
 a7c:	c3                   	ret
 a7d:	8d 76 00             	lea    0x0(%esi),%esi

00000a80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a80:	55                   	push   %ebp
 a81:	89 e5                	mov    %esp,%ebp
 a83:	57                   	push   %edi
 a84:	56                   	push   %esi
 a85:	53                   	push   %ebx
 a86:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a8c:	8b 15 7c 0f 00 00    	mov    0xf7c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a92:	8d 78 07             	lea    0x7(%eax),%edi
 a95:	c1 ef 03             	shr    $0x3,%edi
 a98:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a9b:	85 d2                	test   %edx,%edx
 a9d:	0f 84 8d 00 00 00    	je     b30 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aa5:	8b 48 04             	mov    0x4(%eax),%ecx
 aa8:	39 f9                	cmp    %edi,%ecx
 aaa:	73 64                	jae    b10 <malloc+0x90>
  if(nu < 4096)
 aac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ab1:	39 df                	cmp    %ebx,%edi
 ab3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 ab6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 abd:	eb 0a                	jmp    ac9 <malloc+0x49>
 abf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ac2:	8b 48 04             	mov    0x4(%eax),%ecx
 ac5:	39 f9                	cmp    %edi,%ecx
 ac7:	73 47                	jae    b10 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ac9:	89 c2                	mov    %eax,%edx
 acb:	39 05 7c 0f 00 00    	cmp    %eax,0xf7c
 ad1:	75 ed                	jne    ac0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 ad3:	83 ec 0c             	sub    $0xc,%esp
 ad6:	56                   	push   %esi
 ad7:	e8 44 fb ff ff       	call   620 <sbrk>
  if(p == (char*)-1)
 adc:	83 c4 10             	add    $0x10,%esp
 adf:	83 f8 ff             	cmp    $0xffffffff,%eax
 ae2:	74 1c                	je     b00 <malloc+0x80>
  hp->s.size = nu;
 ae4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ae7:	83 ec 0c             	sub    $0xc,%esp
 aea:	83 c0 08             	add    $0x8,%eax
 aed:	50                   	push   %eax
 aee:	e8 ed fe ff ff       	call   9e0 <free>
  return freep;
 af3:	8b 15 7c 0f 00 00    	mov    0xf7c,%edx
      if((p = morecore(nunits)) == 0)
 af9:	83 c4 10             	add    $0x10,%esp
 afc:	85 d2                	test   %edx,%edx
 afe:	75 c0                	jne    ac0 <malloc+0x40>
        return 0;
  }
}
 b00:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b03:	31 c0                	xor    %eax,%eax
}
 b05:	5b                   	pop    %ebx
 b06:	5e                   	pop    %esi
 b07:	5f                   	pop    %edi
 b08:	5d                   	pop    %ebp
 b09:	c3                   	ret
 b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b10:	39 cf                	cmp    %ecx,%edi
 b12:	74 4c                	je     b60 <malloc+0xe0>
        p->s.size -= nunits;
 b14:	29 f9                	sub    %edi,%ecx
 b16:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b19:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b1c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 b1f:	89 15 7c 0f 00 00    	mov    %edx,0xf7c
}
 b25:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b28:	83 c0 08             	add    $0x8,%eax
}
 b2b:	5b                   	pop    %ebx
 b2c:	5e                   	pop    %esi
 b2d:	5f                   	pop    %edi
 b2e:	5d                   	pop    %ebp
 b2f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 b30:	c7 05 7c 0f 00 00 80 	movl   $0xf80,0xf7c
 b37:	0f 00 00 
    base.s.size = 0;
 b3a:	b8 80 0f 00 00       	mov    $0xf80,%eax
    base.s.ptr = freep = prevp = &base;
 b3f:	c7 05 80 0f 00 00 80 	movl   $0xf80,0xf80
 b46:	0f 00 00 
    base.s.size = 0;
 b49:	c7 05 84 0f 00 00 00 	movl   $0x0,0xf84
 b50:	00 00 00 
    if(p->s.size >= nunits){
 b53:	e9 54 ff ff ff       	jmp    aac <malloc+0x2c>
 b58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b5f:	00 
        prevp->s.ptr = p->s.ptr;
 b60:	8b 08                	mov    (%eax),%ecx
 b62:	89 0a                	mov    %ecx,(%edx)
 b64:	eb b9                	jmp    b1f <malloc+0x9f>
