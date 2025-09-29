
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

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
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 71 04             	mov    0x4(%ecx),%esi
  1e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;

  if(argc <= 1){
  21:	83 f8 01             	cmp    $0x1,%eax
  24:	7e 58                	jle    7e <main+0x7e>
  26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  2d:	00 
  2e:	66 90                	xchg   %ax,%ax
    wc(0, "");
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 34 be             	push   (%esi,%edi,4)
  38:	e8 1b 06 00 00       	call   658 <open>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	89 c3                	mov    %eax,%ebx
      printf(1, "wc: cannot open %s\n", argv[i]);
  42:	8b 04 be             	mov    (%esi,%edi,4),%eax
    if((fd = open(argv[i], 0)) < 0){
  45:	85 db                	test   %ebx,%ebx
  47:	78 22                	js     6b <main+0x6b>
      exit();
    }
    wc(fd, argv[i]);
  49:	83 ec 08             	sub    $0x8,%esp
  for(i = 1; i < argc; i++){
  4c:	83 c7 01             	add    $0x1,%edi
    wc(fd, argv[i]);
  4f:	50                   	push   %eax
  50:	53                   	push   %ebx
  51:	e8 4a 00 00 00       	call   a0 <wc>
    close(fd);
  56:	89 1c 24             	mov    %ebx,(%esp)
  59:	e8 e2 05 00 00       	call   640 <close>
  for(i = 1; i < argc; i++){
  5e:	83 c4 10             	add    $0x10,%esp
  61:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  64:	75 ca                	jne    30 <main+0x30>
  }
  exit();
  66:	e8 ad 05 00 00       	call   618 <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
  6b:	52                   	push   %edx
  6c:	50                   	push   %eax
  6d:	68 0b 0c 00 00       	push   $0xc0b
  72:	6a 01                	push   $0x1
  74:	e8 07 07 00 00       	call   780 <printf>
      exit();
  79:	e8 9a 05 00 00       	call   618 <exit>
    wc(0, "");
  7e:	51                   	push   %ecx
  7f:	51                   	push   %ecx
  80:	68 fd 0b 00 00       	push   $0xbfd
  85:	6a 00                	push   $0x0
  87:	e8 14 00 00 00       	call   a0 <wc>
    exit();
  8c:	e8 87 05 00 00       	call   618 <exit>
  91:	66 90                	xchg   %ax,%ax
  93:	66 90                	xchg   %ax,%ax
  95:	66 90                	xchg   %ax,%ax
  97:	66 90                	xchg   %ax,%ax
  99:	66 90                	xchg   %ax,%ax
  9b:	66 90                	xchg   %ax,%ax
  9d:	66 90                	xchg   %ax,%ax
  9f:	90                   	nop

000000a0 <wc>:
{
  a0:	55                   	push   %ebp
  l = w = c = 0;
  a1:	31 d2                	xor    %edx,%edx
{
  a3:	89 e5                	mov    %esp,%ebp
  a5:	57                   	push   %edi
  a6:	56                   	push   %esi
  inword = 0;
  a7:	31 f6                	xor    %esi,%esi
{
  a9:	53                   	push   %ebx
  l = w = c = 0;
  aa:	31 db                	xor    %ebx,%ebx
{
  ac:	83 ec 1c             	sub    $0x1c,%esp
  l = w = c = 0;
  af:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  b6:	89 55 dc             	mov    %edx,-0x24(%ebp)
  b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
  c0:	83 ec 04             	sub    $0x4,%esp
  c3:	68 00 02 00 00       	push   $0x200
  c8:	68 20 10 00 00       	push   $0x1020
  cd:	ff 75 08             	push   0x8(%ebp)
  d0:	e8 5b 05 00 00       	call   630 <read>
  d5:	83 c4 10             	add    $0x10,%esp
  d8:	89 c1                	mov    %eax,%ecx
  da:	85 c0                	test   %eax,%eax
  dc:	7e 62                	jle    140 <wc+0xa0>
    for(i=0; i<n; i++){
  de:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  e1:	31 ff                	xor    %edi,%edi
  e3:	eb 0d                	jmp    f2 <wc+0x52>
  e5:	8d 76 00             	lea    0x0(%esi),%esi
        inword = 0;
  e8:	31 f6                	xor    %esi,%esi
    for(i=0; i<n; i++){
  ea:	83 c7 01             	add    $0x1,%edi
  ed:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  f0:	74 3e                	je     130 <wc+0x90>
      if(buf[i] == '\n')
  f2:	0f be 87 20 10 00 00 	movsbl 0x1020(%edi),%eax
        l++;
  f9:	31 c9                	xor    %ecx,%ecx
  fb:	3c 0a                	cmp    $0xa,%al
  fd:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 100:	83 ec 08             	sub    $0x8,%esp
 103:	50                   	push   %eax
        l++;
 104:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 106:	68 e8 0b 00 00       	push   $0xbe8
 10b:	e8 60 01 00 00       	call   270 <strchr>
 110:	83 c4 10             	add    $0x10,%esp
 113:	85 c0                	test   %eax,%eax
 115:	75 d1                	jne    e8 <wc+0x48>
      else if(!inword){
 117:	85 f6                	test   %esi,%esi
 119:	75 cf                	jne    ea <wc+0x4a>
        w++;
 11b:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
        inword = 1;
 11f:	be 01 00 00 00       	mov    $0x1,%esi
    for(i=0; i<n; i++){
 124:	83 c7 01             	add    $0x1,%edi
 127:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 12a:	75 c6                	jne    f2 <wc+0x52>
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 130:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 133:	01 4d dc             	add    %ecx,-0x24(%ebp)
 136:	eb 88                	jmp    c0 <wc+0x20>
 138:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 13f:	00 
  if(n < 0){
 140:	8b 55 dc             	mov    -0x24(%ebp),%edx
 143:	75 22                	jne    167 <wc+0xc7>
  printf(1, "%d %d %d %s\n", l, w, c, name);
 145:	83 ec 08             	sub    $0x8,%esp
 148:	ff 75 0c             	push   0xc(%ebp)
 14b:	52                   	push   %edx
 14c:	ff 75 e0             	push   -0x20(%ebp)
 14f:	53                   	push   %ebx
 150:	68 fe 0b 00 00       	push   $0xbfe
 155:	6a 01                	push   $0x1
 157:	e8 24 06 00 00       	call   780 <printf>
}
 15c:	83 c4 20             	add    $0x20,%esp
 15f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 162:	5b                   	pop    %ebx
 163:	5e                   	pop    %esi
 164:	5f                   	pop    %edi
 165:	5d                   	pop    %ebp
 166:	c3                   	ret
    printf(1, "wc: read error\n");
 167:	50                   	push   %eax
 168:	50                   	push   %eax
 169:	68 ee 0b 00 00       	push   $0xbee
 16e:	6a 01                	push   $0x1
 170:	e8 0b 06 00 00       	call   780 <printf>
    exit();
 175:	e8 9e 04 00 00       	call   618 <exit>
 17a:	66 90                	xchg   %ax,%ax
 17c:	66 90                	xchg   %ax,%ax
 17e:	66 90                	xchg   %ax,%ax

00000180 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 180:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 181:	31 c0                	xor    %eax,%eax
{
 183:	89 e5                	mov    %esp,%ebp
 185:	53                   	push   %ebx
 186:	8b 4d 08             	mov    0x8(%ebp),%ecx
 189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 190:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 194:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 197:	83 c0 01             	add    $0x1,%eax
 19a:	84 d2                	test   %dl,%dl
 19c:	75 f2                	jne    190 <strcpy+0x10>
    ;
  return os;
}
 19e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a1:	89 c8                	mov    %ecx,%eax
 1a3:	c9                   	leave
 1a4:	c3                   	ret
 1a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ac:	00 
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 55 08             	mov    0x8(%ebp),%edx
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ba:	0f b6 02             	movzbl (%edx),%eax
 1bd:	84 c0                	test   %al,%al
 1bf:	75 2f                	jne    1f0 <strcmp+0x40>
 1c1:	eb 4a                	jmp    20d <strcmp+0x5d>
 1c3:	eb 1b                	jmp    1e0 <strcmp+0x30>
 1c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cc:	00 
 1cd:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1d4:	00 
 1d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1dc:	00 
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
 1e0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1e4:	83 c2 01             	add    $0x1,%edx
 1e7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1ea:	84 c0                	test   %al,%al
 1ec:	74 12                	je     200 <strcmp+0x50>
 1ee:	89 d9                	mov    %ebx,%ecx
 1f0:	0f b6 19             	movzbl (%ecx),%ebx
 1f3:	38 c3                	cmp    %al,%bl
 1f5:	74 e9                	je     1e0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 1f7:	29 d8                	sub    %ebx,%eax
}
 1f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1fc:	c9                   	leave
 1fd:	c3                   	ret
 1fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 200:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 204:	31 c0                	xor    %eax,%eax
 206:	29 d8                	sub    %ebx,%eax
}
 208:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 20b:	c9                   	leave
 20c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 20d:	0f b6 19             	movzbl (%ecx),%ebx
 210:	31 c0                	xor    %eax,%eax
 212:	eb e3                	jmp    1f7 <strcmp+0x47>
 214:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 21b:	00 
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strlen>:

uint
strlen(const char *s)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 226:	80 3a 00             	cmpb   $0x0,(%edx)
 229:	74 15                	je     240 <strlen+0x20>
 22b:	31 c0                	xor    %eax,%eax
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	83 c0 01             	add    $0x1,%eax
 233:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 237:	89 c1                	mov    %eax,%ecx
 239:	75 f5                	jne    230 <strlen+0x10>
    ;
  return n;
}
 23b:	89 c8                	mov    %ecx,%eax
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret
 23f:	90                   	nop
  for(n = 0; s[n]; n++)
 240:	31 c9                	xor    %ecx,%ecx
}
 242:	5d                   	pop    %ebp
 243:	89 c8                	mov    %ecx,%eax
 245:	c3                   	ret
 246:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 24d:	00 
 24e:	66 90                	xchg   %ax,%ax

00000250 <memset>:

void*
memset(void *dst, int c, uint n)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 257:	8b 4d 10             	mov    0x10(%ebp),%ecx
 25a:	8b 45 0c             	mov    0xc(%ebp),%eax
 25d:	89 d7                	mov    %edx,%edi
 25f:	fc                   	cld
 260:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 262:	8b 7d fc             	mov    -0x4(%ebp),%edi
 265:	89 d0                	mov    %edx,%eax
 267:	c9                   	leave
 268:	c3                   	ret
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000270 <strchr>:

char*
strchr(const char *s, char c)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 27a:	0f b6 10             	movzbl (%eax),%edx
 27d:	84 d2                	test   %dl,%dl
 27f:	75 1a                	jne    29b <strchr+0x2b>
 281:	eb 25                	jmp    2a8 <strchr+0x38>
 283:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28a:	00 
 28b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 290:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 294:	83 c0 01             	add    $0x1,%eax
 297:	84 d2                	test   %dl,%dl
 299:	74 0d                	je     2a8 <strchr+0x38>
    if(*s == c)
 29b:	38 d1                	cmp    %dl,%cl
 29d:	75 f1                	jne    290 <strchr+0x20>
      return (char*)s;
  return 0;
}
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret
 2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2a8:	31 c0                	xor    %eax,%eax
}
 2aa:	5d                   	pop    %ebp
 2ab:	c3                   	ret
 2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002b0 <gets>:

char*
gets(char *buf, int max)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 2b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2b9:	31 db                	xor    %ebx,%ebx
{
 2bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2be:	eb 27                	jmp    2e7 <gets+0x37>
    cc = read(0, &c, 1);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	6a 01                	push   $0x1
 2c5:	56                   	push   %esi
 2c6:	6a 00                	push   $0x0
 2c8:	e8 63 03 00 00       	call   630 <read>
    if(cc < 1)
 2cd:	83 c4 10             	add    $0x10,%esp
 2d0:	85 c0                	test   %eax,%eax
 2d2:	7e 1d                	jle    2f1 <gets+0x41>
      break;
    buf[i++] = c;
 2d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d8:	8b 55 08             	mov    0x8(%ebp),%edx
 2db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2df:	3c 0a                	cmp    $0xa,%al
 2e1:	74 10                	je     2f3 <gets+0x43>
 2e3:	3c 0d                	cmp    $0xd,%al
 2e5:	74 0c                	je     2f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 2e7:	89 df                	mov    %ebx,%edi
 2e9:	83 c3 01             	add    $0x1,%ebx
 2ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ef:	7c cf                	jl     2c0 <gets+0x10>
 2f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 2fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fd:	5b                   	pop    %ebx
 2fe:	5e                   	pop    %esi
 2ff:	5f                   	pop    %edi
 300:	5d                   	pop    %ebp
 301:	c3                   	ret
 302:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 309:	00 
 30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000310 <stat>:

int
stat(const char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	push   0x8(%ebp)
 31d:	e8 36 03 00 00       	call   658 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	push   0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 39 03 00 00       	call   670 <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 ff 02 00 00       	call   640 <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
}
 344:	8d 65 f8             	lea    -0x8(%ebp),%esp
 347:	89 f0                	mov    %esi,%eax
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 350:	be ff ff ff ff       	mov    $0xffffffff,%esi
 355:	eb ed                	jmp    344 <stat+0x34>
 357:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35e:	00 
 35f:	90                   	nop

00000360 <atoi>:

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	b8 01 00 00 00       	mov    $0x1,%eax
 366:	89 e5                	mov    %esp,%ebp
 368:	56                   	push   %esi
 369:	8b 75 08             	mov    0x8(%ebp),%esi
 36c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 36d:	0f be 16             	movsbl (%esi),%edx
 370:	80 fa 2d             	cmp    $0x2d,%dl
 373:	75 0c                	jne    381 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 375:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 379:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 37e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 381:	8d 4a d0             	lea    -0x30(%edx),%ecx
 384:	80 f9 09             	cmp    $0x9,%cl
 387:	77 37                	ja     3c0 <atoi+0x60>
  n = 0;
 389:	31 c9                	xor    %ecx,%ecx
 38b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 392:	00 
 393:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 39a:	00 
 39b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 3a0:	83 c6 01             	add    $0x1,%esi
 3a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3a6:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 3aa:	0f be 16             	movsbl (%esi),%edx
 3ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3b0:	80 fb 09             	cmp    $0x9,%bl
 3b3:	76 eb                	jbe    3a0 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 3b5:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 3b6:	0f af c1             	imul   %ecx,%eax
}
 3b9:	5e                   	pop    %esi
 3ba:	5d                   	pop    %ebp
 3bb:	c3                   	ret
 3bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3c0:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 3c1:	31 c0                	xor    %eax,%eax
}
 3c3:	5e                   	pop    %esi
 3c4:	5d                   	pop    %ebp
 3c5:	c3                   	ret
 3c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cd:	00 
 3ce:	66 90                	xchg   %ax,%ax

000003d0 <atof>:

double atof(const char *s){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	56                   	push   %esi
 3d5:	53                   	push   %ebx
 3d6:	83 ec 0c             	sub    $0xc,%esp
 3d9:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 3dc:	0f b6 0a             	movzbl (%edx),%ecx
 3df:	80 f9 2d             	cmp    $0x2d,%cl
 3e2:	0f 84 28 01 00 00    	je     510 <atof+0x140>
  const char *integerPart = s;
 3e8:	89 d3                	mov    %edx,%ebx
 3ea:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 3ed:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 3f4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 3f6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 3fb:	84 c9                	test   %cl,%cl
 3fd:	75 2f                	jne    42e <atof+0x5e>
 3ff:	eb 7b                	jmp    47c <atof+0xac>
 401:	eb 1d                	jmp    420 <atof+0x50>
 403:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40a:	00 
 40b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 412:	00 
 413:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41a:	00 
 41b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 420:	0f b6 08             	movzbl (%eax),%ecx
 423:	84 c9                	test   %cl,%cl
 425:	0f 84 d5 00 00 00    	je     500 <atof+0x130>
 42b:	83 c0 01             	add    $0x1,%eax
 42e:	89 c2                	mov    %eax,%edx
    if(*s == c)
 430:	80 f9 2e             	cmp    $0x2e,%cl
 433:	75 eb                	jne    420 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 435:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 438:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 43a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 43d:	80 f9 09             	cmp    $0x9,%cl
 440:	77 3a                	ja     47c <atof+0xac>
 442:	eb 1c                	jmp    460 <atof+0x90>
 444:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 44b:	00 
 44c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 453:	00 
 454:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45b:	00 
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 460:	83 e8 30             	sub    $0x30,%eax
 463:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 466:	83 c3 01             	add    $0x1,%ebx
 469:	0f be c0             	movsbl %al,%eax
 46c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 46f:	0f b6 03             	movzbl (%ebx),%eax
 472:	8d 70 d0             	lea    -0x30(%eax),%esi
 475:	89 f1                	mov    %esi,%ecx
 477:	80 f9 09             	cmp    $0x9,%cl
 47a:	76 e4                	jbe    460 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 47c:	0f b6 02             	movzbl (%edx),%eax
 47f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 482:	80 fb 09             	cmp    $0x9,%bl
 485:	0f 87 9d 00 00 00    	ja     528 <atof+0x158>
  double divisor = 10.0;   
 48b:	d9 05 28 0c 00 00    	flds   0xc28
  double fraction = 0.0;  
 491:	d9 ee                	fldz
 493:	eb 2d                	jmp    4c2 <atof+0xf2>
 495:	eb 29                	jmp    4c0 <atof+0xf0>
 497:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 49e:	00 
 49f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4a6:	00 
 4a7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4ae:	00 
 4af:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4b6:	00 
 4b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4be:	00 
 4bf:	90                   	nop
 4c0:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 4c2:	83 e8 30             	sub    $0x30,%eax
 4c5:	83 c2 01             	add    $0x1,%edx
 4c8:	66 98                	cbtw
 4ca:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 4ce:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 4d1:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 4d4:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 4d6:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 4d9:	de c1                	faddp  %st,%st(1)
 4db:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 4dd:	d8 0d 28 0c 00 00    	fmuls  0xc28
  while('0' <= *fractionPart && *fractionPart <= '9'){
 4e3:	80 fb 09             	cmp    $0x9,%bl
 4e6:	76 d8                	jbe    4c0 <atof+0xf0>
 4e8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 4ea:	89 7d ec             	mov    %edi,-0x14(%ebp)
 4ed:	db 45 ec             	fildl  -0x14(%ebp)
 4f0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 4f2:	db 45 e8             	fildl  -0x18(%ebp)
}
 4f5:	83 c4 0c             	add    $0xc,%esp
 4f8:	5b                   	pop    %ebx
 4f9:	5e                   	pop    %esi
 4fa:	5f                   	pop    %edi
 4fb:	5d                   	pop    %ebp
  return sign*answer;
 4fc:	de c9                	fmulp  %st,%st(1)
}
 4fe:	c3                   	ret
 4ff:	90                   	nop
 500:	ba 01 00 00 00       	mov    $0x1,%edx
 505:	e9 2b ff ff ff       	jmp    435 <atof+0x65>
 50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 510:	8d 42 01             	lea    0x1(%edx),%eax
 513:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 51a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 51c:	e9 0d ff ff ff       	jmp    42e <atof+0x5e>
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 528:	d9 ee                	fldz
 52a:	eb be                	jmp    4ea <atof+0x11a>
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	8b 45 10             	mov    0x10(%ebp),%eax
 537:	8b 55 08             	mov    0x8(%ebp),%edx
 53a:	56                   	push   %esi
 53b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 53e:	85 c0                	test   %eax,%eax
 540:	7e 13                	jle    555 <memmove+0x25>
 542:	01 d0                	add    %edx,%eax
  dst = vdst;
 544:	89 d7                	mov    %edx,%edi
 546:	66 90                	xchg   %ax,%ax
 548:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 54f:	00 
    *dst++ = *src++;
 550:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 551:	39 f8                	cmp    %edi,%eax
 553:	75 fb                	jne    550 <memmove+0x20>
  return vdst;
}
 555:	5e                   	pop    %esi
 556:	89 d0                	mov    %edx,%eax
 558:	5f                   	pop    %edi
 559:	5d                   	pop    %ebp
 55a:	c3                   	ret
 55b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000560 <fsqrt>:

double fsqrt(double n) {
 560:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 561:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 566:	89 e5                	mov    %esp,%ebp
 568:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 56b:	d9 c0                	fld    %st(0)
 56d:	d8 0d 2c 0c 00 00    	fmuls  0xc2c
    for (int i = 0; i < 20; i++) {
 573:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 57a:	00 
 57b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 580:	d9 c1                	fld    %st(1)
 582:	d8 f1                	fdiv   %st(1),%st
 584:	de c1                	faddp  %st,%st(1)
 586:	d8 0d 2c 0c 00 00    	fmuls  0xc2c
    for (int i = 0; i < 20; i++) {
 58c:	83 e8 01             	sub    $0x1,%eax
 58f:	75 ef                	jne    580 <fsqrt+0x20>
 591:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 593:	5d                   	pop    %ebp
 594:	c3                   	ret
 595:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59c:	00 
 59d:	8d 76 00             	lea    0x0(%esi),%esi

000005a0 <insertionSort>:

void insertionSort(double arr[], int n)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	8b 7d 0c             	mov    0xc(%ebp),%edi
 5a7:	56                   	push   %esi
 5a8:	8b 75 08             	mov    0x8(%ebp),%esi
 5ab:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 5ac:	83 ff 01             	cmp    $0x1,%edi
 5af:	7e 5a                	jle    60b <insertionSort+0x6b>
 5b1:	bb 01 00 00 00       	mov    $0x1,%ebx
 5b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5bd:	00 
 5be:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 5c0:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 5c3:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 5c6:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 5c9:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5d0:	00 
 5d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5d8:	00 
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5e0:	dd 40 f8             	fldl   -0x8(%eax)
 5e3:	89 c1                	mov    %eax,%ecx
 5e5:	db f1                	fcomi  %st(1),%st
 5e7:	76 17                	jbe    600 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 5e9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 5ec:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 5ee:	8d 41 f8             	lea    -0x8(%ecx),%eax
 5f1:	83 fa ff             	cmp    $0xffffffff,%edx
 5f4:	75 ea                	jne    5e0 <insertionSort+0x40>
 5f6:	89 f1                	mov    %esi,%ecx
 5f8:	eb 08                	jmp    602 <insertionSort+0x62>
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 600:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 602:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 605:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 607:	39 df                	cmp    %ebx,%edi
 609:	75 b5                	jne    5c0 <insertionSort+0x20>
    }
    
 60b:	5b                   	pop    %ebx
 60c:	5e                   	pop    %esi
 60d:	5f                   	pop    %edi
 60e:	5d                   	pop    %ebp
 60f:	c3                   	ret

00000610 <fork>:
 610:	b8 01 00 00 00       	mov    $0x1,%eax
 615:	cd 40                	int    $0x40
 617:	c3                   	ret

00000618 <exit>:
 618:	b8 02 00 00 00       	mov    $0x2,%eax
 61d:	cd 40                	int    $0x40
 61f:	c3                   	ret

00000620 <wait>:
 620:	b8 03 00 00 00       	mov    $0x3,%eax
 625:	cd 40                	int    $0x40
 627:	c3                   	ret

00000628 <pipe>:
 628:	b8 04 00 00 00       	mov    $0x4,%eax
 62d:	cd 40                	int    $0x40
 62f:	c3                   	ret

00000630 <read>:
 630:	b8 05 00 00 00       	mov    $0x5,%eax
 635:	cd 40                	int    $0x40
 637:	c3                   	ret

00000638 <write>:
 638:	b8 10 00 00 00       	mov    $0x10,%eax
 63d:	cd 40                	int    $0x40
 63f:	c3                   	ret

00000640 <close>:
 640:	b8 15 00 00 00       	mov    $0x15,%eax
 645:	cd 40                	int    $0x40
 647:	c3                   	ret

00000648 <kill>:
 648:	b8 06 00 00 00       	mov    $0x6,%eax
 64d:	cd 40                	int    $0x40
 64f:	c3                   	ret

00000650 <exec>:
 650:	b8 07 00 00 00       	mov    $0x7,%eax
 655:	cd 40                	int    $0x40
 657:	c3                   	ret

00000658 <open>:
 658:	b8 0f 00 00 00       	mov    $0xf,%eax
 65d:	cd 40                	int    $0x40
 65f:	c3                   	ret

00000660 <mknod>:
 660:	b8 11 00 00 00       	mov    $0x11,%eax
 665:	cd 40                	int    $0x40
 667:	c3                   	ret

00000668 <unlink>:
 668:	b8 12 00 00 00       	mov    $0x12,%eax
 66d:	cd 40                	int    $0x40
 66f:	c3                   	ret

00000670 <fstat>:
 670:	b8 08 00 00 00       	mov    $0x8,%eax
 675:	cd 40                	int    $0x40
 677:	c3                   	ret

00000678 <link>:
 678:	b8 13 00 00 00       	mov    $0x13,%eax
 67d:	cd 40                	int    $0x40
 67f:	c3                   	ret

00000680 <mkdir>:
 680:	b8 14 00 00 00       	mov    $0x14,%eax
 685:	cd 40                	int    $0x40
 687:	c3                   	ret

00000688 <chdir>:
 688:	b8 09 00 00 00       	mov    $0x9,%eax
 68d:	cd 40                	int    $0x40
 68f:	c3                   	ret

00000690 <dup>:
 690:	b8 0a 00 00 00       	mov    $0xa,%eax
 695:	cd 40                	int    $0x40
 697:	c3                   	ret

00000698 <getpid>:
 698:	b8 0b 00 00 00       	mov    $0xb,%eax
 69d:	cd 40                	int    $0x40
 69f:	c3                   	ret

000006a0 <sbrk>:
 6a0:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a5:	cd 40                	int    $0x40
 6a7:	c3                   	ret

000006a8 <sleep>:
 6a8:	b8 0d 00 00 00       	mov    $0xd,%eax
 6ad:	cd 40                	int    $0x40
 6af:	c3                   	ret

000006b0 <uptime>:
 6b0:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b5:	cd 40                	int    $0x40
 6b7:	c3                   	ret
 6b8:	66 90                	xchg   %ax,%ax
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6c8:	89 d1                	mov    %edx,%ecx
{
 6ca:	83 ec 3c             	sub    $0x3c,%esp
 6cd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 6d0:	85 d2                	test   %edx,%edx
 6d2:	0f 89 98 00 00 00    	jns    770 <printint+0xb0>
 6d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6dc:	0f 84 8e 00 00 00    	je     770 <printint+0xb0>
    x = -xx;
 6e2:	f7 d9                	neg    %ecx
    neg = 1;
 6e4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 6e9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6ec:	31 f6                	xor    %esi,%esi
 6ee:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6f5:	00 
 6f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fd:	00 
 6fe:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 f7                	mov    %esi,%edi
 706:	f7 f3                	div    %ebx
 708:	8d 76 01             	lea    0x1(%esi),%esi
 70b:	0f b6 92 88 0c 00 00 	movzbl 0xc88(%edx),%edx
 712:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 716:	89 ca                	mov    %ecx,%edx
 718:	89 c1                	mov    %eax,%ecx
 71a:	39 da                	cmp    %ebx,%edx
 71c:	73 e2                	jae    700 <printint+0x40>
  if(neg)
 71e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 721:	85 c0                	test   %eax,%eax
 723:	74 07                	je     72c <printint+0x6c>
    buf[i++] = '-';
 725:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 72a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 72c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 72f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 732:	01 df                	add    %ebx,%edi
 734:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73b:	00 
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 740:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 743:	83 ec 04             	sub    $0x4,%esp
 746:	88 45 d7             	mov    %al,-0x29(%ebp)
 749:	8d 45 d7             	lea    -0x29(%ebp),%eax
 74c:	6a 01                	push   $0x1
 74e:	50                   	push   %eax
 74f:	56                   	push   %esi
 750:	e8 e3 fe ff ff       	call   638 <write>
  while(--i >= 0)
 755:	89 f8                	mov    %edi,%eax
 757:	83 c4 10             	add    $0x10,%esp
 75a:	83 ef 01             	sub    $0x1,%edi
 75d:	39 d8                	cmp    %ebx,%eax
 75f:	75 df                	jne    740 <printint+0x80>
}
 761:	8d 65 f4             	lea    -0xc(%ebp),%esp
 764:	5b                   	pop    %ebx
 765:	5e                   	pop    %esi
 766:	5f                   	pop    %edi
 767:	5d                   	pop    %ebp
 768:	c3                   	ret
 769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 770:	31 c0                	xor    %eax,%eax
 772:	e9 72 ff ff ff       	jmp    6e9 <printint+0x29>
 777:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 77e:	00 
 77f:	90                   	nop

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 785:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 788:	53                   	push   %ebx
 789:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 78c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 78f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 792:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 795:	0f b6 01             	movzbl (%ecx),%eax
 798:	84 c0                	test   %al,%al
 79a:	74 2f                	je     7cb <printf+0x4b>
 79c:	31 db                	xor    %ebx,%ebx
 79e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 7a0:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 7a3:	83 fa 25             	cmp    $0x25,%edx
 7a6:	74 30                	je     7d8 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 7a8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ab:	83 ec 04             	sub    $0x4,%esp
 7ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7b1:	6a 01                	push   $0x1
 7b3:	50                   	push   %eax
 7b4:	56                   	push   %esi
 7b5:	e8 7e fe ff ff       	call   638 <write>
        putc(fd, c);
 7ba:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7bd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 7c0:	83 c3 01             	add    $0x1,%ebx
 7c3:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 7c7:	84 c0                	test   %al,%al
 7c9:	75 d5                	jne    7a0 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ce:	5b                   	pop    %ebx
 7cf:	5e                   	pop    %esi
 7d0:	5f                   	pop    %edi
 7d1:	5d                   	pop    %ebp
 7d2:	c3                   	ret
 7d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 7d8:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 7dd:	8d 7b 01             	lea    0x1(%ebx),%edi
 7e0:	84 d2                	test   %dl,%dl
 7e2:	74 e7                	je     7cb <printf+0x4b>
    c = fmt[i] & 0xff;
 7e4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 7e7:	80 fa 25             	cmp    $0x25,%dl
 7ea:	0f 84 10 02 00 00    	je     a00 <printf+0x280>
 7f0:	83 e8 63             	sub    $0x63,%eax
 7f3:	83 f8 15             	cmp    $0x15,%eax
 7f6:	77 08                	ja     800 <printf+0x80>
 7f8:	ff 24 85 30 0c 00 00 	jmp    *0xc30(,%eax,4)
 7ff:	90                   	nop
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 806:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 809:	89 fb                	mov    %edi,%ebx
 80b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 80f:	6a 01                	push   $0x1
 811:	51                   	push   %ecx
 812:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 815:	56                   	push   %esi
 816:	e8 1d fe ff ff       	call   638 <write>
        putc(fd, c);
 81b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 81f:	83 c4 0c             	add    $0xc,%esp
 822:	88 55 e7             	mov    %dl,-0x19(%ebp)
 825:	6a 01                	push   $0x1
 827:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 82a:	51                   	push   %ecx
 82b:	56                   	push   %esi
 82c:	e8 07 fe ff ff       	call   638 <write>
        putc(fd, c);
 831:	83 c4 10             	add    $0x10,%esp
 834:	eb 87                	jmp    7bd <printf+0x3d>
 836:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 83d:	00 
 83e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 840:	8b 7d d0             	mov    -0x30(%ebp),%edi
 843:	83 ec 0c             	sub    $0xc,%esp
 846:	b9 10 00 00 00       	mov    $0x10,%ecx
 84b:	8b 17                	mov    (%edi),%edx
 84d:	6a 00                	push   $0x0
 84f:	89 f0                	mov    %esi,%eax
 851:	e8 6a fe ff ff       	call   6c0 <printint>
        ap++;
 856:	83 c7 04             	add    $0x4,%edi
 859:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 85c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 85f:	83 c3 02             	add    $0x2,%ebx
 862:	83 c4 10             	add    $0x10,%esp
 865:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 869:	84 c0                	test   %al,%al
 86b:	0f 85 2f ff ff ff    	jne    7a0 <printf+0x20>
}
 871:	8d 65 f4             	lea    -0xc(%ebp),%esp
 874:	5b                   	pop    %ebx
 875:	5e                   	pop    %esi
 876:	5f                   	pop    %edi
 877:	5d                   	pop    %ebp
 878:	c3                   	ret
 879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 880:	8b 45 d0             	mov    -0x30(%ebp),%eax
 883:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 885:	d9 7d d6             	fnstcw -0x2a(%ebp)
 888:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 88c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 88f:	80 cc 0c             	or     $0xc,%ah
 892:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 896:	d9 6d d4             	fldcw  -0x2c(%ebp)
 899:	db 55 c0             	fistl  -0x40(%ebp)
 89c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 89f:	db 45 c0             	fildl  -0x40(%ebp)
 8a2:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 8a4:	d9 ee                	fldz
 8a6:	df f1                	fcomip %st(1),%st
 8a8:	0f 87 82 01 00 00    	ja     a30 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 8ae:	83 ec 0c             	sub    $0xc,%esp
 8b1:	dd 5d b0             	fstpl  -0x50(%ebp)
 8b4:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8b9:	89 f0                	mov    %esi,%eax
 8bb:	6a 01                	push   $0x1
 8bd:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 8c0:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 8c5:	e8 f6 fd ff ff       	call   6c0 <printint>
  write(fd, &c, 1);
 8ca:	83 c4 0c             	add    $0xc,%esp
 8cd:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 8d0:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 8d4:	6a 01                	push   $0x1
 8d6:	51                   	push   %ecx
 8d7:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 8da:	56                   	push   %esi
 8db:	e8 58 fd ff ff       	call   638 <write>
        putc(fd, '.'); //adds the decimal point
 8e0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 8e3:	83 c4 10             	add    $0x10,%esp
 8e6:	dd 45 b0             	fldl   -0x50(%ebp)
 8e9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 8ec:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 8ef:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 8f2:	d8 0d 28 0c 00 00    	fmuls  0xc28
          int digit = (int) fraction_part;
 8f8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 8fc:	80 cc 0c             	or     $0xc,%ah
 8ff:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 903:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 908:	d9 6d d4             	fldcw  -0x2c(%ebp)
 90b:	db 55 c8             	fistl  -0x38(%ebp)
 90e:	d9 6d d6             	fldcw  -0x2a(%ebp)
 911:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 914:	39 c3                	cmp    %eax,%ebx
 916:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 919:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 91c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 91f:	8d 43 30             	lea    0x30(%ebx),%eax
 922:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 925:	6a 01                	push   $0x1
 927:	ff 75 bc             	push   -0x44(%ebp)
 92a:	56                   	push   %esi
 92b:	e8 08 fd ff ff       	call   638 <write>
          fraction_part -= digit;
 930:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 933:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 936:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 939:	dd 45 c0             	fldl   -0x40(%ebp)
 93c:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 93e:	83 ef 01             	sub    $0x1,%edi
 941:	75 ac                	jne    8ef <printf+0x16f>
 943:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 945:	8b 45 d0             	mov    -0x30(%ebp),%eax
 948:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 94b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 94e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 951:	83 c3 02             	add    $0x2,%ebx
 954:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 958:	84 c0                	test   %al,%al
 95a:	0f 85 40 fe ff ff    	jne    7a0 <printf+0x20>
}
 960:	8d 65 f4             	lea    -0xc(%ebp),%esp
 963:	5b                   	pop    %ebx
 964:	5e                   	pop    %esi
 965:	5f                   	pop    %edi
 966:	5d                   	pop    %ebp
 967:	c3                   	ret
 968:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 96f:	00 
        s = (char*)*ap;
 970:	8b 45 d0             	mov    -0x30(%ebp),%eax
 973:	8b 38                	mov    (%eax),%edi
        ap++;
 975:	83 c0 04             	add    $0x4,%eax
 978:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 97b:	85 ff                	test   %edi,%edi
 97d:	0f 84 9d 00 00 00    	je     a20 <printf+0x2a0>
        while(*s != 0){
 983:	0f b6 07             	movzbl (%edi),%eax
 986:	84 c0                	test   %al,%al
 988:	0f 84 a9 00 00 00    	je     a37 <printf+0x2b7>
 98e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 991:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 994:	89 fb                	mov    %edi,%ebx
 996:	89 cf                	mov    %ecx,%edi
 998:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 99f:	00 
  write(fd, &c, 1);
 9a0:	83 ec 04             	sub    $0x4,%esp
 9a3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 9a6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9a9:	6a 01                	push   $0x1
 9ab:	57                   	push   %edi
 9ac:	56                   	push   %esi
 9ad:	e8 86 fc ff ff       	call   638 <write>
        while(*s != 0){
 9b2:	0f b6 03             	movzbl (%ebx),%eax
 9b5:	83 c4 10             	add    $0x10,%esp
 9b8:	84 c0                	test   %al,%al
 9ba:	75 e4                	jne    9a0 <printf+0x220>
 9bc:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 9bf:	eb 8d                	jmp    94e <printf+0x1ce>
 9c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 9c8:	8b 7d d0             	mov    -0x30(%ebp),%edi
 9cb:	83 ec 0c             	sub    $0xc,%esp
 9ce:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9d3:	8b 17                	mov    (%edi),%edx
 9d5:	6a 01                	push   $0x1
 9d7:	e9 73 fe ff ff       	jmp    84f <printf+0xcf>
 9dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 9e0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 9e3:	83 ec 04             	sub    $0x4,%esp
 9e6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 9e9:	8b 07                	mov    (%edi),%eax
 9eb:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9ee:	6a 01                	push   $0x1
 9f0:	51                   	push   %ecx
 9f1:	56                   	push   %esi
 9f2:	e8 41 fc ff ff       	call   638 <write>
 9f7:	e9 5a fe ff ff       	jmp    856 <printf+0xd6>
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a00:	83 ec 04             	sub    $0x4,%esp
 a03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 a06:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a09:	6a 01                	push   $0x1
 a0b:	51                   	push   %ecx
 a0c:	56                   	push   %esi
 a0d:	e8 26 fc ff ff       	call   638 <write>
 a12:	e9 45 fe ff ff       	jmp    85c <printf+0xdc>
 a17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a1e:	00 
 a1f:	90                   	nop
 a20:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 a25:	bf 1f 0c 00 00       	mov    $0xc1f,%edi
 a2a:	e9 5f ff ff ff       	jmp    98e <printf+0x20e>
 a2f:	90                   	nop
          fraction_part = -fraction_part;
 a30:	d9 e0                	fchs
 a32:	e9 77 fe ff ff       	jmp    8ae <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 a37:	83 c3 02             	add    $0x2,%ebx
 a3a:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 a3e:	84 c0                	test   %al,%al
 a40:	0f 85 5a fd ff ff    	jne    7a0 <printf+0x20>
 a46:	e9 80 fd ff ff       	jmp    7cb <printf+0x4b>
 a4b:	66 90                	xchg   %ax,%ax
 a4d:	66 90                	xchg   %ax,%ax
 a4f:	66 90                	xchg   %ax,%ax
 a51:	66 90                	xchg   %ax,%ax
 a53:	66 90                	xchg   %ax,%ax
 a55:	66 90                	xchg   %ax,%ax
 a57:	66 90                	xchg   %ax,%ax
 a59:	66 90                	xchg   %ax,%ax
 a5b:	66 90                	xchg   %ax,%ax
 a5d:	66 90                	xchg   %ax,%ax
 a5f:	90                   	nop

00000a60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a61:	a1 20 12 00 00       	mov    0x1220,%eax
{
 a66:	89 e5                	mov    %esp,%ebp
 a68:	57                   	push   %edi
 a69:	56                   	push   %esi
 a6a:	53                   	push   %ebx
 a6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a71:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a78:	00 
 a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a80:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a82:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a84:	39 ca                	cmp    %ecx,%edx
 a86:	73 30                	jae    ab8 <free+0x58>
 a88:	39 c1                	cmp    %eax,%ecx
 a8a:	72 04                	jb     a90 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a8c:	39 c2                	cmp    %eax,%edx
 a8e:	72 f0                	jb     a80 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a90:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a93:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a96:	39 f8                	cmp    %edi,%eax
 a98:	74 36                	je     ad0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a9d:	8b 42 04             	mov    0x4(%edx),%eax
 aa0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 aa3:	39 f1                	cmp    %esi,%ecx
 aa5:	74 40                	je     ae7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 aa7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 aa9:	5b                   	pop    %ebx
  freep = p;
 aaa:	89 15 20 12 00 00    	mov    %edx,0x1220
}
 ab0:	5e                   	pop    %esi
 ab1:	5f                   	pop    %edi
 ab2:	5d                   	pop    %ebp
 ab3:	c3                   	ret
 ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ab8:	39 c2                	cmp    %eax,%edx
 aba:	72 c4                	jb     a80 <free+0x20>
 abc:	39 c1                	cmp    %eax,%ecx
 abe:	73 c0                	jae    a80 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 ac0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ac3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ac6:	39 f8                	cmp    %edi,%eax
 ac8:	75 d0                	jne    a9a <free+0x3a>
 aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 ad0:	03 70 04             	add    0x4(%eax),%esi
 ad3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ad6:	8b 02                	mov    (%edx),%eax
 ad8:	8b 00                	mov    (%eax),%eax
 ada:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 add:	8b 42 04             	mov    0x4(%edx),%eax
 ae0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ae3:	39 f1                	cmp    %esi,%ecx
 ae5:	75 c0                	jne    aa7 <free+0x47>
    p->s.size += bp->s.size;
 ae7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 aea:	89 15 20 12 00 00    	mov    %edx,0x1220
    p->s.size += bp->s.size;
 af0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 af3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 af6:	89 0a                	mov    %ecx,(%edx)
}
 af8:	5b                   	pop    %ebx
 af9:	5e                   	pop    %esi
 afa:	5f                   	pop    %edi
 afb:	5d                   	pop    %ebp
 afc:	c3                   	ret
 afd:	8d 76 00             	lea    0x0(%esi),%esi

00000b00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b00:	55                   	push   %ebp
 b01:	89 e5                	mov    %esp,%ebp
 b03:	57                   	push   %edi
 b04:	56                   	push   %esi
 b05:	53                   	push   %ebx
 b06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b0c:	8b 15 20 12 00 00    	mov    0x1220,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b12:	8d 78 07             	lea    0x7(%eax),%edi
 b15:	c1 ef 03             	shr    $0x3,%edi
 b18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 b1b:	85 d2                	test   %edx,%edx
 b1d:	0f 84 8d 00 00 00    	je     bb0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b25:	8b 48 04             	mov    0x4(%eax),%ecx
 b28:	39 f9                	cmp    %edi,%ecx
 b2a:	73 64                	jae    b90 <malloc+0x90>
  if(nu < 4096)
 b2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b31:	39 df                	cmp    %ebx,%edi
 b33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 b36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 b3d:	eb 0a                	jmp    b49 <malloc+0x49>
 b3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b42:	8b 48 04             	mov    0x4(%eax),%ecx
 b45:	39 f9                	cmp    %edi,%ecx
 b47:	73 47                	jae    b90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b49:	89 c2                	mov    %eax,%edx
 b4b:	39 05 20 12 00 00    	cmp    %eax,0x1220
 b51:	75 ed                	jne    b40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 b53:	83 ec 0c             	sub    $0xc,%esp
 b56:	56                   	push   %esi
 b57:	e8 44 fb ff ff       	call   6a0 <sbrk>
  if(p == (char*)-1)
 b5c:	83 c4 10             	add    $0x10,%esp
 b5f:	83 f8 ff             	cmp    $0xffffffff,%eax
 b62:	74 1c                	je     b80 <malloc+0x80>
  hp->s.size = nu;
 b64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b67:	83 ec 0c             	sub    $0xc,%esp
 b6a:	83 c0 08             	add    $0x8,%eax
 b6d:	50                   	push   %eax
 b6e:	e8 ed fe ff ff       	call   a60 <free>
  return freep;
 b73:	8b 15 20 12 00 00    	mov    0x1220,%edx
      if((p = morecore(nunits)) == 0)
 b79:	83 c4 10             	add    $0x10,%esp
 b7c:	85 d2                	test   %edx,%edx
 b7e:	75 c0                	jne    b40 <malloc+0x40>
        return 0;
  }
}
 b80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b83:	31 c0                	xor    %eax,%eax
}
 b85:	5b                   	pop    %ebx
 b86:	5e                   	pop    %esi
 b87:	5f                   	pop    %edi
 b88:	5d                   	pop    %ebp
 b89:	c3                   	ret
 b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b90:	39 cf                	cmp    %ecx,%edi
 b92:	74 4c                	je     be0 <malloc+0xe0>
        p->s.size -= nunits;
 b94:	29 f9                	sub    %edi,%ecx
 b96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 b9f:	89 15 20 12 00 00    	mov    %edx,0x1220
}
 ba5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ba8:	83 c0 08             	add    $0x8,%eax
}
 bab:	5b                   	pop    %ebx
 bac:	5e                   	pop    %esi
 bad:	5f                   	pop    %edi
 bae:	5d                   	pop    %ebp
 baf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 bb0:	c7 05 20 12 00 00 24 	movl   $0x1224,0x1220
 bb7:	12 00 00 
    base.s.size = 0;
 bba:	b8 24 12 00 00       	mov    $0x1224,%eax
    base.s.ptr = freep = prevp = &base;
 bbf:	c7 05 24 12 00 00 24 	movl   $0x1224,0x1224
 bc6:	12 00 00 
    base.s.size = 0;
 bc9:	c7 05 28 12 00 00 00 	movl   $0x0,0x1228
 bd0:	00 00 00 
    if(p->s.size >= nunits){
 bd3:	e9 54 ff ff ff       	jmp    b2c <malloc+0x2c>
 bd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 bdf:	00 
        prevp->s.ptr = p->s.ptr;
 be0:	8b 08                	mov    (%eax),%ecx
 be2:	89 0a                	mov    %ecx,(%edx)
 be4:	eb b9                	jmp    b9f <malloc+0x9f>
