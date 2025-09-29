
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	bf 01 00 00 00       	mov    $0x1,%edi
  13:	56                   	push   %esi
  14:	53                   	push   %ebx
  15:	51                   	push   %ecx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 59 04             	mov    0x4(%ecx),%ebx
  1c:	8b 31                	mov    (%ecx),%esi
  1e:	83 c3 04             	add    $0x4,%ebx
  int i;

  if(argc < 2){
  21:	83 fe 01             	cmp    $0x1,%esi
  24:	7e 3e                	jle    64 <main+0x64>
  26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  2d:	00 
  2e:	66 90                	xchg   %ax,%ax
    printf(2, "Usage: rm files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	ff 33                	push   (%ebx)
  35:	e8 2e 05 00 00       	call   568 <unlink>
  3a:	83 c4 10             	add    $0x10,%esp
  3d:	85 c0                	test   %eax,%eax
  3f:	78 0f                	js     50 <main+0x50>
  for(i = 1; i < argc; i++){
  41:	83 c7 01             	add    $0x1,%edi
  44:	83 c3 04             	add    $0x4,%ebx
  47:	39 fe                	cmp    %edi,%esi
  49:	75 e5                	jne    30 <main+0x30>
      printf(2, "rm: %s failed to delete\n", argv[i]);
      break;
    }
  }

  exit();
  4b:	e8 c8 04 00 00       	call   518 <exit>
      printf(2, "rm: %s failed to delete\n", argv[i]);
  50:	50                   	push   %eax
  51:	ff 33                	push   (%ebx)
  53:	68 fc 0a 00 00       	push   $0xafc
  58:	6a 02                	push   $0x2
  5a:	e8 21 06 00 00       	call   680 <printf>
      break;
  5f:	83 c4 10             	add    $0x10,%esp
  62:	eb e7                	jmp    4b <main+0x4b>
    printf(2, "Usage: rm files...\n");
  64:	52                   	push   %edx
  65:	52                   	push   %edx
  66:	68 e8 0a 00 00       	push   $0xae8
  6b:	6a 02                	push   $0x2
  6d:	e8 0e 06 00 00       	call   680 <printf>
    exit();
  72:	e8 a1 04 00 00       	call   518 <exit>
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  80:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  81:	31 c0                	xor    %eax,%eax
{
  83:	89 e5                	mov    %esp,%ebp
  85:	53                   	push   %ebx
  86:	8b 4d 08             	mov    0x8(%ebp),%ecx
  89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  90:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  94:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  97:	83 c0 01             	add    $0x1,%eax
  9a:	84 d2                	test   %dl,%dl
  9c:	75 f2                	jne    90 <strcpy+0x10>
    ;
  return os;
}
  9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  a1:	89 c8                	mov    %ecx,%eax
  a3:	c9                   	leave
  a4:	c3                   	ret
  a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ac:	00 
  ad:	8d 76 00             	lea    0x0(%esi),%esi

000000b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	53                   	push   %ebx
  b4:	8b 55 08             	mov    0x8(%ebp),%edx
  b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  ba:	0f b6 02             	movzbl (%edx),%eax
  bd:	84 c0                	test   %al,%al
  bf:	75 2f                	jne    f0 <strcmp+0x40>
  c1:	eb 4a                	jmp    10d <strcmp+0x5d>
  c3:	eb 1b                	jmp    e0 <strcmp+0x30>
  c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  cc:	00 
  cd:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  d4:	00 
  d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  dc:	00 
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  e0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  e4:	83 c2 01             	add    $0x1,%edx
  e7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  ea:	84 c0                	test   %al,%al
  ec:	74 12                	je     100 <strcmp+0x50>
  ee:	89 d9                	mov    %ebx,%ecx
  f0:	0f b6 19             	movzbl (%ecx),%ebx
  f3:	38 c3                	cmp    %al,%bl
  f5:	74 e9                	je     e0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
  f7:	29 d8                	sub    %ebx,%eax
}
  f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  fc:	c9                   	leave
  fd:	c3                   	ret
  fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 100:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 104:	31 c0                	xor    %eax,%eax
 106:	29 d8                	sub    %ebx,%eax
}
 108:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 10b:	c9                   	leave
 10c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 10d:	0f b6 19             	movzbl (%ecx),%ebx
 110:	31 c0                	xor    %eax,%eax
 112:	eb e3                	jmp    f7 <strcmp+0x47>
 114:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 11b:	00 
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000120 <strlen>:

uint
strlen(const char *s)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 126:	80 3a 00             	cmpb   $0x0,(%edx)
 129:	74 15                	je     140 <strlen+0x20>
 12b:	31 c0                	xor    %eax,%eax
 12d:	8d 76 00             	lea    0x0(%esi),%esi
 130:	83 c0 01             	add    $0x1,%eax
 133:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 137:	89 c1                	mov    %eax,%ecx
 139:	75 f5                	jne    130 <strlen+0x10>
    ;
  return n;
}
 13b:	89 c8                	mov    %ecx,%eax
 13d:	5d                   	pop    %ebp
 13e:	c3                   	ret
 13f:	90                   	nop
  for(n = 0; s[n]; n++)
 140:	31 c9                	xor    %ecx,%ecx
}
 142:	5d                   	pop    %ebp
 143:	89 c8                	mov    %ecx,%eax
 145:	c3                   	ret
 146:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14d:	00 
 14e:	66 90                	xchg   %ax,%ax

00000150 <memset>:

void*
memset(void *dst, int c, uint n)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	57                   	push   %edi
 154:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 157:	8b 4d 10             	mov    0x10(%ebp),%ecx
 15a:	8b 45 0c             	mov    0xc(%ebp),%eax
 15d:	89 d7                	mov    %edx,%edi
 15f:	fc                   	cld
 160:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 162:	8b 7d fc             	mov    -0x4(%ebp),%edi
 165:	89 d0                	mov    %edx,%eax
 167:	c9                   	leave
 168:	c3                   	ret
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000170 <strchr>:

char*
strchr(const char *s, char c)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 45 08             	mov    0x8(%ebp),%eax
 176:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 17a:	0f b6 10             	movzbl (%eax),%edx
 17d:	84 d2                	test   %dl,%dl
 17f:	75 1a                	jne    19b <strchr+0x2b>
 181:	eb 25                	jmp    1a8 <strchr+0x38>
 183:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 18a:	00 
 18b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 190:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 194:	83 c0 01             	add    $0x1,%eax
 197:	84 d2                	test   %dl,%dl
 199:	74 0d                	je     1a8 <strchr+0x38>
    if(*s == c)
 19b:	38 d1                	cmp    %dl,%cl
 19d:	75 f1                	jne    190 <strchr+0x20>
      return (char*)s;
  return 0;
}
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1a8:	31 c0                	xor    %eax,%eax
}
 1aa:	5d                   	pop    %ebp
 1ab:	c3                   	ret
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001b0 <gets>:

char*
gets(char *buf, int max)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
 1b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 1b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 1b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 1b9:	31 db                	xor    %ebx,%ebx
{
 1bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 1be:	eb 27                	jmp    1e7 <gets+0x37>
    cc = read(0, &c, 1);
 1c0:	83 ec 04             	sub    $0x4,%esp
 1c3:	6a 01                	push   $0x1
 1c5:	56                   	push   %esi
 1c6:	6a 00                	push   $0x0
 1c8:	e8 63 03 00 00       	call   530 <read>
    if(cc < 1)
 1cd:	83 c4 10             	add    $0x10,%esp
 1d0:	85 c0                	test   %eax,%eax
 1d2:	7e 1d                	jle    1f1 <gets+0x41>
      break;
    buf[i++] = c;
 1d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1d8:	8b 55 08             	mov    0x8(%ebp),%edx
 1db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1df:	3c 0a                	cmp    $0xa,%al
 1e1:	74 10                	je     1f3 <gets+0x43>
 1e3:	3c 0d                	cmp    $0xd,%al
 1e5:	74 0c                	je     1f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 1e7:	89 df                	mov    %ebx,%edi
 1e9:	83 c3 01             	add    $0x1,%ebx
 1ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ef:	7c cf                	jl     1c0 <gets+0x10>
 1f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 1fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1fd:	5b                   	pop    %ebx
 1fe:	5e                   	pop    %esi
 1ff:	5f                   	pop    %edi
 200:	5d                   	pop    %ebp
 201:	c3                   	ret
 202:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 209:	00 
 20a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000210 <stat>:

int
stat(const char *n, struct stat *st)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	56                   	push   %esi
 214:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 215:	83 ec 08             	sub    $0x8,%esp
 218:	6a 00                	push   $0x0
 21a:	ff 75 08             	push   0x8(%ebp)
 21d:	e8 36 03 00 00       	call   558 <open>
  if(fd < 0)
 222:	83 c4 10             	add    $0x10,%esp
 225:	85 c0                	test   %eax,%eax
 227:	78 27                	js     250 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 229:	83 ec 08             	sub    $0x8,%esp
 22c:	ff 75 0c             	push   0xc(%ebp)
 22f:	89 c3                	mov    %eax,%ebx
 231:	50                   	push   %eax
 232:	e8 39 03 00 00       	call   570 <fstat>
  close(fd);
 237:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 23a:	89 c6                	mov    %eax,%esi
  close(fd);
 23c:	e8 ff 02 00 00       	call   540 <close>
  return r;
 241:	83 c4 10             	add    $0x10,%esp
}
 244:	8d 65 f8             	lea    -0x8(%ebp),%esp
 247:	89 f0                	mov    %esi,%eax
 249:	5b                   	pop    %ebx
 24a:	5e                   	pop    %esi
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret
 24d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 250:	be ff ff ff ff       	mov    $0xffffffff,%esi
 255:	eb ed                	jmp    244 <stat+0x34>
 257:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 25e:	00 
 25f:	90                   	nop

00000260 <atoi>:

int
atoi(const char *s)
{
 260:	55                   	push   %ebp
 261:	b8 01 00 00 00       	mov    $0x1,%eax
 266:	89 e5                	mov    %esp,%ebp
 268:	56                   	push   %esi
 269:	8b 75 08             	mov    0x8(%ebp),%esi
 26c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 26d:	0f be 16             	movsbl (%esi),%edx
 270:	80 fa 2d             	cmp    $0x2d,%dl
 273:	75 0c                	jne    281 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 275:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 279:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 27e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 281:	8d 4a d0             	lea    -0x30(%edx),%ecx
 284:	80 f9 09             	cmp    $0x9,%cl
 287:	77 37                	ja     2c0 <atoi+0x60>
  n = 0;
 289:	31 c9                	xor    %ecx,%ecx
 28b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 292:	00 
 293:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 29a:	00 
 29b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 2a0:	83 c6 01             	add    $0x1,%esi
 2a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 2a6:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 2aa:	0f be 16             	movsbl (%esi),%edx
 2ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 2b0:	80 fb 09             	cmp    $0x9,%bl
 2b3:	76 eb                	jbe    2a0 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 2b5:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 2b6:	0f af c1             	imul   %ecx,%eax
}
 2b9:	5e                   	pop    %esi
 2ba:	5d                   	pop    %ebp
 2bb:	c3                   	ret
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c0:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 2c1:	31 c0                	xor    %eax,%eax
}
 2c3:	5e                   	pop    %esi
 2c4:	5d                   	pop    %ebp
 2c5:	c3                   	ret
 2c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2cd:	00 
 2ce:	66 90                	xchg   %ax,%ax

000002d0 <atof>:

double atof(const char *s){
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	56                   	push   %esi
 2d5:	53                   	push   %ebx
 2d6:	83 ec 0c             	sub    $0xc,%esp
 2d9:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 2dc:	0f b6 0a             	movzbl (%edx),%ecx
 2df:	80 f9 2d             	cmp    $0x2d,%cl
 2e2:	0f 84 28 01 00 00    	je     410 <atof+0x140>
  const char *integerPart = s;
 2e8:	89 d3                	mov    %edx,%ebx
 2ea:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 2ed:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 2f4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 2f6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 2fb:	84 c9                	test   %cl,%cl
 2fd:	75 2f                	jne    32e <atof+0x5e>
 2ff:	eb 7b                	jmp    37c <atof+0xac>
 301:	eb 1d                	jmp    320 <atof+0x50>
 303:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 30a:	00 
 30b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 312:	00 
 313:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 31a:	00 
 31b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 320:	0f b6 08             	movzbl (%eax),%ecx
 323:	84 c9                	test   %cl,%cl
 325:	0f 84 d5 00 00 00    	je     400 <atof+0x130>
 32b:	83 c0 01             	add    $0x1,%eax
 32e:	89 c2                	mov    %eax,%edx
    if(*s == c)
 330:	80 f9 2e             	cmp    $0x2e,%cl
 333:	75 eb                	jne    320 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 335:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 338:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 33a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 33d:	80 f9 09             	cmp    $0x9,%cl
 340:	77 3a                	ja     37c <atof+0xac>
 342:	eb 1c                	jmp    360 <atof+0x90>
 344:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 34b:	00 
 34c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 353:	00 
 354:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35b:	00 
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 360:	83 e8 30             	sub    $0x30,%eax
 363:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 366:	83 c3 01             	add    $0x1,%ebx
 369:	0f be c0             	movsbl %al,%eax
 36c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 36f:	0f b6 03             	movzbl (%ebx),%eax
 372:	8d 70 d0             	lea    -0x30(%eax),%esi
 375:	89 f1                	mov    %esi,%ecx
 377:	80 f9 09             	cmp    $0x9,%cl
 37a:	76 e4                	jbe    360 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 37c:	0f b6 02             	movzbl (%edx),%eax
 37f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 382:	80 fb 09             	cmp    $0x9,%bl
 385:	0f 87 9d 00 00 00    	ja     428 <atof+0x158>
  double divisor = 10.0;   
 38b:	d9 05 1c 0b 00 00    	flds   0xb1c
  double fraction = 0.0;  
 391:	d9 ee                	fldz
 393:	eb 2d                	jmp    3c2 <atof+0xf2>
 395:	eb 29                	jmp    3c0 <atof+0xf0>
 397:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 39e:	00 
 39f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3a6:	00 
 3a7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ae:	00 
 3af:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3b6:	00 
 3b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3be:	00 
 3bf:	90                   	nop
 3c0:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 3c2:	83 e8 30             	sub    $0x30,%eax
 3c5:	83 c2 01             	add    $0x1,%edx
 3c8:	66 98                	cbtw
 3ca:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 3ce:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 3d1:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 3d4:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 3d6:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 3d9:	de c1                	faddp  %st,%st(1)
 3db:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 3dd:	d8 0d 1c 0b 00 00    	fmuls  0xb1c
  while('0' <= *fractionPart && *fractionPart <= '9'){
 3e3:	80 fb 09             	cmp    $0x9,%bl
 3e6:	76 d8                	jbe    3c0 <atof+0xf0>
 3e8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 3ea:	89 7d ec             	mov    %edi,-0x14(%ebp)
 3ed:	db 45 ec             	fildl  -0x14(%ebp)
 3f0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 3f2:	db 45 e8             	fildl  -0x18(%ebp)
}
 3f5:	83 c4 0c             	add    $0xc,%esp
 3f8:	5b                   	pop    %ebx
 3f9:	5e                   	pop    %esi
 3fa:	5f                   	pop    %edi
 3fb:	5d                   	pop    %ebp
  return sign*answer;
 3fc:	de c9                	fmulp  %st,%st(1)
}
 3fe:	c3                   	ret
 3ff:	90                   	nop
 400:	ba 01 00 00 00       	mov    $0x1,%edx
 405:	e9 2b ff ff ff       	jmp    335 <atof+0x65>
 40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 410:	8d 42 01             	lea    0x1(%edx),%eax
 413:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 41a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 41c:	e9 0d ff ff ff       	jmp    32e <atof+0x5e>
 421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 428:	d9 ee                	fldz
 42a:	eb be                	jmp    3ea <atof+0x11a>
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 45 10             	mov    0x10(%ebp),%eax
 437:	8b 55 08             	mov    0x8(%ebp),%edx
 43a:	56                   	push   %esi
 43b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 43e:	85 c0                	test   %eax,%eax
 440:	7e 13                	jle    455 <memmove+0x25>
 442:	01 d0                	add    %edx,%eax
  dst = vdst;
 444:	89 d7                	mov    %edx,%edi
 446:	66 90                	xchg   %ax,%ax
 448:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 44f:	00 
    *dst++ = *src++;
 450:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 451:	39 f8                	cmp    %edi,%eax
 453:	75 fb                	jne    450 <memmove+0x20>
  return vdst;
}
 455:	5e                   	pop    %esi
 456:	89 d0                	mov    %edx,%eax
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret
 45b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000460 <fsqrt>:

double fsqrt(double n) {
 460:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 461:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 466:	89 e5                	mov    %esp,%ebp
 468:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 46b:	d9 c0                	fld    %st(0)
 46d:	d8 0d 20 0b 00 00    	fmuls  0xb20
    for (int i = 0; i < 20; i++) {
 473:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47a:	00 
 47b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 480:	d9 c1                	fld    %st(1)
 482:	d8 f1                	fdiv   %st(1),%st
 484:	de c1                	faddp  %st,%st(1)
 486:	d8 0d 20 0b 00 00    	fmuls  0xb20
    for (int i = 0; i < 20; i++) {
 48c:	83 e8 01             	sub    $0x1,%eax
 48f:	75 ef                	jne    480 <fsqrt+0x20>
 491:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 493:	5d                   	pop    %ebp
 494:	c3                   	ret
 495:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 49c:	00 
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <insertionSort>:

void insertionSort(double arr[], int n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	8b 7d 0c             	mov    0xc(%ebp),%edi
 4a7:	56                   	push   %esi
 4a8:	8b 75 08             	mov    0x8(%ebp),%esi
 4ab:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 4ac:	83 ff 01             	cmp    $0x1,%edi
 4af:	7e 5a                	jle    50b <insertionSort+0x6b>
 4b1:	bb 01 00 00 00       	mov    $0x1,%ebx
 4b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4bd:	00 
 4be:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 4c0:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 4c3:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 4c6:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 4c9:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4d0:	00 
 4d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4d8:	00 
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e0:	dd 40 f8             	fldl   -0x8(%eax)
 4e3:	89 c1                	mov    %eax,%ecx
 4e5:	db f1                	fcomi  %st(1),%st
 4e7:	76 17                	jbe    500 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 4e9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 4ec:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 4ee:	8d 41 f8             	lea    -0x8(%ecx),%eax
 4f1:	83 fa ff             	cmp    $0xffffffff,%edx
 4f4:	75 ea                	jne    4e0 <insertionSort+0x40>
 4f6:	89 f1                	mov    %esi,%ecx
 4f8:	eb 08                	jmp    502 <insertionSort+0x62>
 4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 500:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 502:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 505:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 507:	39 df                	cmp    %ebx,%edi
 509:	75 b5                	jne    4c0 <insertionSort+0x20>
    }
    
 50b:	5b                   	pop    %ebx
 50c:	5e                   	pop    %esi
 50d:	5f                   	pop    %edi
 50e:	5d                   	pop    %ebp
 50f:	c3                   	ret

00000510 <fork>:
 510:	b8 01 00 00 00       	mov    $0x1,%eax
 515:	cd 40                	int    $0x40
 517:	c3                   	ret

00000518 <exit>:
 518:	b8 02 00 00 00       	mov    $0x2,%eax
 51d:	cd 40                	int    $0x40
 51f:	c3                   	ret

00000520 <wait>:
 520:	b8 03 00 00 00       	mov    $0x3,%eax
 525:	cd 40                	int    $0x40
 527:	c3                   	ret

00000528 <pipe>:
 528:	b8 04 00 00 00       	mov    $0x4,%eax
 52d:	cd 40                	int    $0x40
 52f:	c3                   	ret

00000530 <read>:
 530:	b8 05 00 00 00       	mov    $0x5,%eax
 535:	cd 40                	int    $0x40
 537:	c3                   	ret

00000538 <write>:
 538:	b8 10 00 00 00       	mov    $0x10,%eax
 53d:	cd 40                	int    $0x40
 53f:	c3                   	ret

00000540 <close>:
 540:	b8 15 00 00 00       	mov    $0x15,%eax
 545:	cd 40                	int    $0x40
 547:	c3                   	ret

00000548 <kill>:
 548:	b8 06 00 00 00       	mov    $0x6,%eax
 54d:	cd 40                	int    $0x40
 54f:	c3                   	ret

00000550 <exec>:
 550:	b8 07 00 00 00       	mov    $0x7,%eax
 555:	cd 40                	int    $0x40
 557:	c3                   	ret

00000558 <open>:
 558:	b8 0f 00 00 00       	mov    $0xf,%eax
 55d:	cd 40                	int    $0x40
 55f:	c3                   	ret

00000560 <mknod>:
 560:	b8 11 00 00 00       	mov    $0x11,%eax
 565:	cd 40                	int    $0x40
 567:	c3                   	ret

00000568 <unlink>:
 568:	b8 12 00 00 00       	mov    $0x12,%eax
 56d:	cd 40                	int    $0x40
 56f:	c3                   	ret

00000570 <fstat>:
 570:	b8 08 00 00 00       	mov    $0x8,%eax
 575:	cd 40                	int    $0x40
 577:	c3                   	ret

00000578 <link>:
 578:	b8 13 00 00 00       	mov    $0x13,%eax
 57d:	cd 40                	int    $0x40
 57f:	c3                   	ret

00000580 <mkdir>:
 580:	b8 14 00 00 00       	mov    $0x14,%eax
 585:	cd 40                	int    $0x40
 587:	c3                   	ret

00000588 <chdir>:
 588:	b8 09 00 00 00       	mov    $0x9,%eax
 58d:	cd 40                	int    $0x40
 58f:	c3                   	ret

00000590 <dup>:
 590:	b8 0a 00 00 00       	mov    $0xa,%eax
 595:	cd 40                	int    $0x40
 597:	c3                   	ret

00000598 <getpid>:
 598:	b8 0b 00 00 00       	mov    $0xb,%eax
 59d:	cd 40                	int    $0x40
 59f:	c3                   	ret

000005a0 <sbrk>:
 5a0:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a5:	cd 40                	int    $0x40
 5a7:	c3                   	ret

000005a8 <sleep>:
 5a8:	b8 0d 00 00 00       	mov    $0xd,%eax
 5ad:	cd 40                	int    $0x40
 5af:	c3                   	ret

000005b0 <uptime>:
 5b0:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b5:	cd 40                	int    $0x40
 5b7:	c3                   	ret
 5b8:	66 90                	xchg   %ax,%ax
 5ba:	66 90                	xchg   %ax,%ax
 5bc:	66 90                	xchg   %ax,%ax
 5be:	66 90                	xchg   %ax,%ax

000005c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5c8:	89 d1                	mov    %edx,%ecx
{
 5ca:	83 ec 3c             	sub    $0x3c,%esp
 5cd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 5d0:	85 d2                	test   %edx,%edx
 5d2:	0f 89 98 00 00 00    	jns    670 <printint+0xb0>
 5d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5dc:	0f 84 8e 00 00 00    	je     670 <printint+0xb0>
    x = -xx;
 5e2:	f7 d9                	neg    %ecx
    neg = 1;
 5e4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 5e9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5ec:	31 f6                	xor    %esi,%esi
 5ee:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5f5:	00 
 5f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5fd:	00 
 5fe:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 600:	89 c8                	mov    %ecx,%eax
 602:	31 d2                	xor    %edx,%edx
 604:	89 f7                	mov    %esi,%edi
 606:	f7 f3                	div    %ebx
 608:	8d 76 01             	lea    0x1(%esi),%esi
 60b:	0f b6 92 7c 0b 00 00 	movzbl 0xb7c(%edx),%edx
 612:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 616:	89 ca                	mov    %ecx,%edx
 618:	89 c1                	mov    %eax,%ecx
 61a:	39 da                	cmp    %ebx,%edx
 61c:	73 e2                	jae    600 <printint+0x40>
  if(neg)
 61e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 621:	85 c0                	test   %eax,%eax
 623:	74 07                	je     62c <printint+0x6c>
    buf[i++] = '-';
 625:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 62a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 62c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 62f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 632:	01 df                	add    %ebx,%edi
 634:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 63b:	00 
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 640:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 643:	83 ec 04             	sub    $0x4,%esp
 646:	88 45 d7             	mov    %al,-0x29(%ebp)
 649:	8d 45 d7             	lea    -0x29(%ebp),%eax
 64c:	6a 01                	push   $0x1
 64e:	50                   	push   %eax
 64f:	56                   	push   %esi
 650:	e8 e3 fe ff ff       	call   538 <write>
  while(--i >= 0)
 655:	89 f8                	mov    %edi,%eax
 657:	83 c4 10             	add    $0x10,%esp
 65a:	83 ef 01             	sub    $0x1,%edi
 65d:	39 d8                	cmp    %ebx,%eax
 65f:	75 df                	jne    640 <printint+0x80>
}
 661:	8d 65 f4             	lea    -0xc(%ebp),%esp
 664:	5b                   	pop    %ebx
 665:	5e                   	pop    %esi
 666:	5f                   	pop    %edi
 667:	5d                   	pop    %ebp
 668:	c3                   	ret
 669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 670:	31 c0                	xor    %eax,%eax
 672:	e9 72 ff ff ff       	jmp    5e9 <printint+0x29>
 677:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 67e:	00 
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 685:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 688:	53                   	push   %ebx
 689:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 68c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 68f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 692:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 695:	0f b6 01             	movzbl (%ecx),%eax
 698:	84 c0                	test   %al,%al
 69a:	74 2f                	je     6cb <printf+0x4b>
 69c:	31 db                	xor    %ebx,%ebx
 69e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 6a0:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 6a3:	83 fa 25             	cmp    $0x25,%edx
 6a6:	74 30                	je     6d8 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 6a8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6ab:	83 ec 04             	sub    $0x4,%esp
 6ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 6b1:	6a 01                	push   $0x1
 6b3:	50                   	push   %eax
 6b4:	56                   	push   %esi
 6b5:	e8 7e fe ff ff       	call   538 <write>
        putc(fd, c);
 6ba:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6bd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 6c0:	83 c3 01             	add    $0x1,%ebx
 6c3:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 6c7:	84 c0                	test   %al,%al
 6c9:	75 d5                	jne    6a0 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ce:	5b                   	pop    %ebx
 6cf:	5e                   	pop    %esi
 6d0:	5f                   	pop    %edi
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret
 6d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 6d8:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 6dd:	8d 7b 01             	lea    0x1(%ebx),%edi
 6e0:	84 d2                	test   %dl,%dl
 6e2:	74 e7                	je     6cb <printf+0x4b>
    c = fmt[i] & 0xff;
 6e4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 6e7:	80 fa 25             	cmp    $0x25,%dl
 6ea:	0f 84 10 02 00 00    	je     900 <printf+0x280>
 6f0:	83 e8 63             	sub    $0x63,%eax
 6f3:	83 f8 15             	cmp    $0x15,%eax
 6f6:	77 08                	ja     700 <printf+0x80>
 6f8:	ff 24 85 24 0b 00 00 	jmp    *0xb24(,%eax,4)
 6ff:	90                   	nop
  write(fd, &c, 1);
 700:	83 ec 04             	sub    $0x4,%esp
 703:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 706:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 709:	89 fb                	mov    %edi,%ebx
 70b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 70f:	6a 01                	push   $0x1
 711:	51                   	push   %ecx
 712:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 715:	56                   	push   %esi
 716:	e8 1d fe ff ff       	call   538 <write>
        putc(fd, c);
 71b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 71f:	83 c4 0c             	add    $0xc,%esp
 722:	88 55 e7             	mov    %dl,-0x19(%ebp)
 725:	6a 01                	push   $0x1
 727:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 72a:	51                   	push   %ecx
 72b:	56                   	push   %esi
 72c:	e8 07 fe ff ff       	call   538 <write>
        putc(fd, c);
 731:	83 c4 10             	add    $0x10,%esp
 734:	eb 87                	jmp    6bd <printf+0x3d>
 736:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73d:	00 
 73e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 740:	8b 7d d0             	mov    -0x30(%ebp),%edi
 743:	83 ec 0c             	sub    $0xc,%esp
 746:	b9 10 00 00 00       	mov    $0x10,%ecx
 74b:	8b 17                	mov    (%edi),%edx
 74d:	6a 00                	push   $0x0
 74f:	89 f0                	mov    %esi,%eax
 751:	e8 6a fe ff ff       	call   5c0 <printint>
        ap++;
 756:	83 c7 04             	add    $0x4,%edi
 759:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 75c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 75f:	83 c3 02             	add    $0x2,%ebx
 762:	83 c4 10             	add    $0x10,%esp
 765:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 769:	84 c0                	test   %al,%al
 76b:	0f 85 2f ff ff ff    	jne    6a0 <printf+0x20>
}
 771:	8d 65 f4             	lea    -0xc(%ebp),%esp
 774:	5b                   	pop    %ebx
 775:	5e                   	pop    %esi
 776:	5f                   	pop    %edi
 777:	5d                   	pop    %ebp
 778:	c3                   	ret
 779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 780:	8b 45 d0             	mov    -0x30(%ebp),%eax
 783:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 785:	d9 7d d6             	fnstcw -0x2a(%ebp)
 788:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 78c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 78f:	80 cc 0c             	or     $0xc,%ah
 792:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 796:	d9 6d d4             	fldcw  -0x2c(%ebp)
 799:	db 55 c0             	fistl  -0x40(%ebp)
 79c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 79f:	db 45 c0             	fildl  -0x40(%ebp)
 7a2:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 7a4:	d9 ee                	fldz
 7a6:	df f1                	fcomip %st(1),%st
 7a8:	0f 87 82 01 00 00    	ja     930 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 7ae:	83 ec 0c             	sub    $0xc,%esp
 7b1:	dd 5d b0             	fstpl  -0x50(%ebp)
 7b4:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7b9:	89 f0                	mov    %esi,%eax
 7bb:	6a 01                	push   $0x1
 7bd:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 7c0:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 7c5:	e8 f6 fd ff ff       	call   5c0 <printint>
  write(fd, &c, 1);
 7ca:	83 c4 0c             	add    $0xc,%esp
 7cd:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 7d0:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 7d4:	6a 01                	push   $0x1
 7d6:	51                   	push   %ecx
 7d7:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 7da:	56                   	push   %esi
 7db:	e8 58 fd ff ff       	call   538 <write>
        putc(fd, '.'); //adds the decimal point
 7e0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 7e3:	83 c4 10             	add    $0x10,%esp
 7e6:	dd 45 b0             	fldl   -0x50(%ebp)
 7e9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 7ec:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 7ef:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 7f2:	d8 0d 1c 0b 00 00    	fmuls  0xb1c
          int digit = (int) fraction_part;
 7f8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 7fc:	80 cc 0c             	or     $0xc,%ah
 7ff:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 803:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 808:	d9 6d d4             	fldcw  -0x2c(%ebp)
 80b:	db 55 c8             	fistl  -0x38(%ebp)
 80e:	d9 6d d6             	fldcw  -0x2a(%ebp)
 811:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 814:	39 c3                	cmp    %eax,%ebx
 816:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 819:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 81c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 81f:	8d 43 30             	lea    0x30(%ebx),%eax
 822:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 825:	6a 01                	push   $0x1
 827:	ff 75 bc             	push   -0x44(%ebp)
 82a:	56                   	push   %esi
 82b:	e8 08 fd ff ff       	call   538 <write>
          fraction_part -= digit;
 830:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 833:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 836:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 839:	dd 45 c0             	fldl   -0x40(%ebp)
 83c:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 83e:	83 ef 01             	sub    $0x1,%edi
 841:	75 ac                	jne    7ef <printf+0x16f>
 843:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 845:	8b 45 d0             	mov    -0x30(%ebp),%eax
 848:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 84b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 84e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 851:	83 c3 02             	add    $0x2,%ebx
 854:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 858:	84 c0                	test   %al,%al
 85a:	0f 85 40 fe ff ff    	jne    6a0 <printf+0x20>
}
 860:	8d 65 f4             	lea    -0xc(%ebp),%esp
 863:	5b                   	pop    %ebx
 864:	5e                   	pop    %esi
 865:	5f                   	pop    %edi
 866:	5d                   	pop    %ebp
 867:	c3                   	ret
 868:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 86f:	00 
        s = (char*)*ap;
 870:	8b 45 d0             	mov    -0x30(%ebp),%eax
 873:	8b 38                	mov    (%eax),%edi
        ap++;
 875:	83 c0 04             	add    $0x4,%eax
 878:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 87b:	85 ff                	test   %edi,%edi
 87d:	0f 84 9d 00 00 00    	je     920 <printf+0x2a0>
        while(*s != 0){
 883:	0f b6 07             	movzbl (%edi),%eax
 886:	84 c0                	test   %al,%al
 888:	0f 84 a9 00 00 00    	je     937 <printf+0x2b7>
 88e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 891:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 894:	89 fb                	mov    %edi,%ebx
 896:	89 cf                	mov    %ecx,%edi
 898:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 89f:	00 
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 8a6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8a9:	6a 01                	push   $0x1
 8ab:	57                   	push   %edi
 8ac:	56                   	push   %esi
 8ad:	e8 86 fc ff ff       	call   538 <write>
        while(*s != 0){
 8b2:	0f b6 03             	movzbl (%ebx),%eax
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	84 c0                	test   %al,%al
 8ba:	75 e4                	jne    8a0 <printf+0x220>
 8bc:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 8bf:	eb 8d                	jmp    84e <printf+0x1ce>
 8c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 8c8:	8b 7d d0             	mov    -0x30(%ebp),%edi
 8cb:	83 ec 0c             	sub    $0xc,%esp
 8ce:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8d3:	8b 17                	mov    (%edi),%edx
 8d5:	6a 01                	push   $0x1
 8d7:	e9 73 fe ff ff       	jmp    74f <printf+0xcf>
 8dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 8e0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 8e3:	83 ec 04             	sub    $0x4,%esp
 8e6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 8e9:	8b 07                	mov    (%edi),%eax
 8eb:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ee:	6a 01                	push   $0x1
 8f0:	51                   	push   %ecx
 8f1:	56                   	push   %esi
 8f2:	e8 41 fc ff ff       	call   538 <write>
 8f7:	e9 5a fe ff ff       	jmp    756 <printf+0xd6>
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 900:	83 ec 04             	sub    $0x4,%esp
 903:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 906:	88 55 e7             	mov    %dl,-0x19(%ebp)
 909:	6a 01                	push   $0x1
 90b:	51                   	push   %ecx
 90c:	56                   	push   %esi
 90d:	e8 26 fc ff ff       	call   538 <write>
 912:	e9 45 fe ff ff       	jmp    75c <printf+0xdc>
 917:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 91e:	00 
 91f:	90                   	nop
 920:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 925:	bf 15 0b 00 00       	mov    $0xb15,%edi
 92a:	e9 5f ff ff ff       	jmp    88e <printf+0x20e>
 92f:	90                   	nop
          fraction_part = -fraction_part;
 930:	d9 e0                	fchs
 932:	e9 77 fe ff ff       	jmp    7ae <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 937:	83 c3 02             	add    $0x2,%ebx
 93a:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 93e:	84 c0                	test   %al,%al
 940:	0f 85 5a fd ff ff    	jne    6a0 <printf+0x20>
 946:	e9 80 fd ff ff       	jmp    6cb <printf+0x4b>
 94b:	66 90                	xchg   %ax,%ax
 94d:	66 90                	xchg   %ax,%ax
 94f:	66 90                	xchg   %ax,%ax
 951:	66 90                	xchg   %ax,%ax
 953:	66 90                	xchg   %ax,%ax
 955:	66 90                	xchg   %ax,%ax
 957:	66 90                	xchg   %ax,%ax
 959:	66 90                	xchg   %ax,%ax
 95b:	66 90                	xchg   %ax,%ax
 95d:	66 90                	xchg   %ax,%ax
 95f:	90                   	nop

00000960 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 960:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	a1 dc 0e 00 00       	mov    0xedc,%eax
{
 966:	89 e5                	mov    %esp,%ebp
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	53                   	push   %ebx
 96b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 96e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 978:	00 
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 980:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 982:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 984:	39 ca                	cmp    %ecx,%edx
 986:	73 30                	jae    9b8 <free+0x58>
 988:	39 c1                	cmp    %eax,%ecx
 98a:	72 04                	jb     990 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 98c:	39 c2                	cmp    %eax,%edx
 98e:	72 f0                	jb     980 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 990:	8b 73 fc             	mov    -0x4(%ebx),%esi
 993:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 996:	39 f8                	cmp    %edi,%eax
 998:	74 36                	je     9d0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 99a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 99d:	8b 42 04             	mov    0x4(%edx),%eax
 9a0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a3:	39 f1                	cmp    %esi,%ecx
 9a5:	74 40                	je     9e7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9a7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9a9:	5b                   	pop    %ebx
  freep = p;
 9aa:	89 15 dc 0e 00 00    	mov    %edx,0xedc
}
 9b0:	5e                   	pop    %esi
 9b1:	5f                   	pop    %edi
 9b2:	5d                   	pop    %ebp
 9b3:	c3                   	ret
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b8:	39 c2                	cmp    %eax,%edx
 9ba:	72 c4                	jb     980 <free+0x20>
 9bc:	39 c1                	cmp    %eax,%ecx
 9be:	73 c0                	jae    980 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 9c0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9c3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9c6:	39 f8                	cmp    %edi,%eax
 9c8:	75 d0                	jne    99a <free+0x3a>
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 9d0:	03 70 04             	add    0x4(%eax),%esi
 9d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9d6:	8b 02                	mov    (%edx),%eax
 9d8:	8b 00                	mov    (%eax),%eax
 9da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9dd:	8b 42 04             	mov    0x4(%edx),%eax
 9e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9e3:	39 f1                	cmp    %esi,%ecx
 9e5:	75 c0                	jne    9a7 <free+0x47>
    p->s.size += bp->s.size;
 9e7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ea:	89 15 dc 0e 00 00    	mov    %edx,0xedc
    p->s.size += bp->s.size;
 9f0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9f3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9f6:	89 0a                	mov    %ecx,(%edx)
}
 9f8:	5b                   	pop    %ebx
 9f9:	5e                   	pop    %esi
 9fa:	5f                   	pop    %edi
 9fb:	5d                   	pop    %ebp
 9fc:	c3                   	ret
 9fd:	8d 76 00             	lea    0x0(%esi),%esi

00000a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a00:	55                   	push   %ebp
 a01:	89 e5                	mov    %esp,%ebp
 a03:	57                   	push   %edi
 a04:	56                   	push   %esi
 a05:	53                   	push   %ebx
 a06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a0c:	8b 15 dc 0e 00 00    	mov    0xedc,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a12:	8d 78 07             	lea    0x7(%eax),%edi
 a15:	c1 ef 03             	shr    $0x3,%edi
 a18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a1b:	85 d2                	test   %edx,%edx
 a1d:	0f 84 8d 00 00 00    	je     ab0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a25:	8b 48 04             	mov    0x4(%eax),%ecx
 a28:	39 f9                	cmp    %edi,%ecx
 a2a:	73 64                	jae    a90 <malloc+0x90>
  if(nu < 4096)
 a2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a31:	39 df                	cmp    %ebx,%edi
 a33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 a36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 a3d:	eb 0a                	jmp    a49 <malloc+0x49>
 a3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a42:	8b 48 04             	mov    0x4(%eax),%ecx
 a45:	39 f9                	cmp    %edi,%ecx
 a47:	73 47                	jae    a90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a49:	89 c2                	mov    %eax,%edx
 a4b:	39 05 dc 0e 00 00    	cmp    %eax,0xedc
 a51:	75 ed                	jne    a40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 a53:	83 ec 0c             	sub    $0xc,%esp
 a56:	56                   	push   %esi
 a57:	e8 44 fb ff ff       	call   5a0 <sbrk>
  if(p == (char*)-1)
 a5c:	83 c4 10             	add    $0x10,%esp
 a5f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a62:	74 1c                	je     a80 <malloc+0x80>
  hp->s.size = nu;
 a64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a67:	83 ec 0c             	sub    $0xc,%esp
 a6a:	83 c0 08             	add    $0x8,%eax
 a6d:	50                   	push   %eax
 a6e:	e8 ed fe ff ff       	call   960 <free>
  return freep;
 a73:	8b 15 dc 0e 00 00    	mov    0xedc,%edx
      if((p = morecore(nunits)) == 0)
 a79:	83 c4 10             	add    $0x10,%esp
 a7c:	85 d2                	test   %edx,%edx
 a7e:	75 c0                	jne    a40 <malloc+0x40>
        return 0;
  }
}
 a80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a83:	31 c0                	xor    %eax,%eax
}
 a85:	5b                   	pop    %ebx
 a86:	5e                   	pop    %esi
 a87:	5f                   	pop    %edi
 a88:	5d                   	pop    %ebp
 a89:	c3                   	ret
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a90:	39 cf                	cmp    %ecx,%edi
 a92:	74 4c                	je     ae0 <malloc+0xe0>
        p->s.size -= nunits;
 a94:	29 f9                	sub    %edi,%ecx
 a96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 a9f:	89 15 dc 0e 00 00    	mov    %edx,0xedc
}
 aa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 aa8:	83 c0 08             	add    $0x8,%eax
}
 aab:	5b                   	pop    %ebx
 aac:	5e                   	pop    %esi
 aad:	5f                   	pop    %edi
 aae:	5d                   	pop    %ebp
 aaf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 ab0:	c7 05 dc 0e 00 00 e0 	movl   $0xee0,0xedc
 ab7:	0e 00 00 
    base.s.size = 0;
 aba:	b8 e0 0e 00 00       	mov    $0xee0,%eax
    base.s.ptr = freep = prevp = &base;
 abf:	c7 05 e0 0e 00 00 e0 	movl   $0xee0,0xee0
 ac6:	0e 00 00 
    base.s.size = 0;
 ac9:	c7 05 e4 0e 00 00 00 	movl   $0x0,0xee4
 ad0:	00 00 00 
    if(p->s.size >= nunits){
 ad3:	e9 54 ff ff ff       	jmp    a2c <malloc+0x2c>
 ad8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 adf:	00 
        prevp->s.ptr = p->s.ptr;
 ae0:	8b 08                	mov    (%eax),%ecx
 ae2:	89 0a                	mov    %ecx,(%edx)
 ae4:	eb b9                	jmp    a9f <malloc+0x9f>
