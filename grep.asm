
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
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
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
  1c:	83 f8 01             	cmp    $0x1,%eax
  1f:	7e 6f                	jle    90 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
  27:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
  2b:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
  30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
  33:	74 6e                	je     a3 <main+0xa3>
  35:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  3c:	00 
  3d:	8d 76 00             	lea    0x0(%esi),%esi
    if((fd = open(argv[i], 0)) < 0){
  40:	83 ec 08             	sub    $0x8,%esp
  43:	6a 00                	push   $0x0
  45:	ff 33                	push   (%ebx)
  47:	e8 4c 08 00 00       	call   898 <open>
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	89 c7                	mov    %eax,%edi
  51:	85 c0                	test   %eax,%eax
  53:	78 27                	js     7c <main+0x7c>
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
  55:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
  58:	83 c6 01             	add    $0x1,%esi
  5b:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
  5e:	50                   	push   %eax
  5f:	ff 75 e0             	push   -0x20(%ebp)
  62:	e8 a9 01 00 00       	call   210 <grep>
    close(fd);
  67:	89 3c 24             	mov    %edi,(%esp)
  6a:	e8 11 08 00 00       	call   880 <close>
  for(i = 2; i < argc; i++){
  6f:	83 c4 10             	add    $0x10,%esp
  72:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  75:	7f c9                	jg     40 <main+0x40>
  }
  exit();
  77:	e8 dc 07 00 00       	call   858 <exit>
      printf(1, "grep: cannot open %s\n", argv[i]);
  7c:	50                   	push   %eax
  7d:	ff 33                	push   (%ebx)
  7f:	68 48 0e 00 00       	push   $0xe48
  84:	6a 01                	push   $0x1
  86:	e8 35 09 00 00       	call   9c0 <printf>
      exit();
  8b:	e8 c8 07 00 00       	call   858 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
  90:	51                   	push   %ecx
  91:	51                   	push   %ecx
  92:	68 28 0e 00 00       	push   $0xe28
  97:	6a 02                	push   $0x2
  99:	e8 22 09 00 00       	call   9c0 <printf>
    exit();
  9e:	e8 b5 07 00 00       	call   858 <exit>
    grep(pattern, 0);
  a3:	52                   	push   %edx
  a4:	52                   	push   %edx
  a5:	6a 00                	push   $0x0
  a7:	50                   	push   %eax
  a8:	e8 63 01 00 00       	call   210 <grep>
    exit();
  ad:	e8 a6 07 00 00       	call   858 <exit>
  b2:	66 90                	xchg   %ax,%ax
  b4:	66 90                	xchg   %ax,%ax
  b6:	66 90                	xchg   %ax,%ax
  b8:	66 90                	xchg   %ax,%ax
  ba:	66 90                	xchg   %ax,%ax
  bc:	66 90                	xchg   %ax,%ax
  be:	66 90                	xchg   %ax,%ax

000000c0 <matchhere>:
  return 0;
}

// matchhere: search for re at beginning of text
int matchhere(char *re, char *text)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  c6:	83 ec 1c             	sub    $0x1c,%esp
  c9:	8b 75 08             	mov    0x8(%ebp),%esi
  cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '\0')
  cf:	0f b6 16             	movzbl (%esi),%edx
  d2:	84 d2                	test   %dl,%dl
  d4:	0f 84 a6 00 00 00    	je     180 <matchhere+0xc0>
    return 1;
  if(re[1] == '*')
  da:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  de:	3c 2a                	cmp    $0x2a,%al
  e0:	74 3f                	je     121 <matchhere+0x61>
  e2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  e9:	00 
  ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return matchstar(re[0], re+2, text);
  if(re[0] == '$' && re[1] == '\0')
    return *text == '\0';
  f0:	0f b6 0b             	movzbl (%ebx),%ecx
  if(re[0] == '$' && re[1] == '\0')
  f3:	80 fa 24             	cmp    $0x24,%dl
  f6:	74 68                	je     160 <matchhere+0xa0>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
  f8:	84 c9                	test   %cl,%cl
  fa:	0f 84 90 00 00 00    	je     190 <matchhere+0xd0>
 100:	80 fa 2e             	cmp    $0x2e,%dl
 103:	74 08                	je     10d <matchhere+0x4d>
 105:	38 d1                	cmp    %dl,%cl
 107:	0f 85 83 00 00 00    	jne    190 <matchhere+0xd0>
    return matchhere(re+1, text+1);
 10d:	83 c3 01             	add    $0x1,%ebx
 110:	83 c6 01             	add    $0x1,%esi
  if(re[0] == '\0')
 113:	84 c0                	test   %al,%al
 115:	74 69                	je     180 <matchhere+0xc0>
{
 117:	89 c2                	mov    %eax,%edx
  if(re[1] == '*')
 119:	0f b6 46 01          	movzbl 0x1(%esi),%eax
 11d:	3c 2a                	cmp    $0x2a,%al
 11f:	75 cf                	jne    f0 <matchhere+0x30>
    return matchstar(re[0], re+2, text);
 121:	83 c6 02             	add    $0x2,%esi
int matchstar(int c, char *re, char *text)
{
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 124:	80 fa 2e             	cmp    $0x2e,%dl
 127:	0f 94 c0             	sete   %al
 12a:	89 c7                	mov    %eax,%edi
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(matchhere(re, text))
 130:	83 ec 08             	sub    $0x8,%esp
 133:	88 55 e7             	mov    %dl,-0x19(%ebp)
 136:	53                   	push   %ebx
 137:	56                   	push   %esi
 138:	e8 83 ff ff ff       	call   c0 <matchhere>
 13d:	83 c4 10             	add    $0x10,%esp
 140:	85 c0                	test   %eax,%eax
 142:	75 41                	jne    185 <matchhere+0xc5>
  }while(*text!='\0' && (*text++==c || c=='.'));
 144:	0f b6 0b             	movzbl (%ebx),%ecx
 147:	84 c9                	test   %cl,%cl
 149:	74 3a                	je     185 <matchhere+0xc5>
 14b:	0f b6 55 e7          	movzbl -0x19(%ebp),%edx
 14f:	83 c3 01             	add    $0x1,%ebx
 152:	38 d1                	cmp    %dl,%cl
 154:	74 da                	je     130 <matchhere+0x70>
 156:	89 f9                	mov    %edi,%ecx
 158:	84 c9                	test   %cl,%cl
 15a:	75 d4                	jne    130 <matchhere+0x70>
 15c:	eb 27                	jmp    185 <matchhere+0xc5>
 15e:	66 90                	xchg   %ax,%ax
  if(re[0] == '$' && re[1] == '\0')
 160:	84 c0                	test   %al,%al
 162:	74 36                	je     19a <matchhere+0xda>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 164:	84 c9                	test   %cl,%cl
 166:	74 28                	je     190 <matchhere+0xd0>
 168:	80 f9 24             	cmp    $0x24,%cl
 16b:	75 23                	jne    190 <matchhere+0xd0>
    return matchhere(re+1, text+1);
 16d:	83 c3 01             	add    $0x1,%ebx
 170:	83 c6 01             	add    $0x1,%esi
{
 173:	89 c2                	mov    %eax,%edx
 175:	eb a2                	jmp    119 <matchhere+0x59>
 177:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 17e:	00 
 17f:	90                   	nop
    return 1;
 180:	b8 01 00 00 00       	mov    $0x1,%eax
}
 185:	8d 65 f4             	lea    -0xc(%ebp),%esp
 188:	5b                   	pop    %ebx
 189:	5e                   	pop    %esi
 18a:	5f                   	pop    %edi
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret
 18d:	8d 76 00             	lea    0x0(%esi),%esi
 190:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
 193:	31 c0                	xor    %eax,%eax
}
 195:	5b                   	pop    %ebx
 196:	5e                   	pop    %esi
 197:	5f                   	pop    %edi
 198:	5d                   	pop    %ebp
 199:	c3                   	ret
    return *text == '\0';
 19a:	31 c0                	xor    %eax,%eax
 19c:	84 c9                	test   %cl,%cl
 19e:	0f 94 c0             	sete   %al
 1a1:	eb e2                	jmp    185 <matchhere+0xc5>
 1a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1aa:	00 
 1ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000001b0 <match>:
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
 1b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 1b8:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(re[0] == '^')
 1bb:	80 3b 5e             	cmpb   $0x5e,(%ebx)
 1be:	75 11                	jne    1d1 <match+0x21>
 1c0:	eb 2e                	jmp    1f0 <match+0x40>
 1c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 1c8:	83 c6 01             	add    $0x1,%esi
 1cb:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
 1cf:	74 11                	je     1e2 <match+0x32>
    if(matchhere(re, text))
 1d1:	83 ec 08             	sub    $0x8,%esp
 1d4:	56                   	push   %esi
 1d5:	53                   	push   %ebx
 1d6:	e8 e5 fe ff ff       	call   c0 <matchhere>
 1db:	83 c4 10             	add    $0x10,%esp
 1de:	85 c0                	test   %eax,%eax
 1e0:	74 e6                	je     1c8 <match+0x18>
}
 1e2:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1e5:	5b                   	pop    %ebx
 1e6:	5e                   	pop    %esi
 1e7:	5d                   	pop    %ebp
 1e8:	c3                   	ret
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return matchhere(re+1, text);
 1f0:	83 c3 01             	add    $0x1,%ebx
 1f3:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
 1f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1f9:	5b                   	pop    %ebx
 1fa:	5e                   	pop    %esi
 1fb:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 1fc:	e9 bf fe ff ff       	jmp    c0 <matchhere>
 201:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 208:	00 
 209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000210 <grep>:
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
  m = 0;
 214:	31 ff                	xor    %edi,%edi
{
 216:	56                   	push   %esi
 217:	53                   	push   %ebx
 218:	83 ec 1c             	sub    $0x1c,%esp
 21b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 21e:	89 7d e0             	mov    %edi,-0x20(%ebp)
    return matchhere(re+1, text);
 221:	8d 43 01             	lea    0x1(%ebx),%eax
 224:	89 45 dc             	mov    %eax,-0x24(%ebp)
 227:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 22e:	00 
 22f:	90                   	nop
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 230:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 233:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 238:	83 ec 04             	sub    $0x4,%esp
 23b:	29 c8                	sub    %ecx,%eax
 23d:	50                   	push   %eax
 23e:	8d 81 00 13 00 00    	lea    0x1300(%ecx),%eax
 244:	50                   	push   %eax
 245:	ff 75 0c             	push   0xc(%ebp)
 248:	e8 23 06 00 00       	call   870 <read>
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	0f 8e fd 00 00 00    	jle    355 <grep+0x145>
    m += n;
 258:	01 45 e0             	add    %eax,-0x20(%ebp)
 25b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    buf[m] = '\0';
 25e:	bf 00 13 00 00       	mov    $0x1300,%edi
 263:	89 de                	mov    %ebx,%esi
 265:	c6 81 00 13 00 00 00 	movb   $0x0,0x1300(%ecx)
    while((q = strchr(p, '\n')) != 0){
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 270:	83 ec 08             	sub    $0x8,%esp
 273:	6a 0a                	push   $0xa
 275:	57                   	push   %edi
 276:	e8 35 02 00 00       	call   4b0 <strchr>
 27b:	83 c4 10             	add    $0x10,%esp
 27e:	89 c2                	mov    %eax,%edx
 280:	85 c0                	test   %eax,%eax
 282:	0f 84 88 00 00 00    	je     310 <grep+0x100>
      *q = 0;
 288:	c6 02 00             	movb   $0x0,(%edx)
  if(re[0] == '^')
 28b:	80 3e 5e             	cmpb   $0x5e,(%esi)
 28e:	74 58                	je     2e8 <grep+0xd8>
 290:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 293:	89 d3                	mov    %edx,%ebx
 295:	eb 12                	jmp    2a9 <grep+0x99>
 297:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 29e:	00 
 29f:	90                   	nop
  }while(*text++ != '\0');
 2a0:	83 c7 01             	add    $0x1,%edi
 2a3:	80 7f ff 00          	cmpb   $0x0,-0x1(%edi)
 2a7:	74 37                	je     2e0 <grep+0xd0>
    if(matchhere(re, text))
 2a9:	83 ec 08             	sub    $0x8,%esp
 2ac:	57                   	push   %edi
 2ad:	56                   	push   %esi
 2ae:	e8 0d fe ff ff       	call   c0 <matchhere>
 2b3:	83 c4 10             	add    $0x10,%esp
 2b6:	85 c0                	test   %eax,%eax
 2b8:	74 e6                	je     2a0 <grep+0x90>
        write(1, p, q+1 - p);
 2ba:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 2bd:	89 da                	mov    %ebx,%edx
 2bf:	8d 5b 01             	lea    0x1(%ebx),%ebx
 2c2:	89 d8                	mov    %ebx,%eax
 2c4:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
 2c7:	c6 02 0a             	movb   $0xa,(%edx)
        write(1, p, q+1 - p);
 2ca:	29 f8                	sub    %edi,%eax
 2cc:	50                   	push   %eax
 2cd:	57                   	push   %edi
 2ce:	89 df                	mov    %ebx,%edi
 2d0:	6a 01                	push   $0x1
 2d2:	e8 a1 05 00 00       	call   878 <write>
 2d7:	83 c4 10             	add    $0x10,%esp
 2da:	eb 94                	jmp    270 <grep+0x60>
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	8d 7b 01             	lea    0x1(%ebx),%edi
      p = q+1;
 2e3:	eb 8b                	jmp    270 <grep+0x60>
 2e5:	8d 76 00             	lea    0x0(%esi),%esi
    return matchhere(re+1, text);
 2e8:	83 ec 08             	sub    $0x8,%esp
 2eb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 2ee:	57                   	push   %edi
 2ef:	ff 75 dc             	push   -0x24(%ebp)
 2f2:	e8 c9 fd ff ff       	call   c0 <matchhere>
        write(1, p, q+1 - p);
 2f7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    return matchhere(re+1, text);
 2fa:	83 c4 10             	add    $0x10,%esp
        write(1, p, q+1 - p);
 2fd:	8d 5a 01             	lea    0x1(%edx),%ebx
      if(match(pattern, p)){
 300:	85 c0                	test   %eax,%eax
 302:	75 be                	jne    2c2 <grep+0xb2>
        write(1, p, q+1 - p);
 304:	89 df                	mov    %ebx,%edi
 306:	e9 65 ff ff ff       	jmp    270 <grep+0x60>
 30b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(p == buf)
 310:	89 f3                	mov    %esi,%ebx
 312:	81 ff 00 13 00 00    	cmp    $0x1300,%edi
 318:	74 2f                	je     349 <grep+0x139>
    if(m > 0){
 31a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 31d:	85 c0                	test   %eax,%eax
 31f:	0f 8e 0b ff ff ff    	jle    230 <grep+0x20>
      m -= p - buf;
 325:	89 f8                	mov    %edi,%eax
      memmove(buf, p, m);
 327:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 32a:	2d 00 13 00 00       	sub    $0x1300,%eax
 32f:	29 45 e0             	sub    %eax,-0x20(%ebp)
 332:	8b 4d e0             	mov    -0x20(%ebp),%ecx
      memmove(buf, p, m);
 335:	51                   	push   %ecx
 336:	57                   	push   %edi
 337:	68 00 13 00 00       	push   $0x1300
 33c:	e8 2f 04 00 00       	call   770 <memmove>
 341:	83 c4 10             	add    $0x10,%esp
 344:	e9 e7 fe ff ff       	jmp    230 <grep+0x20>
      m = 0;
 349:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 350:	e9 db fe ff ff       	jmp    230 <grep+0x20>
}
 355:	8d 65 f4             	lea    -0xc(%ebp),%esp
 358:	5b                   	pop    %ebx
 359:	5e                   	pop    %esi
 35a:	5f                   	pop    %edi
 35b:	5d                   	pop    %ebp
 35c:	c3                   	ret
 35d:	8d 76 00             	lea    0x0(%esi),%esi

00000360 <matchstar>:
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
 365:	53                   	push   %ebx
 366:	83 ec 1c             	sub    $0x1c,%esp
 369:	8b 5d 08             	mov    0x8(%ebp),%ebx
 36c:	8b 75 0c             	mov    0xc(%ebp),%esi
 36f:	8b 7d 10             	mov    0x10(%ebp),%edi
  }while(*text!='\0' && (*text++==c || c=='.'));
 372:	83 fb 2e             	cmp    $0x2e,%ebx
 375:	0f 94 45 e7          	sete   -0x19(%ebp)
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(matchhere(re, text))
 380:	83 ec 08             	sub    $0x8,%esp
 383:	57                   	push   %edi
 384:	56                   	push   %esi
 385:	e8 36 fd ff ff       	call   c0 <matchhere>
 38a:	83 c4 10             	add    $0x10,%esp
 38d:	89 c1                	mov    %eax,%ecx
 38f:	85 c0                	test   %eax,%eax
 391:	75 14                	jne    3a7 <matchstar+0x47>
  }while(*text!='\0' && (*text++==c || c=='.'));
 393:	0f be 07             	movsbl (%edi),%eax
 396:	84 c0                	test   %al,%al
 398:	74 0d                	je     3a7 <matchstar+0x47>
 39a:	83 c7 01             	add    $0x1,%edi
 39d:	39 d8                	cmp    %ebx,%eax
 39f:	74 df                	je     380 <matchstar+0x20>
 3a1:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
 3a5:	75 d9                	jne    380 <matchstar+0x20>
}
 3a7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3aa:	89 c8                	mov    %ecx,%eax
 3ac:	5b                   	pop    %ebx
 3ad:	5e                   	pop    %esi
 3ae:	5f                   	pop    %edi
 3af:	5d                   	pop    %ebp
 3b0:	c3                   	ret
 3b1:	66 90                	xchg   %ax,%ax
 3b3:	66 90                	xchg   %ax,%ax
 3b5:	66 90                	xchg   %ax,%ax
 3b7:	66 90                	xchg   %ax,%ax
 3b9:	66 90                	xchg   %ax,%ax
 3bb:	66 90                	xchg   %ax,%ax
 3bd:	66 90                	xchg   %ax,%ax
 3bf:	90                   	nop

000003c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3c1:	31 c0                	xor    %eax,%eax
{
 3c3:	89 e5                	mov    %esp,%ebp
 3c5:	53                   	push   %ebx
 3c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3d7:	83 c0 01             	add    $0x1,%eax
 3da:	84 d2                	test   %dl,%dl
 3dc:	75 f2                	jne    3d0 <strcpy+0x10>
    ;
  return os;
}
 3de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e1:	89 c8                	mov    %ecx,%eax
 3e3:	c9                   	leave
 3e4:	c3                   	ret
 3e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ec:	00 
 3ed:	8d 76 00             	lea    0x0(%esi),%esi

000003f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 55 08             	mov    0x8(%ebp),%edx
 3f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3fa:	0f b6 02             	movzbl (%edx),%eax
 3fd:	84 c0                	test   %al,%al
 3ff:	75 2f                	jne    430 <strcmp+0x40>
 401:	eb 4a                	jmp    44d <strcmp+0x5d>
 403:	eb 1b                	jmp    420 <strcmp+0x30>
 405:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40c:	00 
 40d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 414:	00 
 415:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41c:	00 
 41d:	8d 76 00             	lea    0x0(%esi),%esi
 420:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 424:	83 c2 01             	add    $0x1,%edx
 427:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 42a:	84 c0                	test   %al,%al
 42c:	74 12                	je     440 <strcmp+0x50>
 42e:	89 d9                	mov    %ebx,%ecx
 430:	0f b6 19             	movzbl (%ecx),%ebx
 433:	38 c3                	cmp    %al,%bl
 435:	74 e9                	je     420 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 437:	29 d8                	sub    %ebx,%eax
}
 439:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 43c:	c9                   	leave
 43d:	c3                   	ret
 43e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 440:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 444:	31 c0                	xor    %eax,%eax
 446:	29 d8                	sub    %ebx,%eax
}
 448:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 44b:	c9                   	leave
 44c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 44d:	0f b6 19             	movzbl (%ecx),%ebx
 450:	31 c0                	xor    %eax,%eax
 452:	eb e3                	jmp    437 <strcmp+0x47>
 454:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45b:	00 
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <strlen>:

uint
strlen(const char *s)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 466:	80 3a 00             	cmpb   $0x0,(%edx)
 469:	74 15                	je     480 <strlen+0x20>
 46b:	31 c0                	xor    %eax,%eax
 46d:	8d 76 00             	lea    0x0(%esi),%esi
 470:	83 c0 01             	add    $0x1,%eax
 473:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 477:	89 c1                	mov    %eax,%ecx
 479:	75 f5                	jne    470 <strlen+0x10>
    ;
  return n;
}
 47b:	89 c8                	mov    %ecx,%eax
 47d:	5d                   	pop    %ebp
 47e:	c3                   	ret
 47f:	90                   	nop
  for(n = 0; s[n]; n++)
 480:	31 c9                	xor    %ecx,%ecx
}
 482:	5d                   	pop    %ebp
 483:	89 c8                	mov    %ecx,%eax
 485:	c3                   	ret
 486:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 48d:	00 
 48e:	66 90                	xchg   %ax,%ax

00000490 <memset>:

void*
memset(void *dst, int c, uint n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 497:	8b 4d 10             	mov    0x10(%ebp),%ecx
 49a:	8b 45 0c             	mov    0xc(%ebp),%eax
 49d:	89 d7                	mov    %edx,%edi
 49f:	fc                   	cld
 4a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4a5:	89 d0                	mov    %edx,%eax
 4a7:	c9                   	leave
 4a8:	c3                   	ret
 4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004b0 <strchr>:

char*
strchr(const char *s, char c)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4ba:	0f b6 10             	movzbl (%eax),%edx
 4bd:	84 d2                	test   %dl,%dl
 4bf:	75 1a                	jne    4db <strchr+0x2b>
 4c1:	eb 25                	jmp    4e8 <strchr+0x38>
 4c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4ca:	00 
 4cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 4d0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4d4:	83 c0 01             	add    $0x1,%eax
 4d7:	84 d2                	test   %dl,%dl
 4d9:	74 0d                	je     4e8 <strchr+0x38>
    if(*s == c)
 4db:	38 d1                	cmp    %dl,%cl
 4dd:	75 f1                	jne    4d0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 4df:	5d                   	pop    %ebp
 4e0:	c3                   	ret
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4e8:	31 c0                	xor    %eax,%eax
}
 4ea:	5d                   	pop    %ebp
 4eb:	c3                   	ret
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004f0 <gets>:

char*
gets(char *buf, int max)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4f5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 4f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4f9:	31 db                	xor    %ebx,%ebx
{
 4fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4fe:	eb 27                	jmp    527 <gets+0x37>
    cc = read(0, &c, 1);
 500:	83 ec 04             	sub    $0x4,%esp
 503:	6a 01                	push   $0x1
 505:	56                   	push   %esi
 506:	6a 00                	push   $0x0
 508:	e8 63 03 00 00       	call   870 <read>
    if(cc < 1)
 50d:	83 c4 10             	add    $0x10,%esp
 510:	85 c0                	test   %eax,%eax
 512:	7e 1d                	jle    531 <gets+0x41>
      break;
    buf[i++] = c;
 514:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 518:	8b 55 08             	mov    0x8(%ebp),%edx
 51b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 51f:	3c 0a                	cmp    $0xa,%al
 521:	74 10                	je     533 <gets+0x43>
 523:	3c 0d                	cmp    $0xd,%al
 525:	74 0c                	je     533 <gets+0x43>
  for(i=0; i+1 < max; ){
 527:	89 df                	mov    %ebx,%edi
 529:	83 c3 01             	add    $0x1,%ebx
 52c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 52f:	7c cf                	jl     500 <gets+0x10>
 531:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 533:	8b 45 08             	mov    0x8(%ebp),%eax
 536:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 53a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 53d:	5b                   	pop    %ebx
 53e:	5e                   	pop    %esi
 53f:	5f                   	pop    %edi
 540:	5d                   	pop    %ebp
 541:	c3                   	ret
 542:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 549:	00 
 54a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000550 <stat>:

int
stat(const char *n, struct stat *st)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	56                   	push   %esi
 554:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 555:	83 ec 08             	sub    $0x8,%esp
 558:	6a 00                	push   $0x0
 55a:	ff 75 08             	push   0x8(%ebp)
 55d:	e8 36 03 00 00       	call   898 <open>
  if(fd < 0)
 562:	83 c4 10             	add    $0x10,%esp
 565:	85 c0                	test   %eax,%eax
 567:	78 27                	js     590 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 569:	83 ec 08             	sub    $0x8,%esp
 56c:	ff 75 0c             	push   0xc(%ebp)
 56f:	89 c3                	mov    %eax,%ebx
 571:	50                   	push   %eax
 572:	e8 39 03 00 00       	call   8b0 <fstat>
  close(fd);
 577:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 57a:	89 c6                	mov    %eax,%esi
  close(fd);
 57c:	e8 ff 02 00 00       	call   880 <close>
  return r;
 581:	83 c4 10             	add    $0x10,%esp
}
 584:	8d 65 f8             	lea    -0x8(%ebp),%esp
 587:	89 f0                	mov    %esi,%eax
 589:	5b                   	pop    %ebx
 58a:	5e                   	pop    %esi
 58b:	5d                   	pop    %ebp
 58c:	c3                   	ret
 58d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 590:	be ff ff ff ff       	mov    $0xffffffff,%esi
 595:	eb ed                	jmp    584 <stat+0x34>
 597:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59e:	00 
 59f:	90                   	nop

000005a0 <atoi>:

int
atoi(const char *s)
{
 5a0:	55                   	push   %ebp
 5a1:	b8 01 00 00 00       	mov    $0x1,%eax
 5a6:	89 e5                	mov    %esp,%ebp
 5a8:	56                   	push   %esi
 5a9:	8b 75 08             	mov    0x8(%ebp),%esi
 5ac:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 5ad:	0f be 16             	movsbl (%esi),%edx
 5b0:	80 fa 2d             	cmp    $0x2d,%dl
 5b3:	75 0c                	jne    5c1 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 5b5:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 5b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 5be:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 5c1:	8d 4a d0             	lea    -0x30(%edx),%ecx
 5c4:	80 f9 09             	cmp    $0x9,%cl
 5c7:	77 37                	ja     600 <atoi+0x60>
  n = 0;
 5c9:	31 c9                	xor    %ecx,%ecx
 5cb:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5d2:	00 
 5d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5da:	00 
 5db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 5e0:	83 c6 01             	add    $0x1,%esi
 5e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5e6:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 5ea:	0f be 16             	movsbl (%esi),%edx
 5ed:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5f0:	80 fb 09             	cmp    $0x9,%bl
 5f3:	76 eb                	jbe    5e0 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 5f5:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 5f6:	0f af c1             	imul   %ecx,%eax
}
 5f9:	5e                   	pop    %esi
 5fa:	5d                   	pop    %ebp
 5fb:	c3                   	ret
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 600:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 601:	31 c0                	xor    %eax,%eax
}
 603:	5e                   	pop    %esi
 604:	5d                   	pop    %ebp
 605:	c3                   	ret
 606:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 60d:	00 
 60e:	66 90                	xchg   %ax,%ax

00000610 <atof>:

double atof(const char *s){
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 0c             	sub    $0xc,%esp
 619:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 61c:	0f b6 0a             	movzbl (%edx),%ecx
 61f:	80 f9 2d             	cmp    $0x2d,%cl
 622:	0f 84 28 01 00 00    	je     750 <atof+0x140>
  const char *integerPart = s;
 628:	89 d3                	mov    %edx,%ebx
 62a:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 62d:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 634:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 636:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 63b:	84 c9                	test   %cl,%cl
 63d:	75 2f                	jne    66e <atof+0x5e>
 63f:	eb 7b                	jmp    6bc <atof+0xac>
 641:	eb 1d                	jmp    660 <atof+0x50>
 643:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 64a:	00 
 64b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 652:	00 
 653:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 65a:	00 
 65b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 660:	0f b6 08             	movzbl (%eax),%ecx
 663:	84 c9                	test   %cl,%cl
 665:	0f 84 d5 00 00 00    	je     740 <atof+0x130>
 66b:	83 c0 01             	add    $0x1,%eax
 66e:	89 c2                	mov    %eax,%edx
    if(*s == c)
 670:	80 f9 2e             	cmp    $0x2e,%cl
 673:	75 eb                	jne    660 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 675:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 678:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 67a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 67d:	80 f9 09             	cmp    $0x9,%cl
 680:	77 3a                	ja     6bc <atof+0xac>
 682:	eb 1c                	jmp    6a0 <atof+0x90>
 684:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 68b:	00 
 68c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 693:	00 
 694:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 69b:	00 
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 6a0:	83 e8 30             	sub    $0x30,%eax
 6a3:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 6a6:	83 c3 01             	add    $0x1,%ebx
 6a9:	0f be c0             	movsbl %al,%eax
 6ac:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 6af:	0f b6 03             	movzbl (%ebx),%eax
 6b2:	8d 70 d0             	lea    -0x30(%eax),%esi
 6b5:	89 f1                	mov    %esi,%ecx
 6b7:	80 f9 09             	cmp    $0x9,%cl
 6ba:	76 e4                	jbe    6a0 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 6bc:	0f b6 02             	movzbl (%edx),%eax
 6bf:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6c2:	80 fb 09             	cmp    $0x9,%bl
 6c5:	0f 87 9d 00 00 00    	ja     768 <atof+0x158>
  double divisor = 10.0;   
 6cb:	d9 05 68 0e 00 00    	flds   0xe68
  double fraction = 0.0;  
 6d1:	d9 ee                	fldz
 6d3:	eb 2d                	jmp    702 <atof+0xf2>
 6d5:	eb 29                	jmp    700 <atof+0xf0>
 6d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6de:	00 
 6df:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6e6:	00 
 6e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ee:	00 
 6ef:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6f6:	00 
 6f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6fe:	00 
 6ff:	90                   	nop
 700:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 702:	83 e8 30             	sub    $0x30,%eax
 705:	83 c2 01             	add    $0x1,%edx
 708:	66 98                	cbtw
 70a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 70e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 711:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 714:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 716:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 719:	de c1                	faddp  %st,%st(1)
 71b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 71d:	d8 0d 68 0e 00 00    	fmuls  0xe68
  while('0' <= *fractionPart && *fractionPart <= '9'){
 723:	80 fb 09             	cmp    $0x9,%bl
 726:	76 d8                	jbe    700 <atof+0xf0>
 728:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 72a:	89 7d ec             	mov    %edi,-0x14(%ebp)
 72d:	db 45 ec             	fildl  -0x14(%ebp)
 730:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 732:	db 45 e8             	fildl  -0x18(%ebp)
}
 735:	83 c4 0c             	add    $0xc,%esp
 738:	5b                   	pop    %ebx
 739:	5e                   	pop    %esi
 73a:	5f                   	pop    %edi
 73b:	5d                   	pop    %ebp
  return sign*answer;
 73c:	de c9                	fmulp  %st,%st(1)
}
 73e:	c3                   	ret
 73f:	90                   	nop
 740:	ba 01 00 00 00       	mov    $0x1,%edx
 745:	e9 2b ff ff ff       	jmp    675 <atof+0x65>
 74a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 750:	8d 42 01             	lea    0x1(%edx),%eax
 753:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 75a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 75c:	e9 0d ff ff ff       	jmp    66e <atof+0x5e>
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 768:	d9 ee                	fldz
 76a:	eb be                	jmp    72a <atof+0x11a>
 76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000770 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	8b 45 10             	mov    0x10(%ebp),%eax
 777:	8b 55 08             	mov    0x8(%ebp),%edx
 77a:	56                   	push   %esi
 77b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 77e:	85 c0                	test   %eax,%eax
 780:	7e 13                	jle    795 <memmove+0x25>
 782:	01 d0                	add    %edx,%eax
  dst = vdst;
 784:	89 d7                	mov    %edx,%edi
 786:	66 90                	xchg   %ax,%ax
 788:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 78f:	00 
    *dst++ = *src++;
 790:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 791:	39 f8                	cmp    %edi,%eax
 793:	75 fb                	jne    790 <memmove+0x20>
  return vdst;
}
 795:	5e                   	pop    %esi
 796:	89 d0                	mov    %edx,%eax
 798:	5f                   	pop    %edi
 799:	5d                   	pop    %ebp
 79a:	c3                   	ret
 79b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000007a0 <fsqrt>:

double fsqrt(double n) {
 7a0:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 7a1:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 7a6:	89 e5                	mov    %esp,%ebp
 7a8:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 7ab:	d9 c0                	fld    %st(0)
 7ad:	d8 0d 6c 0e 00 00    	fmuls  0xe6c
    for (int i = 0; i < 20; i++) {
 7b3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7ba:	00 
 7bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 7c0:	d9 c1                	fld    %st(1)
 7c2:	d8 f1                	fdiv   %st(1),%st
 7c4:	de c1                	faddp  %st,%st(1)
 7c6:	d8 0d 6c 0e 00 00    	fmuls  0xe6c
    for (int i = 0; i < 20; i++) {
 7cc:	83 e8 01             	sub    $0x1,%eax
 7cf:	75 ef                	jne    7c0 <fsqrt+0x20>
 7d1:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 7d3:	5d                   	pop    %ebp
 7d4:	c3                   	ret
 7d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7dc:	00 
 7dd:	8d 76 00             	lea    0x0(%esi),%esi

000007e0 <insertionSort>:

void insertionSort(double arr[], int n)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	8b 7d 0c             	mov    0xc(%ebp),%edi
 7e7:	56                   	push   %esi
 7e8:	8b 75 08             	mov    0x8(%ebp),%esi
 7eb:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 7ec:	83 ff 01             	cmp    $0x1,%edi
 7ef:	7e 5a                	jle    84b <insertionSort+0x6b>
 7f1:	bb 01 00 00 00       	mov    $0x1,%ebx
 7f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7fd:	00 
 7fe:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 800:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 803:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 806:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 809:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 810:	00 
 811:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 818:	00 
 819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 820:	dd 40 f8             	fldl   -0x8(%eax)
 823:	89 c1                	mov    %eax,%ecx
 825:	db f1                	fcomi  %st(1),%st
 827:	76 17                	jbe    840 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 829:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 82c:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 82e:	8d 41 f8             	lea    -0x8(%ecx),%eax
 831:	83 fa ff             	cmp    $0xffffffff,%edx
 834:	75 ea                	jne    820 <insertionSort+0x40>
 836:	89 f1                	mov    %esi,%ecx
 838:	eb 08                	jmp    842 <insertionSort+0x62>
 83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 840:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 842:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 845:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 847:	39 df                	cmp    %ebx,%edi
 849:	75 b5                	jne    800 <insertionSort+0x20>
    }
    
 84b:	5b                   	pop    %ebx
 84c:	5e                   	pop    %esi
 84d:	5f                   	pop    %edi
 84e:	5d                   	pop    %ebp
 84f:	c3                   	ret

00000850 <fork>:
 850:	b8 01 00 00 00       	mov    $0x1,%eax
 855:	cd 40                	int    $0x40
 857:	c3                   	ret

00000858 <exit>:
 858:	b8 02 00 00 00       	mov    $0x2,%eax
 85d:	cd 40                	int    $0x40
 85f:	c3                   	ret

00000860 <wait>:
 860:	b8 03 00 00 00       	mov    $0x3,%eax
 865:	cd 40                	int    $0x40
 867:	c3                   	ret

00000868 <pipe>:
 868:	b8 04 00 00 00       	mov    $0x4,%eax
 86d:	cd 40                	int    $0x40
 86f:	c3                   	ret

00000870 <read>:
 870:	b8 05 00 00 00       	mov    $0x5,%eax
 875:	cd 40                	int    $0x40
 877:	c3                   	ret

00000878 <write>:
 878:	b8 10 00 00 00       	mov    $0x10,%eax
 87d:	cd 40                	int    $0x40
 87f:	c3                   	ret

00000880 <close>:
 880:	b8 15 00 00 00       	mov    $0x15,%eax
 885:	cd 40                	int    $0x40
 887:	c3                   	ret

00000888 <kill>:
 888:	b8 06 00 00 00       	mov    $0x6,%eax
 88d:	cd 40                	int    $0x40
 88f:	c3                   	ret

00000890 <exec>:
 890:	b8 07 00 00 00       	mov    $0x7,%eax
 895:	cd 40                	int    $0x40
 897:	c3                   	ret

00000898 <open>:
 898:	b8 0f 00 00 00       	mov    $0xf,%eax
 89d:	cd 40                	int    $0x40
 89f:	c3                   	ret

000008a0 <mknod>:
 8a0:	b8 11 00 00 00       	mov    $0x11,%eax
 8a5:	cd 40                	int    $0x40
 8a7:	c3                   	ret

000008a8 <unlink>:
 8a8:	b8 12 00 00 00       	mov    $0x12,%eax
 8ad:	cd 40                	int    $0x40
 8af:	c3                   	ret

000008b0 <fstat>:
 8b0:	b8 08 00 00 00       	mov    $0x8,%eax
 8b5:	cd 40                	int    $0x40
 8b7:	c3                   	ret

000008b8 <link>:
 8b8:	b8 13 00 00 00       	mov    $0x13,%eax
 8bd:	cd 40                	int    $0x40
 8bf:	c3                   	ret

000008c0 <mkdir>:
 8c0:	b8 14 00 00 00       	mov    $0x14,%eax
 8c5:	cd 40                	int    $0x40
 8c7:	c3                   	ret

000008c8 <chdir>:
 8c8:	b8 09 00 00 00       	mov    $0x9,%eax
 8cd:	cd 40                	int    $0x40
 8cf:	c3                   	ret

000008d0 <dup>:
 8d0:	b8 0a 00 00 00       	mov    $0xa,%eax
 8d5:	cd 40                	int    $0x40
 8d7:	c3                   	ret

000008d8 <getpid>:
 8d8:	b8 0b 00 00 00       	mov    $0xb,%eax
 8dd:	cd 40                	int    $0x40
 8df:	c3                   	ret

000008e0 <sbrk>:
 8e0:	b8 0c 00 00 00       	mov    $0xc,%eax
 8e5:	cd 40                	int    $0x40
 8e7:	c3                   	ret

000008e8 <sleep>:
 8e8:	b8 0d 00 00 00       	mov    $0xd,%eax
 8ed:	cd 40                	int    $0x40
 8ef:	c3                   	ret

000008f0 <uptime>:
 8f0:	b8 0e 00 00 00       	mov    $0xe,%eax
 8f5:	cd 40                	int    $0x40
 8f7:	c3                   	ret
 8f8:	66 90                	xchg   %ax,%ax
 8fa:	66 90                	xchg   %ax,%ax
 8fc:	66 90                	xchg   %ax,%ax
 8fe:	66 90                	xchg   %ax,%ax

00000900 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 908:	89 d1                	mov    %edx,%ecx
{
 90a:	83 ec 3c             	sub    $0x3c,%esp
 90d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 910:	85 d2                	test   %edx,%edx
 912:	0f 89 98 00 00 00    	jns    9b0 <printint+0xb0>
 918:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 91c:	0f 84 8e 00 00 00    	je     9b0 <printint+0xb0>
    x = -xx;
 922:	f7 d9                	neg    %ecx
    neg = 1;
 924:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 929:	89 45 c0             	mov    %eax,-0x40(%ebp)
 92c:	31 f6                	xor    %esi,%esi
 92e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 935:	00 
 936:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 93d:	00 
 93e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 940:	89 c8                	mov    %ecx,%eax
 942:	31 d2                	xor    %edx,%edx
 944:	89 f7                	mov    %esi,%edi
 946:	f7 f3                	div    %ebx
 948:	8d 76 01             	lea    0x1(%esi),%esi
 94b:	0f b6 92 c8 0e 00 00 	movzbl 0xec8(%edx),%edx
 952:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 956:	89 ca                	mov    %ecx,%edx
 958:	89 c1                	mov    %eax,%ecx
 95a:	39 da                	cmp    %ebx,%edx
 95c:	73 e2                	jae    940 <printint+0x40>
  if(neg)
 95e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 961:	85 c0                	test   %eax,%eax
 963:	74 07                	je     96c <printint+0x6c>
    buf[i++] = '-';
 965:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 96a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 96c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 96f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 972:	01 df                	add    %ebx,%edi
 974:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 97b:	00 
 97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 980:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 983:	83 ec 04             	sub    $0x4,%esp
 986:	88 45 d7             	mov    %al,-0x29(%ebp)
 989:	8d 45 d7             	lea    -0x29(%ebp),%eax
 98c:	6a 01                	push   $0x1
 98e:	50                   	push   %eax
 98f:	56                   	push   %esi
 990:	e8 e3 fe ff ff       	call   878 <write>
  while(--i >= 0)
 995:	89 f8                	mov    %edi,%eax
 997:	83 c4 10             	add    $0x10,%esp
 99a:	83 ef 01             	sub    $0x1,%edi
 99d:	39 d8                	cmp    %ebx,%eax
 99f:	75 df                	jne    980 <printint+0x80>
}
 9a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9a4:	5b                   	pop    %ebx
 9a5:	5e                   	pop    %esi
 9a6:	5f                   	pop    %edi
 9a7:	5d                   	pop    %ebp
 9a8:	c3                   	ret
 9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9b0:	31 c0                	xor    %eax,%eax
 9b2:	e9 72 ff ff ff       	jmp    929 <printint+0x29>
 9b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 9be:	00 
 9bf:	90                   	nop

000009c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 9c5:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 9c8:	53                   	push   %ebx
 9c9:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 9cc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 9cf:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 9d2:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 9d5:	0f b6 01             	movzbl (%ecx),%eax
 9d8:	84 c0                	test   %al,%al
 9da:	74 2f                	je     a0b <printf+0x4b>
 9dc:	31 db                	xor    %ebx,%ebx
 9de:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 9e0:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 9e3:	83 fa 25             	cmp    $0x25,%edx
 9e6:	74 30                	je     a18 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 9e8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9eb:	83 ec 04             	sub    $0x4,%esp
 9ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
 9f1:	6a 01                	push   $0x1
 9f3:	50                   	push   %eax
 9f4:	56                   	push   %esi
 9f5:	e8 7e fe ff ff       	call   878 <write>
        putc(fd, c);
 9fa:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 9fd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 a00:	83 c3 01             	add    $0x1,%ebx
 a03:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 a07:	84 c0                	test   %al,%al
 a09:	75 d5                	jne    9e0 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a0e:	5b                   	pop    %ebx
 a0f:	5e                   	pop    %esi
 a10:	5f                   	pop    %edi
 a11:	5d                   	pop    %ebp
 a12:	c3                   	ret
 a13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 a18:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 a1d:	8d 7b 01             	lea    0x1(%ebx),%edi
 a20:	84 d2                	test   %dl,%dl
 a22:	74 e7                	je     a0b <printf+0x4b>
    c = fmt[i] & 0xff;
 a24:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 a27:	80 fa 25             	cmp    $0x25,%dl
 a2a:	0f 84 10 02 00 00    	je     c40 <printf+0x280>
 a30:	83 e8 63             	sub    $0x63,%eax
 a33:	83 f8 15             	cmp    $0x15,%eax
 a36:	77 08                	ja     a40 <printf+0x80>
 a38:	ff 24 85 70 0e 00 00 	jmp    *0xe70(,%eax,4)
 a3f:	90                   	nop
  write(fd, &c, 1);
 a40:	83 ec 04             	sub    $0x4,%esp
 a43:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 a46:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 a49:	89 fb                	mov    %edi,%ebx
 a4b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 a4f:	6a 01                	push   $0x1
 a51:	51                   	push   %ecx
 a52:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 a55:	56                   	push   %esi
 a56:	e8 1d fe ff ff       	call   878 <write>
        putc(fd, c);
 a5b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 a5f:	83 c4 0c             	add    $0xc,%esp
 a62:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a65:	6a 01                	push   $0x1
 a67:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 a6a:	51                   	push   %ecx
 a6b:	56                   	push   %esi
 a6c:	e8 07 fe ff ff       	call   878 <write>
        putc(fd, c);
 a71:	83 c4 10             	add    $0x10,%esp
 a74:	eb 87                	jmp    9fd <printf+0x3d>
 a76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a7d:	00 
 a7e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 a80:	8b 7d d0             	mov    -0x30(%ebp),%edi
 a83:	83 ec 0c             	sub    $0xc,%esp
 a86:	b9 10 00 00 00       	mov    $0x10,%ecx
 a8b:	8b 17                	mov    (%edi),%edx
 a8d:	6a 00                	push   $0x0
 a8f:	89 f0                	mov    %esi,%eax
 a91:	e8 6a fe ff ff       	call   900 <printint>
        ap++;
 a96:	83 c7 04             	add    $0x4,%edi
 a99:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 a9c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 a9f:	83 c3 02             	add    $0x2,%ebx
 aa2:	83 c4 10             	add    $0x10,%esp
 aa5:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 aa9:	84 c0                	test   %al,%al
 aab:	0f 85 2f ff ff ff    	jne    9e0 <printf+0x20>
}
 ab1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 ab4:	5b                   	pop    %ebx
 ab5:	5e                   	pop    %esi
 ab6:	5f                   	pop    %edi
 ab7:	5d                   	pop    %ebp
 ab8:	c3                   	ret
 ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 ac0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 ac3:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 ac5:	d9 7d d6             	fnstcw -0x2a(%ebp)
 ac8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 acc:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 acf:	80 cc 0c             	or     $0xc,%ah
 ad2:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 ad6:	d9 6d d4             	fldcw  -0x2c(%ebp)
 ad9:	db 55 c0             	fistl  -0x40(%ebp)
 adc:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 adf:	db 45 c0             	fildl  -0x40(%ebp)
 ae2:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 ae4:	d9 ee                	fldz
 ae6:	df f1                	fcomip %st(1),%st
 ae8:	0f 87 82 01 00 00    	ja     c70 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 aee:	83 ec 0c             	sub    $0xc,%esp
 af1:	dd 5d b0             	fstpl  -0x50(%ebp)
 af4:	b9 0a 00 00 00       	mov    $0xa,%ecx
 af9:	89 f0                	mov    %esi,%eax
 afb:	6a 01                	push   $0x1
 afd:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 b00:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 b05:	e8 f6 fd ff ff       	call   900 <printint>
  write(fd, &c, 1);
 b0a:	83 c4 0c             	add    $0xc,%esp
 b0d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 b10:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 b14:	6a 01                	push   $0x1
 b16:	51                   	push   %ecx
 b17:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 b1a:	56                   	push   %esi
 b1b:	e8 58 fd ff ff       	call   878 <write>
        putc(fd, '.'); //adds the decimal point
 b20:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 b23:	83 c4 10             	add    $0x10,%esp
 b26:	dd 45 b0             	fldl   -0x50(%ebp)
 b29:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 b2c:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 b2f:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 b32:	d8 0d 68 0e 00 00    	fmuls  0xe68
          int digit = (int) fraction_part;
 b38:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 b3c:	80 cc 0c             	or     $0xc,%ah
 b3f:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 b43:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 b48:	d9 6d d4             	fldcw  -0x2c(%ebp)
 b4b:	db 55 c8             	fistl  -0x38(%ebp)
 b4e:	d9 6d d6             	fldcw  -0x2a(%ebp)
 b51:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 b54:	39 c3                	cmp    %eax,%ebx
 b56:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 b59:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 b5c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 b5f:	8d 43 30             	lea    0x30(%ebx),%eax
 b62:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b65:	6a 01                	push   $0x1
 b67:	ff 75 bc             	push   -0x44(%ebp)
 b6a:	56                   	push   %esi
 b6b:	e8 08 fd ff ff       	call   878 <write>
          fraction_part -= digit;
 b70:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 b73:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 b76:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 b79:	dd 45 c0             	fldl   -0x40(%ebp)
 b7c:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 b7e:	83 ef 01             	sub    $0x1,%edi
 b81:	75 ac                	jne    b2f <printf+0x16f>
 b83:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 b85:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b88:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 b8b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 b8e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b91:	83 c3 02             	add    $0x2,%ebx
 b94:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 b98:	84 c0                	test   %al,%al
 b9a:	0f 85 40 fe ff ff    	jne    9e0 <printf+0x20>
}
 ba0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 ba3:	5b                   	pop    %ebx
 ba4:	5e                   	pop    %esi
 ba5:	5f                   	pop    %edi
 ba6:	5d                   	pop    %ebp
 ba7:	c3                   	ret
 ba8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 baf:	00 
        s = (char*)*ap;
 bb0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 bb3:	8b 38                	mov    (%eax),%edi
        ap++;
 bb5:	83 c0 04             	add    $0x4,%eax
 bb8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 bbb:	85 ff                	test   %edi,%edi
 bbd:	0f 84 9d 00 00 00    	je     c60 <printf+0x2a0>
        while(*s != 0){
 bc3:	0f b6 07             	movzbl (%edi),%eax
 bc6:	84 c0                	test   %al,%al
 bc8:	0f 84 a9 00 00 00    	je     c77 <printf+0x2b7>
 bce:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 bd1:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 bd4:	89 fb                	mov    %edi,%ebx
 bd6:	89 cf                	mov    %ecx,%edi
 bd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 bdf:	00 
  write(fd, &c, 1);
 be0:	83 ec 04             	sub    $0x4,%esp
 be3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 be6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 be9:	6a 01                	push   $0x1
 beb:	57                   	push   %edi
 bec:	56                   	push   %esi
 bed:	e8 86 fc ff ff       	call   878 <write>
        while(*s != 0){
 bf2:	0f b6 03             	movzbl (%ebx),%eax
 bf5:	83 c4 10             	add    $0x10,%esp
 bf8:	84 c0                	test   %al,%al
 bfa:	75 e4                	jne    be0 <printf+0x220>
 bfc:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 bff:	eb 8d                	jmp    b8e <printf+0x1ce>
 c01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 c08:	8b 7d d0             	mov    -0x30(%ebp),%edi
 c0b:	83 ec 0c             	sub    $0xc,%esp
 c0e:	b9 0a 00 00 00       	mov    $0xa,%ecx
 c13:	8b 17                	mov    (%edi),%edx
 c15:	6a 01                	push   $0x1
 c17:	e9 73 fe ff ff       	jmp    a8f <printf+0xcf>
 c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 c20:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 c23:	83 ec 04             	sub    $0x4,%esp
 c26:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 c29:	8b 07                	mov    (%edi),%eax
 c2b:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 c2e:	6a 01                	push   $0x1
 c30:	51                   	push   %ecx
 c31:	56                   	push   %esi
 c32:	e8 41 fc ff ff       	call   878 <write>
 c37:	e9 5a fe ff ff       	jmp    a96 <printf+0xd6>
 c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 c40:	83 ec 04             	sub    $0x4,%esp
 c43:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 c46:	88 55 e7             	mov    %dl,-0x19(%ebp)
 c49:	6a 01                	push   $0x1
 c4b:	51                   	push   %ecx
 c4c:	56                   	push   %esi
 c4d:	e8 26 fc ff ff       	call   878 <write>
 c52:	e9 45 fe ff ff       	jmp    a9c <printf+0xdc>
 c57:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 c5e:	00 
 c5f:	90                   	nop
 c60:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 c65:	bf 5e 0e 00 00       	mov    $0xe5e,%edi
 c6a:	e9 5f ff ff ff       	jmp    bce <printf+0x20e>
 c6f:	90                   	nop
          fraction_part = -fraction_part;
 c70:	d9 e0                	fchs
 c72:	e9 77 fe ff ff       	jmp    aee <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 c77:	83 c3 02             	add    $0x2,%ebx
 c7a:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 c7e:	84 c0                	test   %al,%al
 c80:	0f 85 5a fd ff ff    	jne    9e0 <printf+0x20>
 c86:	e9 80 fd ff ff       	jmp    a0b <printf+0x4b>
 c8b:	66 90                	xchg   %ax,%ax
 c8d:	66 90                	xchg   %ax,%ax
 c8f:	66 90                	xchg   %ax,%ax
 c91:	66 90                	xchg   %ax,%ax
 c93:	66 90                	xchg   %ax,%ax
 c95:	66 90                	xchg   %ax,%ax
 c97:	66 90                	xchg   %ax,%ax
 c99:	66 90                	xchg   %ax,%ax
 c9b:	66 90                	xchg   %ax,%ax
 c9d:	66 90                	xchg   %ax,%ax
 c9f:	90                   	nop

00000ca0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 ca0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ca1:	a1 00 17 00 00       	mov    0x1700,%eax
{
 ca6:	89 e5                	mov    %esp,%ebp
 ca8:	57                   	push   %edi
 ca9:	56                   	push   %esi
 caa:	53                   	push   %ebx
 cab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 cae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 cb1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 cb8:	00 
 cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 cc0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 cc2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 cc4:	39 ca                	cmp    %ecx,%edx
 cc6:	73 30                	jae    cf8 <free+0x58>
 cc8:	39 c1                	cmp    %eax,%ecx
 cca:	72 04                	jb     cd0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ccc:	39 c2                	cmp    %eax,%edx
 cce:	72 f0                	jb     cc0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 cd0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 cd3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 cd6:	39 f8                	cmp    %edi,%eax
 cd8:	74 36                	je     d10 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 cda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 cdd:	8b 42 04             	mov    0x4(%edx),%eax
 ce0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ce3:	39 f1                	cmp    %esi,%ecx
 ce5:	74 40                	je     d27 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 ce7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ce9:	5b                   	pop    %ebx
  freep = p;
 cea:	89 15 00 17 00 00    	mov    %edx,0x1700
}
 cf0:	5e                   	pop    %esi
 cf1:	5f                   	pop    %edi
 cf2:	5d                   	pop    %ebp
 cf3:	c3                   	ret
 cf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 cf8:	39 c2                	cmp    %eax,%edx
 cfa:	72 c4                	jb     cc0 <free+0x20>
 cfc:	39 c1                	cmp    %eax,%ecx
 cfe:	73 c0                	jae    cc0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 d00:	8b 73 fc             	mov    -0x4(%ebx),%esi
 d03:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 d06:	39 f8                	cmp    %edi,%eax
 d08:	75 d0                	jne    cda <free+0x3a>
 d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 d10:	03 70 04             	add    0x4(%eax),%esi
 d13:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 d16:	8b 02                	mov    (%edx),%eax
 d18:	8b 00                	mov    (%eax),%eax
 d1a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 d1d:	8b 42 04             	mov    0x4(%edx),%eax
 d20:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 d23:	39 f1                	cmp    %esi,%ecx
 d25:	75 c0                	jne    ce7 <free+0x47>
    p->s.size += bp->s.size;
 d27:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 d2a:	89 15 00 17 00 00    	mov    %edx,0x1700
    p->s.size += bp->s.size;
 d30:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 d33:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 d36:	89 0a                	mov    %ecx,(%edx)
}
 d38:	5b                   	pop    %ebx
 d39:	5e                   	pop    %esi
 d3a:	5f                   	pop    %edi
 d3b:	5d                   	pop    %ebp
 d3c:	c3                   	ret
 d3d:	8d 76 00             	lea    0x0(%esi),%esi

00000d40 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 d40:	55                   	push   %ebp
 d41:	89 e5                	mov    %esp,%ebp
 d43:	57                   	push   %edi
 d44:	56                   	push   %esi
 d45:	53                   	push   %ebx
 d46:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 d49:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 d4c:	8b 15 00 17 00 00    	mov    0x1700,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 d52:	8d 78 07             	lea    0x7(%eax),%edi
 d55:	c1 ef 03             	shr    $0x3,%edi
 d58:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 d5b:	85 d2                	test   %edx,%edx
 d5d:	0f 84 8d 00 00 00    	je     df0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d63:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 d65:	8b 48 04             	mov    0x4(%eax),%ecx
 d68:	39 f9                	cmp    %edi,%ecx
 d6a:	73 64                	jae    dd0 <malloc+0x90>
  if(nu < 4096)
 d6c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 d71:	39 df                	cmp    %ebx,%edi
 d73:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 d76:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 d7d:	eb 0a                	jmp    d89 <malloc+0x49>
 d7f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d80:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 d82:	8b 48 04             	mov    0x4(%eax),%ecx
 d85:	39 f9                	cmp    %edi,%ecx
 d87:	73 47                	jae    dd0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 d89:	89 c2                	mov    %eax,%edx
 d8b:	39 05 00 17 00 00    	cmp    %eax,0x1700
 d91:	75 ed                	jne    d80 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 d93:	83 ec 0c             	sub    $0xc,%esp
 d96:	56                   	push   %esi
 d97:	e8 44 fb ff ff       	call   8e0 <sbrk>
  if(p == (char*)-1)
 d9c:	83 c4 10             	add    $0x10,%esp
 d9f:	83 f8 ff             	cmp    $0xffffffff,%eax
 da2:	74 1c                	je     dc0 <malloc+0x80>
  hp->s.size = nu;
 da4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 da7:	83 ec 0c             	sub    $0xc,%esp
 daa:	83 c0 08             	add    $0x8,%eax
 dad:	50                   	push   %eax
 dae:	e8 ed fe ff ff       	call   ca0 <free>
  return freep;
 db3:	8b 15 00 17 00 00    	mov    0x1700,%edx
      if((p = morecore(nunits)) == 0)
 db9:	83 c4 10             	add    $0x10,%esp
 dbc:	85 d2                	test   %edx,%edx
 dbe:	75 c0                	jne    d80 <malloc+0x40>
        return 0;
  }
}
 dc0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 dc3:	31 c0                	xor    %eax,%eax
}
 dc5:	5b                   	pop    %ebx
 dc6:	5e                   	pop    %esi
 dc7:	5f                   	pop    %edi
 dc8:	5d                   	pop    %ebp
 dc9:	c3                   	ret
 dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 dd0:	39 cf                	cmp    %ecx,%edi
 dd2:	74 4c                	je     e20 <malloc+0xe0>
        p->s.size -= nunits;
 dd4:	29 f9                	sub    %edi,%ecx
 dd6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 dd9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 ddc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 ddf:	89 15 00 17 00 00    	mov    %edx,0x1700
}
 de5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 de8:	83 c0 08             	add    $0x8,%eax
}
 deb:	5b                   	pop    %ebx
 dec:	5e                   	pop    %esi
 ded:	5f                   	pop    %edi
 dee:	5d                   	pop    %ebp
 def:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 df0:	c7 05 00 17 00 00 04 	movl   $0x1704,0x1700
 df7:	17 00 00 
    base.s.size = 0;
 dfa:	b8 04 17 00 00       	mov    $0x1704,%eax
    base.s.ptr = freep = prevp = &base;
 dff:	c7 05 04 17 00 00 04 	movl   $0x1704,0x1704
 e06:	17 00 00 
    base.s.size = 0;
 e09:	c7 05 08 17 00 00 00 	movl   $0x0,0x1708
 e10:	00 00 00 
    if(p->s.size >= nunits){
 e13:	e9 54 ff ff ff       	jmp    d6c <malloc+0x2c>
 e18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 e1f:	00 
        prevp->s.ptr = p->s.ptr;
 e20:	8b 08                	mov    (%eax),%ecx
 e22:	89 0a                	mov    %ecx,(%edx)
 e24:	eb b9                	jmp    ddf <malloc+0x9f>
