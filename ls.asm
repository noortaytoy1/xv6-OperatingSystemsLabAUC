
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
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
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	bb 01 00 00 00       	mov    $0x1,%ebx
  15:	51                   	push   %ecx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 31                	mov    (%ecx),%esi
  1b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1e:	83 fe 01             	cmp    $0x1,%esi
  21:	7e 27                	jle    4a <main+0x4a>
  23:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  2a:	00 
  2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
  36:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  39:	e8 c2 00 00 00       	call   100 <ls>
  for(i=1; i<argc; i++)
  3e:	83 c4 10             	add    $0x10,%esp
  41:	39 de                	cmp    %ebx,%esi
  43:	75 eb                	jne    30 <main+0x30>
  exit();
  45:	e8 8e 07 00 00       	call   7d8 <exit>
    ls(".");
  4a:	83 ec 0c             	sub    $0xc,%esp
  4d:	68 f0 0d 00 00       	push   $0xdf0
  52:	e8 a9 00 00 00       	call   100 <ls>
    exit();
  57:	e8 7c 07 00 00       	call   7d8 <exit>
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <fmtname>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 75 08             	mov    0x8(%ebp),%esi
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  68:	83 ec 0c             	sub    $0xc,%esp
  6b:	56                   	push   %esi
  6c:	e8 6f 03 00 00       	call   3e0 <strlen>
  71:	83 c4 10             	add    $0x10,%esp
  74:	01 f0                	add    %esi,%eax
  76:	89 c3                	mov    %eax,%ebx
  78:	73 0f                	jae    89 <fmtname+0x29>
  7a:	eb 12                	jmp    8e <fmtname+0x2e>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  80:	8d 43 ff             	lea    -0x1(%ebx),%eax
  83:	39 f0                	cmp    %esi,%eax
  85:	72 0a                	jb     91 <fmtname+0x31>
  87:	89 c3                	mov    %eax,%ebx
  89:	80 3b 2f             	cmpb   $0x2f,(%ebx)
  8c:	75 f2                	jne    80 <fmtname+0x20>
  p++;
  8e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
  91:	83 ec 0c             	sub    $0xc,%esp
  94:	53                   	push   %ebx
  95:	e8 46 03 00 00       	call   3e0 <strlen>
  9a:	83 c4 10             	add    $0x10,%esp
  9d:	83 f8 0d             	cmp    $0xd,%eax
  a0:	77 4a                	ja     ec <fmtname+0x8c>
  memmove(buf, p, strlen(p));
  a2:	83 ec 0c             	sub    $0xc,%esp
  a5:	53                   	push   %ebx
  a6:	e8 35 03 00 00       	call   3e0 <strlen>
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	50                   	push   %eax
  af:	53                   	push   %ebx
  b0:	68 34 12 00 00       	push   $0x1234
  b5:	e8 36 06 00 00       	call   6f0 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 1c 24             	mov    %ebx,(%esp)
  bd:	e8 1e 03 00 00       	call   3e0 <strlen>
  c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  c5:	bb 34 12 00 00       	mov    $0x1234,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	89 c6                	mov    %eax,%esi
  cc:	e8 0f 03 00 00       	call   3e0 <strlen>
  d1:	ba 0e 00 00 00       	mov    $0xe,%edx
  d6:	83 c4 0c             	add    $0xc,%esp
  d9:	29 f2                	sub    %esi,%edx
  db:	05 34 12 00 00       	add    $0x1234,%eax
  e0:	52                   	push   %edx
  e1:	6a 20                	push   $0x20
  e3:	50                   	push   %eax
  e4:	e8 27 03 00 00       	call   410 <memset>
  return buf;
  e9:	83 c4 10             	add    $0x10,%esp
}
  ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
  ef:	89 d8                	mov    %ebx,%eax
  f1:	5b                   	pop    %ebx
  f2:	5e                   	pop    %esi
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret
  f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  fc:	00 
  fd:	8d 76 00             	lea    0x0(%esi),%esi

00000100 <ls>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 64 02 00 00    	sub    $0x264,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 10f:	6a 00                	push   $0x0
 111:	57                   	push   %edi
 112:	e8 01 07 00 00       	call   818 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 88 8e 01 00 00    	js     2b0 <ls+0x1b0>
  if(fstat(fd, &st) < 0){
 122:	83 ec 08             	sub    $0x8,%esp
 125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12b:	89 c3                	mov    %eax,%ebx
 12d:	56                   	push   %esi
 12e:	50                   	push   %eax
 12f:	e8 fc 06 00 00       	call   830 <fstat>
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	0f 88 b1 01 00 00    	js     2f0 <ls+0x1f0>
  switch(st.type){
 13f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 146:	66 83 f8 01          	cmp    $0x1,%ax
 14a:	74 54                	je     1a0 <ls+0xa0>
 14c:	66 83 f8 02          	cmp    $0x2,%ax
 150:	75 37                	jne    189 <ls+0x89>
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 152:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 158:	83 ec 0c             	sub    $0xc,%esp
 15b:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 161:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 167:	57                   	push   %edi
 168:	e8 f3 fe ff ff       	call   60 <fmtname>
 16d:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 173:	59                   	pop    %ecx
 174:	5f                   	pop    %edi
 175:	52                   	push   %edx
 176:	56                   	push   %esi
 177:	6a 02                	push   $0x2
 179:	50                   	push   %eax
 17a:	68 d0 0d 00 00       	push   $0xdd0
 17f:	6a 01                	push   $0x1
 181:	e8 ba 07 00 00       	call   940 <printf>
    break;
 186:	83 c4 20             	add    $0x20,%esp
  close(fd);
 189:	83 ec 0c             	sub    $0xc,%esp
 18c:	53                   	push   %ebx
 18d:	e8 6e 06 00 00       	call   800 <close>
 192:	83 c4 10             	add    $0x10,%esp
}
 195:	8d 65 f4             	lea    -0xc(%ebp),%esp
 198:	5b                   	pop    %ebx
 199:	5e                   	pop    %esi
 19a:	5f                   	pop    %edi
 19b:	5d                   	pop    %ebp
 19c:	c3                   	ret
 19d:	8d 76 00             	lea    0x0(%esi),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1a0:	83 ec 0c             	sub    $0xc,%esp
 1a3:	57                   	push   %edi
 1a4:	e8 37 02 00 00       	call   3e0 <strlen>
 1a9:	83 c4 10             	add    $0x10,%esp
 1ac:	83 c0 10             	add    $0x10,%eax
 1af:	3d 00 02 00 00       	cmp    $0x200,%eax
 1b4:	0f 87 16 01 00 00    	ja     2d0 <ls+0x1d0>
    strcpy(buf, path);
 1ba:	83 ec 08             	sub    $0x8,%esp
 1bd:	57                   	push   %edi
 1be:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 1c4:	57                   	push   %edi
 1c5:	e8 76 01 00 00       	call   340 <strcpy>
    p = buf+strlen(buf);
 1ca:	89 3c 24             	mov    %edi,(%esp)
 1cd:	e8 0e 02 00 00       	call   3e0 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1d2:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 1d5:	01 f8                	add    %edi,%eax
    *p++ = '/';
 1d7:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 1da:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 1e0:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 1e6:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f0:	83 ec 04             	sub    $0x4,%esp
 1f3:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 1f9:	6a 10                	push   $0x10
 1fb:	50                   	push   %eax
 1fc:	53                   	push   %ebx
 1fd:	e8 ee 05 00 00       	call   7f0 <read>
 202:	83 c4 10             	add    $0x10,%esp
 205:	83 f8 10             	cmp    $0x10,%eax
 208:	0f 85 7b ff ff ff    	jne    189 <ls+0x89>
      if(de.inum == 0)
 20e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 215:	00 
 216:	74 d8                	je     1f0 <ls+0xf0>
      memmove(p, de.name, DIRSIZ);
 218:	83 ec 04             	sub    $0x4,%esp
 21b:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 221:	6a 0e                	push   $0xe
 223:	50                   	push   %eax
 224:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 22a:	e8 c1 04 00 00       	call   6f0 <memmove>
      p[DIRSIZ] = 0;
 22f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 235:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	56                   	push   %esi
 23c:	57                   	push   %edi
 23d:	e8 8e 02 00 00       	call   4d0 <stat>
 242:	83 c4 10             	add    $0x10,%esp
 245:	85 c0                	test   %eax,%eax
 247:	0f 88 cb 00 00 00    	js     318 <ls+0x218>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 24d:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 253:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 259:	83 ec 0c             	sub    $0xc,%esp
 25c:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 263:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 269:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 26f:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 275:	57                   	push   %edi
 276:	e8 e5 fd ff ff       	call   60 <fmtname>
 27b:	5a                   	pop    %edx
 27c:	59                   	pop    %ecx
 27d:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 283:	51                   	push   %ecx
 284:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 28a:	52                   	push   %edx
 28b:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 291:	50                   	push   %eax
 292:	68 d0 0d 00 00       	push   $0xdd0
 297:	6a 01                	push   $0x1
 299:	e8 a2 06 00 00       	call   940 <printf>
 29e:	83 c4 20             	add    $0x20,%esp
 2a1:	e9 4a ff ff ff       	jmp    1f0 <ls+0xf0>
 2a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ad:	00 
 2ae:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot open %s\n", path);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	57                   	push   %edi
 2b4:	68 a8 0d 00 00       	push   $0xda8
 2b9:	6a 02                	push   $0x2
 2bb:	e8 80 06 00 00       	call   940 <printf>
    return;
 2c0:	83 c4 10             	add    $0x10,%esp
}
 2c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2c6:	5b                   	pop    %ebx
 2c7:	5e                   	pop    %esi
 2c8:	5f                   	pop    %edi
 2c9:	5d                   	pop    %ebp
 2ca:	c3                   	ret
 2cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
      printf(1, "ls: path too long\n");
 2d0:	83 ec 08             	sub    $0x8,%esp
 2d3:	68 dd 0d 00 00       	push   $0xddd
 2d8:	6a 01                	push   $0x1
 2da:	e8 61 06 00 00       	call   940 <printf>
      break;
 2df:	83 c4 10             	add    $0x10,%esp
 2e2:	e9 a2 fe ff ff       	jmp    189 <ls+0x89>
 2e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ee:	00 
 2ef:	90                   	nop
    printf(2, "ls: cannot stat %s\n", path);
 2f0:	83 ec 04             	sub    $0x4,%esp
 2f3:	57                   	push   %edi
 2f4:	68 bc 0d 00 00       	push   $0xdbc
 2f9:	6a 02                	push   $0x2
 2fb:	e8 40 06 00 00       	call   940 <printf>
    close(fd);
 300:	89 1c 24             	mov    %ebx,(%esp)
 303:	e8 f8 04 00 00       	call   800 <close>
    return;
 308:	83 c4 10             	add    $0x10,%esp
}
 30b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30e:	5b                   	pop    %ebx
 30f:	5e                   	pop    %esi
 310:	5f                   	pop    %edi
 311:	5d                   	pop    %ebp
 312:	c3                   	ret
 313:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printf(1, "ls: cannot stat %s\n", buf);
 318:	83 ec 04             	sub    $0x4,%esp
 31b:	57                   	push   %edi
 31c:	68 bc 0d 00 00       	push   $0xdbc
 321:	6a 01                	push   $0x1
 323:	e8 18 06 00 00       	call   940 <printf>
        continue;
 328:	83 c4 10             	add    $0x10,%esp
 32b:	e9 c0 fe ff ff       	jmp    1f0 <ls+0xf0>
 330:	66 90                	xchg   %ax,%ax
 332:	66 90                	xchg   %ax,%ax
 334:	66 90                	xchg   %ax,%ax
 336:	66 90                	xchg   %ax,%ax
 338:	66 90                	xchg   %ax,%ax
 33a:	66 90                	xchg   %ax,%ax
 33c:	66 90                	xchg   %ax,%ax
 33e:	66 90                	xchg   %ax,%ax

00000340 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 340:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 341:	31 c0                	xor    %eax,%eax
{
 343:	89 e5                	mov    %esp,%ebp
 345:	53                   	push   %ebx
 346:	8b 4d 08             	mov    0x8(%ebp),%ecx
 349:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 357:	83 c0 01             	add    $0x1,%eax
 35a:	84 d2                	test   %dl,%dl
 35c:	75 f2                	jne    350 <strcpy+0x10>
    ;
  return os;
}
 35e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 361:	89 c8                	mov    %ecx,%eax
 363:	c9                   	leave
 364:	c3                   	ret
 365:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 36c:	00 
 36d:	8d 76 00             	lea    0x0(%esi),%esi

00000370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 55 08             	mov    0x8(%ebp),%edx
 377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 37a:	0f b6 02             	movzbl (%edx),%eax
 37d:	84 c0                	test   %al,%al
 37f:	75 2f                	jne    3b0 <strcmp+0x40>
 381:	eb 4a                	jmp    3cd <strcmp+0x5d>
 383:	eb 1b                	jmp    3a0 <strcmp+0x30>
 385:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 38c:	00 
 38d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 394:	00 
 395:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 39c:	00 
 39d:	8d 76 00             	lea    0x0(%esi),%esi
 3a0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3a4:	83 c2 01             	add    $0x1,%edx
 3a7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3aa:	84 c0                	test   %al,%al
 3ac:	74 12                	je     3c0 <strcmp+0x50>
 3ae:	89 d9                	mov    %ebx,%ecx
 3b0:	0f b6 19             	movzbl (%ecx),%ebx
 3b3:	38 c3                	cmp    %al,%bl
 3b5:	74 e9                	je     3a0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 3b7:	29 d8                	sub    %ebx,%eax
}
 3b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3bc:	c9                   	leave
 3bd:	c3                   	ret
 3be:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 3c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3c4:	31 c0                	xor    %eax,%eax
 3c6:	29 d8                	sub    %ebx,%eax
}
 3c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3cb:	c9                   	leave
 3cc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 3cd:	0f b6 19             	movzbl (%ecx),%ebx
 3d0:	31 c0                	xor    %eax,%eax
 3d2:	eb e3                	jmp    3b7 <strcmp+0x47>
 3d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3db:	00 
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <strlen>:

uint
strlen(const char *s)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3e6:	80 3a 00             	cmpb   $0x0,(%edx)
 3e9:	74 15                	je     400 <strlen+0x20>
 3eb:	31 c0                	xor    %eax,%eax
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
 3f0:	83 c0 01             	add    $0x1,%eax
 3f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3f7:	89 c1                	mov    %eax,%ecx
 3f9:	75 f5                	jne    3f0 <strlen+0x10>
    ;
  return n;
}
 3fb:	89 c8                	mov    %ecx,%eax
 3fd:	5d                   	pop    %ebp
 3fe:	c3                   	ret
 3ff:	90                   	nop
  for(n = 0; s[n]; n++)
 400:	31 c9                	xor    %ecx,%ecx
}
 402:	5d                   	pop    %ebp
 403:	89 c8                	mov    %ecx,%eax
 405:	c3                   	ret
 406:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40d:	00 
 40e:	66 90                	xchg   %ax,%ax

00000410 <memset>:

void*
memset(void *dst, int c, uint n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 417:	8b 4d 10             	mov    0x10(%ebp),%ecx
 41a:	8b 45 0c             	mov    0xc(%ebp),%eax
 41d:	89 d7                	mov    %edx,%edi
 41f:	fc                   	cld
 420:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 422:	8b 7d fc             	mov    -0x4(%ebp),%edi
 425:	89 d0                	mov    %edx,%eax
 427:	c9                   	leave
 428:	c3                   	ret
 429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000430 <strchr>:

char*
strchr(const char *s, char c)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 45 08             	mov    0x8(%ebp),%eax
 436:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 43a:	0f b6 10             	movzbl (%eax),%edx
 43d:	84 d2                	test   %dl,%dl
 43f:	75 1a                	jne    45b <strchr+0x2b>
 441:	eb 25                	jmp    468 <strchr+0x38>
 443:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 44a:	00 
 44b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 450:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 454:	83 c0 01             	add    $0x1,%eax
 457:	84 d2                	test   %dl,%dl
 459:	74 0d                	je     468 <strchr+0x38>
    if(*s == c)
 45b:	38 d1                	cmp    %dl,%cl
 45d:	75 f1                	jne    450 <strchr+0x20>
      return (char*)s;
  return 0;
}
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 468:	31 c0                	xor    %eax,%eax
}
 46a:	5d                   	pop    %ebp
 46b:	c3                   	ret
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <gets>:

char*
gets(char *buf, int max)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 475:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 478:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 479:	31 db                	xor    %ebx,%ebx
{
 47b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 47e:	eb 27                	jmp    4a7 <gets+0x37>
    cc = read(0, &c, 1);
 480:	83 ec 04             	sub    $0x4,%esp
 483:	6a 01                	push   $0x1
 485:	56                   	push   %esi
 486:	6a 00                	push   $0x0
 488:	e8 63 03 00 00       	call   7f0 <read>
    if(cc < 1)
 48d:	83 c4 10             	add    $0x10,%esp
 490:	85 c0                	test   %eax,%eax
 492:	7e 1d                	jle    4b1 <gets+0x41>
      break;
    buf[i++] = c;
 494:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 498:	8b 55 08             	mov    0x8(%ebp),%edx
 49b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 49f:	3c 0a                	cmp    $0xa,%al
 4a1:	74 10                	je     4b3 <gets+0x43>
 4a3:	3c 0d                	cmp    $0xd,%al
 4a5:	74 0c                	je     4b3 <gets+0x43>
  for(i=0; i+1 < max; ){
 4a7:	89 df                	mov    %ebx,%edi
 4a9:	83 c3 01             	add    $0x1,%ebx
 4ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4af:	7c cf                	jl     480 <gets+0x10>
 4b1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 4ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4bd:	5b                   	pop    %ebx
 4be:	5e                   	pop    %esi
 4bf:	5f                   	pop    %edi
 4c0:	5d                   	pop    %ebp
 4c1:	c3                   	ret
 4c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4c9:	00 
 4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4d5:	83 ec 08             	sub    $0x8,%esp
 4d8:	6a 00                	push   $0x0
 4da:	ff 75 08             	push   0x8(%ebp)
 4dd:	e8 36 03 00 00       	call   818 <open>
  if(fd < 0)
 4e2:	83 c4 10             	add    $0x10,%esp
 4e5:	85 c0                	test   %eax,%eax
 4e7:	78 27                	js     510 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4e9:	83 ec 08             	sub    $0x8,%esp
 4ec:	ff 75 0c             	push   0xc(%ebp)
 4ef:	89 c3                	mov    %eax,%ebx
 4f1:	50                   	push   %eax
 4f2:	e8 39 03 00 00       	call   830 <fstat>
  close(fd);
 4f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4fa:	89 c6                	mov    %eax,%esi
  close(fd);
 4fc:	e8 ff 02 00 00       	call   800 <close>
  return r;
 501:	83 c4 10             	add    $0x10,%esp
}
 504:	8d 65 f8             	lea    -0x8(%ebp),%esp
 507:	89 f0                	mov    %esi,%eax
 509:	5b                   	pop    %ebx
 50a:	5e                   	pop    %esi
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret
 50d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 510:	be ff ff ff ff       	mov    $0xffffffff,%esi
 515:	eb ed                	jmp    504 <stat+0x34>
 517:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 51e:	00 
 51f:	90                   	nop

00000520 <atoi>:

int
atoi(const char *s)
{
 520:	55                   	push   %ebp
 521:	b8 01 00 00 00       	mov    $0x1,%eax
 526:	89 e5                	mov    %esp,%ebp
 528:	56                   	push   %esi
 529:	8b 75 08             	mov    0x8(%ebp),%esi
 52c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 52d:	0f be 16             	movsbl (%esi),%edx
 530:	80 fa 2d             	cmp    $0x2d,%dl
 533:	75 0c                	jne    541 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 535:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 539:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 53e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 541:	8d 4a d0             	lea    -0x30(%edx),%ecx
 544:	80 f9 09             	cmp    $0x9,%cl
 547:	77 37                	ja     580 <atoi+0x60>
  n = 0;
 549:	31 c9                	xor    %ecx,%ecx
 54b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 552:	00 
 553:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55a:	00 
 55b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 560:	83 c6 01             	add    $0x1,%esi
 563:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 566:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 56a:	0f be 16             	movsbl (%esi),%edx
 56d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 570:	80 fb 09             	cmp    $0x9,%bl
 573:	76 eb                	jbe    560 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 575:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 576:	0f af c1             	imul   %ecx,%eax
}
 579:	5e                   	pop    %esi
 57a:	5d                   	pop    %ebp
 57b:	c3                   	ret
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 580:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 581:	31 c0                	xor    %eax,%eax
}
 583:	5e                   	pop    %esi
 584:	5d                   	pop    %ebp
 585:	c3                   	ret
 586:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 58d:	00 
 58e:	66 90                	xchg   %ax,%ax

00000590 <atof>:

double atof(const char *s){
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	56                   	push   %esi
 595:	53                   	push   %ebx
 596:	83 ec 0c             	sub    $0xc,%esp
 599:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 59c:	0f b6 0a             	movzbl (%edx),%ecx
 59f:	80 f9 2d             	cmp    $0x2d,%cl
 5a2:	0f 84 28 01 00 00    	je     6d0 <atof+0x140>
  const char *integerPart = s;
 5a8:	89 d3                	mov    %edx,%ebx
 5aa:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 5ad:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 5b4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 5b6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 5bb:	84 c9                	test   %cl,%cl
 5bd:	75 2f                	jne    5ee <atof+0x5e>
 5bf:	eb 7b                	jmp    63c <atof+0xac>
 5c1:	eb 1d                	jmp    5e0 <atof+0x50>
 5c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5ca:	00 
 5cb:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5d2:	00 
 5d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5da:	00 
 5db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 5e0:	0f b6 08             	movzbl (%eax),%ecx
 5e3:	84 c9                	test   %cl,%cl
 5e5:	0f 84 d5 00 00 00    	je     6c0 <atof+0x130>
 5eb:	83 c0 01             	add    $0x1,%eax
 5ee:	89 c2                	mov    %eax,%edx
    if(*s == c)
 5f0:	80 f9 2e             	cmp    $0x2e,%cl
 5f3:	75 eb                	jne    5e0 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 5f5:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 5f8:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 5fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5fd:	80 f9 09             	cmp    $0x9,%cl
 600:	77 3a                	ja     63c <atof+0xac>
 602:	eb 1c                	jmp    620 <atof+0x90>
 604:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 60b:	00 
 60c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 613:	00 
 614:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 61b:	00 
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 620:	83 e8 30             	sub    $0x30,%eax
 623:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 626:	83 c3 01             	add    $0x1,%ebx
 629:	0f be c0             	movsbl %al,%eax
 62c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 62f:	0f b6 03             	movzbl (%ebx),%eax
 632:	8d 70 d0             	lea    -0x30(%eax),%esi
 635:	89 f1                	mov    %esi,%ecx
 637:	80 f9 09             	cmp    $0x9,%cl
 63a:	76 e4                	jbe    620 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 63c:	0f b6 02             	movzbl (%edx),%eax
 63f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 642:	80 fb 09             	cmp    $0x9,%bl
 645:	0f 87 9d 00 00 00    	ja     6e8 <atof+0x158>
  double divisor = 10.0;   
 64b:	d9 05 fc 0d 00 00    	flds   0xdfc
  double fraction = 0.0;  
 651:	d9 ee                	fldz
 653:	eb 2d                	jmp    682 <atof+0xf2>
 655:	eb 29                	jmp    680 <atof+0xf0>
 657:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 65e:	00 
 65f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 666:	00 
 667:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 66e:	00 
 66f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 676:	00 
 677:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 67e:	00 
 67f:	90                   	nop
 680:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 682:	83 e8 30             	sub    $0x30,%eax
 685:	83 c2 01             	add    $0x1,%edx
 688:	66 98                	cbtw
 68a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 68e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 691:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 694:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 696:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 699:	de c1                	faddp  %st,%st(1)
 69b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 69d:	d8 0d fc 0d 00 00    	fmuls  0xdfc
  while('0' <= *fractionPart && *fractionPart <= '9'){
 6a3:	80 fb 09             	cmp    $0x9,%bl
 6a6:	76 d8                	jbe    680 <atof+0xf0>
 6a8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 6aa:	89 7d ec             	mov    %edi,-0x14(%ebp)
 6ad:	db 45 ec             	fildl  -0x14(%ebp)
 6b0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 6b2:	db 45 e8             	fildl  -0x18(%ebp)
}
 6b5:	83 c4 0c             	add    $0xc,%esp
 6b8:	5b                   	pop    %ebx
 6b9:	5e                   	pop    %esi
 6ba:	5f                   	pop    %edi
 6bb:	5d                   	pop    %ebp
  return sign*answer;
 6bc:	de c9                	fmulp  %st,%st(1)
}
 6be:	c3                   	ret
 6bf:	90                   	nop
 6c0:	ba 01 00 00 00       	mov    $0x1,%edx
 6c5:	e9 2b ff ff ff       	jmp    5f5 <atof+0x65>
 6ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 6d0:	8d 42 01             	lea    0x1(%edx),%eax
 6d3:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 6da:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 6dc:	e9 0d ff ff ff       	jmp    5ee <atof+0x5e>
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 6e8:	d9 ee                	fldz
 6ea:	eb be                	jmp    6aa <atof+0x11a>
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006f0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	8b 45 10             	mov    0x10(%ebp),%eax
 6f7:	8b 55 08             	mov    0x8(%ebp),%edx
 6fa:	56                   	push   %esi
 6fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6fe:	85 c0                	test   %eax,%eax
 700:	7e 13                	jle    715 <memmove+0x25>
 702:	01 d0                	add    %edx,%eax
  dst = vdst;
 704:	89 d7                	mov    %edx,%edi
 706:	66 90                	xchg   %ax,%ax
 708:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 70f:	00 
    *dst++ = *src++;
 710:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 711:	39 f8                	cmp    %edi,%eax
 713:	75 fb                	jne    710 <memmove+0x20>
  return vdst;
}
 715:	5e                   	pop    %esi
 716:	89 d0                	mov    %edx,%eax
 718:	5f                   	pop    %edi
 719:	5d                   	pop    %ebp
 71a:	c3                   	ret
 71b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000720 <fsqrt>:

double fsqrt(double n) {
 720:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 721:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 726:	89 e5                	mov    %esp,%ebp
 728:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 72b:	d9 c0                	fld    %st(0)
 72d:	d8 0d 00 0e 00 00    	fmuls  0xe00
    for (int i = 0; i < 20; i++) {
 733:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73a:	00 
 73b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 740:	d9 c1                	fld    %st(1)
 742:	d8 f1                	fdiv   %st(1),%st
 744:	de c1                	faddp  %st,%st(1)
 746:	d8 0d 00 0e 00 00    	fmuls  0xe00
    for (int i = 0; i < 20; i++) {
 74c:	83 e8 01             	sub    $0x1,%eax
 74f:	75 ef                	jne    740 <fsqrt+0x20>
 751:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 753:	5d                   	pop    %ebp
 754:	c3                   	ret
 755:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 75c:	00 
 75d:	8d 76 00             	lea    0x0(%esi),%esi

00000760 <insertionSort>:

void insertionSort(double arr[], int n)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	8b 7d 0c             	mov    0xc(%ebp),%edi
 767:	56                   	push   %esi
 768:	8b 75 08             	mov    0x8(%ebp),%esi
 76b:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 76c:	83 ff 01             	cmp    $0x1,%edi
 76f:	7e 5a                	jle    7cb <insertionSort+0x6b>
 771:	bb 01 00 00 00       	mov    $0x1,%ebx
 776:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 77d:	00 
 77e:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 780:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 783:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 786:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 789:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 790:	00 
 791:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 798:	00 
 799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a0:	dd 40 f8             	fldl   -0x8(%eax)
 7a3:	89 c1                	mov    %eax,%ecx
 7a5:	db f1                	fcomi  %st(1),%st
 7a7:	76 17                	jbe    7c0 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 7a9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 7ac:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 7ae:	8d 41 f8             	lea    -0x8(%ecx),%eax
 7b1:	83 fa ff             	cmp    $0xffffffff,%edx
 7b4:	75 ea                	jne    7a0 <insertionSort+0x40>
 7b6:	89 f1                	mov    %esi,%ecx
 7b8:	eb 08                	jmp    7c2 <insertionSort+0x62>
 7ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7c0:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 7c2:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 7c5:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 7c7:	39 df                	cmp    %ebx,%edi
 7c9:	75 b5                	jne    780 <insertionSort+0x20>
    }
    
 7cb:	5b                   	pop    %ebx
 7cc:	5e                   	pop    %esi
 7cd:	5f                   	pop    %edi
 7ce:	5d                   	pop    %ebp
 7cf:	c3                   	ret

000007d0 <fork>:
 7d0:	b8 01 00 00 00       	mov    $0x1,%eax
 7d5:	cd 40                	int    $0x40
 7d7:	c3                   	ret

000007d8 <exit>:
 7d8:	b8 02 00 00 00       	mov    $0x2,%eax
 7dd:	cd 40                	int    $0x40
 7df:	c3                   	ret

000007e0 <wait>:
 7e0:	b8 03 00 00 00       	mov    $0x3,%eax
 7e5:	cd 40                	int    $0x40
 7e7:	c3                   	ret

000007e8 <pipe>:
 7e8:	b8 04 00 00 00       	mov    $0x4,%eax
 7ed:	cd 40                	int    $0x40
 7ef:	c3                   	ret

000007f0 <read>:
 7f0:	b8 05 00 00 00       	mov    $0x5,%eax
 7f5:	cd 40                	int    $0x40
 7f7:	c3                   	ret

000007f8 <write>:
 7f8:	b8 10 00 00 00       	mov    $0x10,%eax
 7fd:	cd 40                	int    $0x40
 7ff:	c3                   	ret

00000800 <close>:
 800:	b8 15 00 00 00       	mov    $0x15,%eax
 805:	cd 40                	int    $0x40
 807:	c3                   	ret

00000808 <kill>:
 808:	b8 06 00 00 00       	mov    $0x6,%eax
 80d:	cd 40                	int    $0x40
 80f:	c3                   	ret

00000810 <exec>:
 810:	b8 07 00 00 00       	mov    $0x7,%eax
 815:	cd 40                	int    $0x40
 817:	c3                   	ret

00000818 <open>:
 818:	b8 0f 00 00 00       	mov    $0xf,%eax
 81d:	cd 40                	int    $0x40
 81f:	c3                   	ret

00000820 <mknod>:
 820:	b8 11 00 00 00       	mov    $0x11,%eax
 825:	cd 40                	int    $0x40
 827:	c3                   	ret

00000828 <unlink>:
 828:	b8 12 00 00 00       	mov    $0x12,%eax
 82d:	cd 40                	int    $0x40
 82f:	c3                   	ret

00000830 <fstat>:
 830:	b8 08 00 00 00       	mov    $0x8,%eax
 835:	cd 40                	int    $0x40
 837:	c3                   	ret

00000838 <link>:
 838:	b8 13 00 00 00       	mov    $0x13,%eax
 83d:	cd 40                	int    $0x40
 83f:	c3                   	ret

00000840 <mkdir>:
 840:	b8 14 00 00 00       	mov    $0x14,%eax
 845:	cd 40                	int    $0x40
 847:	c3                   	ret

00000848 <chdir>:
 848:	b8 09 00 00 00       	mov    $0x9,%eax
 84d:	cd 40                	int    $0x40
 84f:	c3                   	ret

00000850 <dup>:
 850:	b8 0a 00 00 00       	mov    $0xa,%eax
 855:	cd 40                	int    $0x40
 857:	c3                   	ret

00000858 <getpid>:
 858:	b8 0b 00 00 00       	mov    $0xb,%eax
 85d:	cd 40                	int    $0x40
 85f:	c3                   	ret

00000860 <sbrk>:
 860:	b8 0c 00 00 00       	mov    $0xc,%eax
 865:	cd 40                	int    $0x40
 867:	c3                   	ret

00000868 <sleep>:
 868:	b8 0d 00 00 00       	mov    $0xd,%eax
 86d:	cd 40                	int    $0x40
 86f:	c3                   	ret

00000870 <uptime>:
 870:	b8 0e 00 00 00       	mov    $0xe,%eax
 875:	cd 40                	int    $0x40
 877:	c3                   	ret
 878:	66 90                	xchg   %ax,%ax
 87a:	66 90                	xchg   %ax,%ax
 87c:	66 90                	xchg   %ax,%ax
 87e:	66 90                	xchg   %ax,%ax

00000880 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	57                   	push   %edi
 884:	56                   	push   %esi
 885:	53                   	push   %ebx
 886:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 888:	89 d1                	mov    %edx,%ecx
{
 88a:	83 ec 3c             	sub    $0x3c,%esp
 88d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 890:	85 d2                	test   %edx,%edx
 892:	0f 89 98 00 00 00    	jns    930 <printint+0xb0>
 898:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 89c:	0f 84 8e 00 00 00    	je     930 <printint+0xb0>
    x = -xx;
 8a2:	f7 d9                	neg    %ecx
    neg = 1;
 8a4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 8a9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 8ac:	31 f6                	xor    %esi,%esi
 8ae:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8b5:	00 
 8b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8bd:	00 
 8be:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 8c0:	89 c8                	mov    %ecx,%eax
 8c2:	31 d2                	xor    %edx,%edx
 8c4:	89 f7                	mov    %esi,%edi
 8c6:	f7 f3                	div    %ebx
 8c8:	8d 76 01             	lea    0x1(%esi),%esi
 8cb:	0f b6 92 5c 0e 00 00 	movzbl 0xe5c(%edx),%edx
 8d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 8d6:	89 ca                	mov    %ecx,%edx
 8d8:	89 c1                	mov    %eax,%ecx
 8da:	39 da                	cmp    %ebx,%edx
 8dc:	73 e2                	jae    8c0 <printint+0x40>
  if(neg)
 8de:	8b 45 c0             	mov    -0x40(%ebp),%eax
 8e1:	85 c0                	test   %eax,%eax
 8e3:	74 07                	je     8ec <printint+0x6c>
    buf[i++] = '-';
 8e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 8ea:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 8ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 8ef:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 8f2:	01 df                	add    %ebx,%edi
 8f4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8fb:	00 
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 900:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 903:	83 ec 04             	sub    $0x4,%esp
 906:	88 45 d7             	mov    %al,-0x29(%ebp)
 909:	8d 45 d7             	lea    -0x29(%ebp),%eax
 90c:	6a 01                	push   $0x1
 90e:	50                   	push   %eax
 90f:	56                   	push   %esi
 910:	e8 e3 fe ff ff       	call   7f8 <write>
  while(--i >= 0)
 915:	89 f8                	mov    %edi,%eax
 917:	83 c4 10             	add    $0x10,%esp
 91a:	83 ef 01             	sub    $0x1,%edi
 91d:	39 d8                	cmp    %ebx,%eax
 91f:	75 df                	jne    900 <printint+0x80>
}
 921:	8d 65 f4             	lea    -0xc(%ebp),%esp
 924:	5b                   	pop    %ebx
 925:	5e                   	pop    %esi
 926:	5f                   	pop    %edi
 927:	5d                   	pop    %ebp
 928:	c3                   	ret
 929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 930:	31 c0                	xor    %eax,%eax
 932:	e9 72 ff ff ff       	jmp    8a9 <printint+0x29>
 937:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 93e:	00 
 93f:	90                   	nop

00000940 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 940:	55                   	push   %ebp
 941:	89 e5                	mov    %esp,%ebp
 943:	57                   	push   %edi
 944:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 945:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 948:	53                   	push   %ebx
 949:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 94c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 94f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 952:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 955:	0f b6 01             	movzbl (%ecx),%eax
 958:	84 c0                	test   %al,%al
 95a:	74 2f                	je     98b <printf+0x4b>
 95c:	31 db                	xor    %ebx,%ebx
 95e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 960:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 963:	83 fa 25             	cmp    $0x25,%edx
 966:	74 30                	je     998 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 968:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 96b:	83 ec 04             	sub    $0x4,%esp
 96e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 971:	6a 01                	push   $0x1
 973:	50                   	push   %eax
 974:	56                   	push   %esi
 975:	e8 7e fe ff ff       	call   7f8 <write>
        putc(fd, c);
 97a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 97d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 980:	83 c3 01             	add    $0x1,%ebx
 983:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 987:	84 c0                	test   %al,%al
 989:	75 d5                	jne    960 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 98b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 98e:	5b                   	pop    %ebx
 98f:	5e                   	pop    %esi
 990:	5f                   	pop    %edi
 991:	5d                   	pop    %ebp
 992:	c3                   	ret
 993:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 998:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 99d:	8d 7b 01             	lea    0x1(%ebx),%edi
 9a0:	84 d2                	test   %dl,%dl
 9a2:	74 e7                	je     98b <printf+0x4b>
    c = fmt[i] & 0xff;
 9a4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 9a7:	80 fa 25             	cmp    $0x25,%dl
 9aa:	0f 84 10 02 00 00    	je     bc0 <printf+0x280>
 9b0:	83 e8 63             	sub    $0x63,%eax
 9b3:	83 f8 15             	cmp    $0x15,%eax
 9b6:	77 08                	ja     9c0 <printf+0x80>
 9b8:	ff 24 85 04 0e 00 00 	jmp    *0xe04(,%eax,4)
 9bf:	90                   	nop
  write(fd, &c, 1);
 9c0:	83 ec 04             	sub    $0x4,%esp
 9c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 9c6:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 9c9:	89 fb                	mov    %edi,%ebx
 9cb:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 9cf:	6a 01                	push   $0x1
 9d1:	51                   	push   %ecx
 9d2:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 9d5:	56                   	push   %esi
 9d6:	e8 1d fe ff ff       	call   7f8 <write>
        putc(fd, c);
 9db:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 9df:	83 c4 0c             	add    $0xc,%esp
 9e2:	88 55 e7             	mov    %dl,-0x19(%ebp)
 9e5:	6a 01                	push   $0x1
 9e7:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 9ea:	51                   	push   %ecx
 9eb:	56                   	push   %esi
 9ec:	e8 07 fe ff ff       	call   7f8 <write>
        putc(fd, c);
 9f1:	83 c4 10             	add    $0x10,%esp
 9f4:	eb 87                	jmp    97d <printf+0x3d>
 9f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 9fd:	00 
 9fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 a00:	8b 7d d0             	mov    -0x30(%ebp),%edi
 a03:	83 ec 0c             	sub    $0xc,%esp
 a06:	b9 10 00 00 00       	mov    $0x10,%ecx
 a0b:	8b 17                	mov    (%edi),%edx
 a0d:	6a 00                	push   $0x0
 a0f:	89 f0                	mov    %esi,%eax
 a11:	e8 6a fe ff ff       	call   880 <printint>
        ap++;
 a16:	83 c7 04             	add    $0x4,%edi
 a19:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 a1c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 a1f:	83 c3 02             	add    $0x2,%ebx
 a22:	83 c4 10             	add    $0x10,%esp
 a25:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 a29:	84 c0                	test   %al,%al
 a2b:	0f 85 2f ff ff ff    	jne    960 <printf+0x20>
}
 a31:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a34:	5b                   	pop    %ebx
 a35:	5e                   	pop    %esi
 a36:	5f                   	pop    %edi
 a37:	5d                   	pop    %ebp
 a38:	c3                   	ret
 a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 a40:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a43:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 a45:	d9 7d d6             	fnstcw -0x2a(%ebp)
 a48:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 a4c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 a4f:	80 cc 0c             	or     $0xc,%ah
 a52:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 a56:	d9 6d d4             	fldcw  -0x2c(%ebp)
 a59:	db 55 c0             	fistl  -0x40(%ebp)
 a5c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 a5f:	db 45 c0             	fildl  -0x40(%ebp)
 a62:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 a64:	d9 ee                	fldz
 a66:	df f1                	fcomip %st(1),%st
 a68:	0f 87 82 01 00 00    	ja     bf0 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 a6e:	83 ec 0c             	sub    $0xc,%esp
 a71:	dd 5d b0             	fstpl  -0x50(%ebp)
 a74:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a79:	89 f0                	mov    %esi,%eax
 a7b:	6a 01                	push   $0x1
 a7d:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 a80:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 a85:	e8 f6 fd ff ff       	call   880 <printint>
  write(fd, &c, 1);
 a8a:	83 c4 0c             	add    $0xc,%esp
 a8d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 a90:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 a94:	6a 01                	push   $0x1
 a96:	51                   	push   %ecx
 a97:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 a9a:	56                   	push   %esi
 a9b:	e8 58 fd ff ff       	call   7f8 <write>
        putc(fd, '.'); //adds the decimal point
 aa0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 aa3:	83 c4 10             	add    $0x10,%esp
 aa6:	dd 45 b0             	fldl   -0x50(%ebp)
 aa9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 aac:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 aaf:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 ab2:	d8 0d fc 0d 00 00    	fmuls  0xdfc
          int digit = (int) fraction_part;
 ab8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 abc:	80 cc 0c             	or     $0xc,%ah
 abf:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 ac3:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 ac8:	d9 6d d4             	fldcw  -0x2c(%ebp)
 acb:	db 55 c8             	fistl  -0x38(%ebp)
 ace:	d9 6d d6             	fldcw  -0x2a(%ebp)
 ad1:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 ad4:	39 c3                	cmp    %eax,%ebx
 ad6:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 ad9:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 adc:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 adf:	8d 43 30             	lea    0x30(%ebx),%eax
 ae2:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ae5:	6a 01                	push   $0x1
 ae7:	ff 75 bc             	push   -0x44(%ebp)
 aea:	56                   	push   %esi
 aeb:	e8 08 fd ff ff       	call   7f8 <write>
          fraction_part -= digit;
 af0:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 af3:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 af6:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 af9:	dd 45 c0             	fldl   -0x40(%ebp)
 afc:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 afe:	83 ef 01             	sub    $0x1,%edi
 b01:	75 ac                	jne    aaf <printf+0x16f>
 b03:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 b05:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b08:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 b0b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 b0e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b11:	83 c3 02             	add    $0x2,%ebx
 b14:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 b18:	84 c0                	test   %al,%al
 b1a:	0f 85 40 fe ff ff    	jne    960 <printf+0x20>
}
 b20:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b23:	5b                   	pop    %ebx
 b24:	5e                   	pop    %esi
 b25:	5f                   	pop    %edi
 b26:	5d                   	pop    %ebp
 b27:	c3                   	ret
 b28:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b2f:	00 
        s = (char*)*ap;
 b30:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b33:	8b 38                	mov    (%eax),%edi
        ap++;
 b35:	83 c0 04             	add    $0x4,%eax
 b38:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 b3b:	85 ff                	test   %edi,%edi
 b3d:	0f 84 9d 00 00 00    	je     be0 <printf+0x2a0>
        while(*s != 0){
 b43:	0f b6 07             	movzbl (%edi),%eax
 b46:	84 c0                	test   %al,%al
 b48:	0f 84 a9 00 00 00    	je     bf7 <printf+0x2b7>
 b4e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 b51:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 b54:	89 fb                	mov    %edi,%ebx
 b56:	89 cf                	mov    %ecx,%edi
 b58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b5f:	00 
  write(fd, &c, 1);
 b60:	83 ec 04             	sub    $0x4,%esp
 b63:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 b66:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 b69:	6a 01                	push   $0x1
 b6b:	57                   	push   %edi
 b6c:	56                   	push   %esi
 b6d:	e8 86 fc ff ff       	call   7f8 <write>
        while(*s != 0){
 b72:	0f b6 03             	movzbl (%ebx),%eax
 b75:	83 c4 10             	add    $0x10,%esp
 b78:	84 c0                	test   %al,%al
 b7a:	75 e4                	jne    b60 <printf+0x220>
 b7c:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 b7f:	eb 8d                	jmp    b0e <printf+0x1ce>
 b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 b88:	8b 7d d0             	mov    -0x30(%ebp),%edi
 b8b:	83 ec 0c             	sub    $0xc,%esp
 b8e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b93:	8b 17                	mov    (%edi),%edx
 b95:	6a 01                	push   $0x1
 b97:	e9 73 fe ff ff       	jmp    a0f <printf+0xcf>
 b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 ba0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 ba3:	83 ec 04             	sub    $0x4,%esp
 ba6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 ba9:	8b 07                	mov    (%edi),%eax
 bab:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 bae:	6a 01                	push   $0x1
 bb0:	51                   	push   %ecx
 bb1:	56                   	push   %esi
 bb2:	e8 41 fc ff ff       	call   7f8 <write>
 bb7:	e9 5a fe ff ff       	jmp    a16 <printf+0xd6>
 bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 bc0:	83 ec 04             	sub    $0x4,%esp
 bc3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 bc6:	88 55 e7             	mov    %dl,-0x19(%ebp)
 bc9:	6a 01                	push   $0x1
 bcb:	51                   	push   %ecx
 bcc:	56                   	push   %esi
 bcd:	e8 26 fc ff ff       	call   7f8 <write>
 bd2:	e9 45 fe ff ff       	jmp    a1c <printf+0xdc>
 bd7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 bde:	00 
 bdf:	90                   	nop
 be0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 be5:	bf f2 0d 00 00       	mov    $0xdf2,%edi
 bea:	e9 5f ff ff ff       	jmp    b4e <printf+0x20e>
 bef:	90                   	nop
          fraction_part = -fraction_part;
 bf0:	d9 e0                	fchs
 bf2:	e9 77 fe ff ff       	jmp    a6e <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 bf7:	83 c3 02             	add    $0x2,%ebx
 bfa:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 bfe:	84 c0                	test   %al,%al
 c00:	0f 85 5a fd ff ff    	jne    960 <printf+0x20>
 c06:	e9 80 fd ff ff       	jmp    98b <printf+0x4b>
 c0b:	66 90                	xchg   %ax,%ax
 c0d:	66 90                	xchg   %ax,%ax
 c0f:	66 90                	xchg   %ax,%ax
 c11:	66 90                	xchg   %ax,%ax
 c13:	66 90                	xchg   %ax,%ax
 c15:	66 90                	xchg   %ax,%ax
 c17:	66 90                	xchg   %ax,%ax
 c19:	66 90                	xchg   %ax,%ax
 c1b:	66 90                	xchg   %ax,%ax
 c1d:	66 90                	xchg   %ax,%ax
 c1f:	90                   	nop

00000c20 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 c20:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c21:	a1 44 12 00 00       	mov    0x1244,%eax
{
 c26:	89 e5                	mov    %esp,%ebp
 c28:	57                   	push   %edi
 c29:	56                   	push   %esi
 c2a:	53                   	push   %ebx
 c2b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 c2e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c31:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 c38:	00 
 c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 c40:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c42:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c44:	39 ca                	cmp    %ecx,%edx
 c46:	73 30                	jae    c78 <free+0x58>
 c48:	39 c1                	cmp    %eax,%ecx
 c4a:	72 04                	jb     c50 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c4c:	39 c2                	cmp    %eax,%edx
 c4e:	72 f0                	jb     c40 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 c50:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c53:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c56:	39 f8                	cmp    %edi,%eax
 c58:	74 36                	je     c90 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 c5a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 c5d:	8b 42 04             	mov    0x4(%edx),%eax
 c60:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 c63:	39 f1                	cmp    %esi,%ecx
 c65:	74 40                	je     ca7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 c67:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 c69:	5b                   	pop    %ebx
  freep = p;
 c6a:	89 15 44 12 00 00    	mov    %edx,0x1244
}
 c70:	5e                   	pop    %esi
 c71:	5f                   	pop    %edi
 c72:	5d                   	pop    %ebp
 c73:	c3                   	ret
 c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c78:	39 c2                	cmp    %eax,%edx
 c7a:	72 c4                	jb     c40 <free+0x20>
 c7c:	39 c1                	cmp    %eax,%ecx
 c7e:	73 c0                	jae    c40 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 c80:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c83:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c86:	39 f8                	cmp    %edi,%eax
 c88:	75 d0                	jne    c5a <free+0x3a>
 c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 c90:	03 70 04             	add    0x4(%eax),%esi
 c93:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 c96:	8b 02                	mov    (%edx),%eax
 c98:	8b 00                	mov    (%eax),%eax
 c9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 c9d:	8b 42 04             	mov    0x4(%edx),%eax
 ca0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ca3:	39 f1                	cmp    %esi,%ecx
 ca5:	75 c0                	jne    c67 <free+0x47>
    p->s.size += bp->s.size;
 ca7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 caa:	89 15 44 12 00 00    	mov    %edx,0x1244
    p->s.size += bp->s.size;
 cb0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 cb3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 cb6:	89 0a                	mov    %ecx,(%edx)
}
 cb8:	5b                   	pop    %ebx
 cb9:	5e                   	pop    %esi
 cba:	5f                   	pop    %edi
 cbb:	5d                   	pop    %ebp
 cbc:	c3                   	ret
 cbd:	8d 76 00             	lea    0x0(%esi),%esi

00000cc0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 cc0:	55                   	push   %ebp
 cc1:	89 e5                	mov    %esp,%ebp
 cc3:	57                   	push   %edi
 cc4:	56                   	push   %esi
 cc5:	53                   	push   %ebx
 cc6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 cc9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 ccc:	8b 15 44 12 00 00    	mov    0x1244,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 cd2:	8d 78 07             	lea    0x7(%eax),%edi
 cd5:	c1 ef 03             	shr    $0x3,%edi
 cd8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 cdb:	85 d2                	test   %edx,%edx
 cdd:	0f 84 8d 00 00 00    	je     d70 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ce3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ce5:	8b 48 04             	mov    0x4(%eax),%ecx
 ce8:	39 f9                	cmp    %edi,%ecx
 cea:	73 64                	jae    d50 <malloc+0x90>
  if(nu < 4096)
 cec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 cf1:	39 df                	cmp    %ebx,%edi
 cf3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 cf6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 cfd:	eb 0a                	jmp    d09 <malloc+0x49>
 cff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d00:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 d02:	8b 48 04             	mov    0x4(%eax),%ecx
 d05:	39 f9                	cmp    %edi,%ecx
 d07:	73 47                	jae    d50 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 d09:	89 c2                	mov    %eax,%edx
 d0b:	39 05 44 12 00 00    	cmp    %eax,0x1244
 d11:	75 ed                	jne    d00 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 d13:	83 ec 0c             	sub    $0xc,%esp
 d16:	56                   	push   %esi
 d17:	e8 44 fb ff ff       	call   860 <sbrk>
  if(p == (char*)-1)
 d1c:	83 c4 10             	add    $0x10,%esp
 d1f:	83 f8 ff             	cmp    $0xffffffff,%eax
 d22:	74 1c                	je     d40 <malloc+0x80>
  hp->s.size = nu;
 d24:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 d27:	83 ec 0c             	sub    $0xc,%esp
 d2a:	83 c0 08             	add    $0x8,%eax
 d2d:	50                   	push   %eax
 d2e:	e8 ed fe ff ff       	call   c20 <free>
  return freep;
 d33:	8b 15 44 12 00 00    	mov    0x1244,%edx
      if((p = morecore(nunits)) == 0)
 d39:	83 c4 10             	add    $0x10,%esp
 d3c:	85 d2                	test   %edx,%edx
 d3e:	75 c0                	jne    d00 <malloc+0x40>
        return 0;
  }
}
 d40:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 d43:	31 c0                	xor    %eax,%eax
}
 d45:	5b                   	pop    %ebx
 d46:	5e                   	pop    %esi
 d47:	5f                   	pop    %edi
 d48:	5d                   	pop    %ebp
 d49:	c3                   	ret
 d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 d50:	39 cf                	cmp    %ecx,%edi
 d52:	74 4c                	je     da0 <malloc+0xe0>
        p->s.size -= nunits;
 d54:	29 f9                	sub    %edi,%ecx
 d56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 d59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 d5c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 d5f:	89 15 44 12 00 00    	mov    %edx,0x1244
}
 d65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 d68:	83 c0 08             	add    $0x8,%eax
}
 d6b:	5b                   	pop    %ebx
 d6c:	5e                   	pop    %esi
 d6d:	5f                   	pop    %edi
 d6e:	5d                   	pop    %ebp
 d6f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 d70:	c7 05 44 12 00 00 48 	movl   $0x1248,0x1244
 d77:	12 00 00 
    base.s.size = 0;
 d7a:	b8 48 12 00 00       	mov    $0x1248,%eax
    base.s.ptr = freep = prevp = &base;
 d7f:	c7 05 48 12 00 00 48 	movl   $0x1248,0x1248
 d86:	12 00 00 
    base.s.size = 0;
 d89:	c7 05 4c 12 00 00 00 	movl   $0x0,0x124c
 d90:	00 00 00 
    if(p->s.size >= nunits){
 d93:	e9 54 ff ff ff       	jmp    cec <malloc+0x2c>
 d98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 d9f:	00 
        prevp->s.ptr = p->s.ptr;
 da0:	8b 08                	mov    (%eax),%ecx
 da2:	89 0a                	mov    %ecx,(%edx)
 da4:	eb b9                	jmp    d5f <malloc+0x9f>
