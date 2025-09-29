
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

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
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 09 17 00 00       	push   $0x1709
      2b:	e8 a8 10 00 00       	call   10d8 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 62 1e 00 00 20 	cmpb   $0x20,0x1e62
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 3b 10 00 00       	call   1090 <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 39 10 00 00       	call   10a0 <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 68 16 00 00       	push   $0x1668
      6f:	6a 02                	push   $0x2
      71:	e8 8a 11 00 00       	call   1200 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 60 1e 00 00       	push   $0x1e60
      82:	e8 49 0c 00 00       	call   cd0 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 60 1e 00 00       	push   $0x1e60
      90:	e8 9b 0c 00 00       	call   d30 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 60 1e 00 00 	movzbl 0x1e60,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d 61 1e 00 00 64 	cmpb   $0x64,0x1e61
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 e1 0f 00 00       	call   1098 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 00 10 00 00       	call   10c0 <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 60 1e 00 00       	push   $0x1e60
      cd:	e8 8e 0a 00 00       	call   b60 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 60 1e 00 00       	push   $0x1e60
      e2:	e8 b9 0b 00 00       	call   ca0 <strlen>
      e7:	c6 80 5f 1e 00 00 00 	movb   $0x0,0x1e5f(%eax)
      if(chdir(buf+3) < 0)
      ee:	c7 04 24 63 1e 00 00 	movl   $0x1e63,(%esp)
      f5:	e8 0e 10 00 00       	call   1108 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 63 1e 00 00       	push   $0x1e63
     10b:	68 11 17 00 00       	push   $0x1711
     110:	6a 02                	push   $0x2
     112:	e8 e9 10 00 00       	call   1200 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 6b 16 00 00       	push   $0x166b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 68 16 00 00       	push   $0x1668
     143:	6a 02                	push   $0x2
     145:	e8 b6 10 00 00       	call   1200 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 7a 0b 00 00       	call   cd0 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 d1 0b 00 00       	call   d30 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 05 17 00 00       	push   $0x1705
     17e:	6a 02                	push   $0x2
     180:	e8 7b 10 00 00       	call   1200 <printf>
  exit();
     185:	e8 0e 0f 00 00       	call   1098 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 f5 0e 00 00       	call   1090 <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 6b 16 00 00       	push   $0x166b
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 3a                	je     1f8 <runcmd+0x48>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 db 00 00 00    	ja     2a2 <runcmd+0xf2>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 28 17 00 00 	jmp    *0x1728(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 21                	je     1f8 <runcmd+0x48>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	8d 53 04             	lea    0x4(%ebx),%edx
     1da:	51                   	push   %ecx
     1db:	51                   	push   %ecx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 ed 0e 00 00       	call   10d0 <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 77 16 00 00       	push   $0x1677
     1ee:	6a 02                	push   $0x2
     1f0:	e8 0b 10 00 00       	call   1200 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
    exit();
     1f8:	e8 9b 0e 00 00       	call   1098 <exit>
    if(fork1() == 0)
     1fd:	e8 8e ff ff ff       	call   190 <fork1>
     202:	85 c0                	test   %eax,%eax
     204:	75 f2                	jne    1f8 <runcmd+0x48>
     206:	e9 8c 00 00 00       	jmp    297 <runcmd+0xe7>
    if(pipe(p) < 0)
     20b:	83 ec 0c             	sub    $0xc,%esp
     20e:	8d 45 f0             	lea    -0x10(%ebp),%eax
     211:	50                   	push   %eax
     212:	e8 91 0e 00 00       	call   10a8 <pipe>
     217:	83 c4 10             	add    $0x10,%esp
     21a:	85 c0                	test   %eax,%eax
     21c:	0f 88 a2 00 00 00    	js     2c4 <runcmd+0x114>
    if(fork1() == 0){
     222:	e8 69 ff ff ff       	call   190 <fork1>
     227:	85 c0                	test   %eax,%eax
     229:	0f 84 d0 00 00 00    	je     2ff <runcmd+0x14f>
    if(fork1() == 0){
     22f:	e8 5c ff ff ff       	call   190 <fork1>
     234:	85 c0                	test   %eax,%eax
     236:	0f 84 95 00 00 00    	je     2d1 <runcmd+0x121>
    close(p[0]);
     23c:	83 ec 0c             	sub    $0xc,%esp
     23f:	ff 75 f0             	push   -0x10(%ebp)
     242:	e8 79 0e 00 00       	call   10c0 <close>
    close(p[1]);
     247:	58                   	pop    %eax
     248:	ff 75 f4             	push   -0xc(%ebp)
     24b:	e8 70 0e 00 00       	call   10c0 <close>
    wait();
     250:	e8 4b 0e 00 00       	call   10a0 <wait>
    wait();
     255:	e8 46 0e 00 00       	call   10a0 <wait>
    break;
     25a:	83 c4 10             	add    $0x10,%esp
     25d:	eb 99                	jmp    1f8 <runcmd+0x48>
    if(fork1() == 0)
     25f:	e8 2c ff ff ff       	call   190 <fork1>
     264:	85 c0                	test   %eax,%eax
     266:	74 2f                	je     297 <runcmd+0xe7>
    wait();
     268:	e8 33 0e 00 00       	call   10a0 <wait>
    runcmd(lcmd->right);
     26d:	83 ec 0c             	sub    $0xc,%esp
     270:	ff 73 08             	push   0x8(%ebx)
     273:	e8 38 ff ff ff       	call   1b0 <runcmd>
    close(rcmd->fd);
     278:	83 ec 0c             	sub    $0xc,%esp
     27b:	ff 73 14             	push   0x14(%ebx)
     27e:	e8 3d 0e 00 00       	call   10c0 <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     283:	58                   	pop    %eax
     284:	5a                   	pop    %edx
     285:	ff 73 10             	push   0x10(%ebx)
     288:	ff 73 08             	push   0x8(%ebx)
     28b:	e8 48 0e 00 00       	call   10d8 <open>
     290:	83 c4 10             	add    $0x10,%esp
     293:	85 c0                	test   %eax,%eax
     295:	78 18                	js     2af <runcmd+0xff>
      runcmd(bcmd->cmd);
     297:	83 ec 0c             	sub    $0xc,%esp
     29a:	ff 73 04             	push   0x4(%ebx)
     29d:	e8 0e ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2a2:	83 ec 0c             	sub    $0xc,%esp
     2a5:	68 70 16 00 00       	push   $0x1670
     2aa:	e8 c1 fe ff ff       	call   170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2af:	51                   	push   %ecx
     2b0:	ff 73 08             	push   0x8(%ebx)
     2b3:	68 87 16 00 00       	push   $0x1687
     2b8:	6a 02                	push   $0x2
     2ba:	e8 41 0f 00 00       	call   1200 <printf>
      exit();
     2bf:	e8 d4 0d 00 00       	call   1098 <exit>
      panic("pipe");
     2c4:	83 ec 0c             	sub    $0xc,%esp
     2c7:	68 97 16 00 00       	push   $0x1697
     2cc:	e8 9f fe ff ff       	call   170 <panic>
      close(0);
     2d1:	83 ec 0c             	sub    $0xc,%esp
     2d4:	6a 00                	push   $0x0
     2d6:	e8 e5 0d 00 00       	call   10c0 <close>
      dup(p[0]);
     2db:	5a                   	pop    %edx
     2dc:	ff 75 f0             	push   -0x10(%ebp)
     2df:	e8 2c 0e 00 00       	call   1110 <dup>
      close(p[0]);
     2e4:	59                   	pop    %ecx
     2e5:	ff 75 f0             	push   -0x10(%ebp)
     2e8:	e8 d3 0d 00 00       	call   10c0 <close>
      close(p[1]);
     2ed:	58                   	pop    %eax
     2ee:	ff 75 f4             	push   -0xc(%ebp)
     2f1:	e8 ca 0d 00 00       	call   10c0 <close>
      runcmd(pcmd->right);
     2f6:	58                   	pop    %eax
     2f7:	ff 73 08             	push   0x8(%ebx)
     2fa:	e8 b1 fe ff ff       	call   1b0 <runcmd>
      close(1);
     2ff:	83 ec 0c             	sub    $0xc,%esp
     302:	6a 01                	push   $0x1
     304:	e8 b7 0d 00 00       	call   10c0 <close>
      dup(p[1]);
     309:	58                   	pop    %eax
     30a:	ff 75 f4             	push   -0xc(%ebp)
     30d:	e8 fe 0d 00 00       	call   1110 <dup>
      close(p[0]);
     312:	58                   	pop    %eax
     313:	ff 75 f0             	push   -0x10(%ebp)
     316:	e8 a5 0d 00 00       	call   10c0 <close>
      close(p[1]);
     31b:	58                   	pop    %eax
     31c:	ff 75 f4             	push   -0xc(%ebp)
     31f:	e8 9c 0d 00 00       	call   10c0 <close>
      runcmd(pcmd->left);
     324:	5a                   	pop    %edx
     325:	ff 73 04             	push   0x4(%ebx)
     328:	e8 83 fe ff ff       	call   1b0 <runcmd>
     32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     330:	55                   	push   %ebp
     331:	89 e5                	mov    %esp,%ebp
     333:	53                   	push   %ebx
     334:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     337:	6a 54                	push   $0x54
     339:	e8 42 12 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     33e:	83 c4 0c             	add    $0xc,%esp
     341:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     343:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     345:	6a 00                	push   $0x0
     347:	50                   	push   %eax
     348:	e8 83 09 00 00       	call   cd0 <memset>
  cmd->type = EXEC;
     34d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     353:	89 d8                	mov    %ebx,%eax
     355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     358:	c9                   	leave
     359:	c3                   	ret
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000360 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 18                	push   $0x18
     369:	e8 12 12 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 53 09 00 00       	call   cd0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     380:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     389:	8b 45 0c             	mov    0xc(%ebp),%eax
     38c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     38f:	8b 45 10             	mov    0x10(%ebp),%eax
     392:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     395:	8b 45 14             	mov    0x14(%ebp),%eax
     398:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     39b:	8b 45 18             	mov    0x18(%ebp),%eax
     39e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3a1:	89 d8                	mov    %ebx,%eax
     3a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3a6:	c9                   	leave
     3a7:	c3                   	ret
     3a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3af:	00 

000003b0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b7:	6a 0c                	push   $0xc
     3b9:	e8 c2 11 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3be:	83 c4 0c             	add    $0xc,%esp
     3c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3c5:	6a 00                	push   $0x0
     3c7:	50                   	push   %eax
     3c8:	e8 03 09 00 00       	call   cd0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3df:	89 d8                	mov    %ebx,%eax
     3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e4:	c9                   	leave
     3e5:	c3                   	ret
     3e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3ed:	00 
     3ee:	66 90                	xchg   %ax,%ax

000003f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 82 11 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 c3 08 00 00       	call   cd0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     410:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave
     425:	c3                   	ret
     426:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     42d:	00 
     42e:	66 90                	xchg   %ax,%ax

00000430 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 08                	push   $0x8
     439:	e8 42 11 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
     441:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     443:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 83 08 00 00       	call   cd0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     450:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     459:	89 d8                	mov    %ebx,%eax
     45b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     45e:	c9                   	leave
     45f:	c3                   	ret

00000460 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     469:	8b 45 08             	mov    0x8(%ebp),%eax
{
     46c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     46f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     472:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     474:	39 df                	cmp    %ebx,%edi
     476:	72 0f                	jb     487 <gettoken+0x27>
     478:	eb 25                	jmp    49f <gettoken+0x3f>
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     480:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     483:	39 fb                	cmp    %edi,%ebx
     485:	74 18                	je     49f <gettoken+0x3f>
     487:	0f be 07             	movsbl (%edi),%eax
     48a:	83 ec 08             	sub    $0x8,%esp
     48d:	50                   	push   %eax
     48e:	68 3c 1e 00 00       	push   $0x1e3c
     493:	e8 58 08 00 00       	call   cf0 <strchr>
     498:	83 c4 10             	add    $0x10,%esp
     49b:	85 c0                	test   %eax,%eax
     49d:	75 e1                	jne    480 <gettoken+0x20>
  if(q)
     49f:	85 f6                	test   %esi,%esi
     4a1:	74 02                	je     4a5 <gettoken+0x45>
    *q = s;
     4a3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4a5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4a8:	3c 3c                	cmp    $0x3c,%al
     4aa:	0f 8f c8 00 00 00    	jg     578 <gettoken+0x118>
     4b0:	3c 3a                	cmp    $0x3a,%al
     4b2:	7f 5a                	jg     50e <gettoken+0xae>
     4b4:	84 c0                	test   %al,%al
     4b6:	75 48                	jne    500 <gettoken+0xa0>
     4b8:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4ba:	8b 4d 14             	mov    0x14(%ebp),%ecx
     4bd:	85 c9                	test   %ecx,%ecx
     4bf:	74 05                	je     4c6 <gettoken+0x66>
    *eq = s;
     4c1:	8b 45 14             	mov    0x14(%ebp),%eax
     4c4:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4c6:	39 df                	cmp    %ebx,%edi
     4c8:	72 0d                	jb     4d7 <gettoken+0x77>
     4ca:	eb 23                	jmp    4ef <gettoken+0x8f>
     4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x8f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 3c 1e 00 00       	push   $0x1e3c
     4e3:	e8 08 08 00 00       	call   cf0 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x70>
  *ps = s;
     4ef:	8b 45 08             	mov    0x8(%ebp),%eax
     4f2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     4f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4f7:	89 f0                	mov    %esi,%eax
     4f9:	5b                   	pop    %ebx
     4fa:	5e                   	pop    %esi
     4fb:	5f                   	pop    %edi
     4fc:	5d                   	pop    %ebp
     4fd:	c3                   	ret
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	78 22                	js     524 <gettoken+0xc4>
     502:	3c 26                	cmp    $0x26,%al
     504:	74 08                	je     50e <gettoken+0xae>
     506:	8d 48 d8             	lea    -0x28(%eax),%ecx
     509:	80 f9 01             	cmp    $0x1,%cl
     50c:	77 16                	ja     524 <gettoken+0xc4>
  ret = *s;
     50e:	0f be f0             	movsbl %al,%esi
    s++;
     511:	83 c7 01             	add    $0x1,%edi
    break;
     514:	eb a4                	jmp    4ba <gettoken+0x5a>
     516:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     51d:	00 
     51e:	66 90                	xchg   %ax,%ax
  switch(*s){
     520:	3c 7c                	cmp    $0x7c,%al
     522:	74 ea                	je     50e <gettoken+0xae>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     524:	39 df                	cmp    %ebx,%edi
     526:	72 27                	jb     54f <gettoken+0xef>
     528:	e9 87 00 00 00       	jmp    5b4 <gettoken+0x154>
     52d:	8d 76 00             	lea    0x0(%esi),%esi
     530:	0f be 07             	movsbl (%edi),%eax
     533:	83 ec 08             	sub    $0x8,%esp
     536:	50                   	push   %eax
     537:	68 34 1e 00 00       	push   $0x1e34
     53c:	e8 af 07 00 00       	call   cf0 <strchr>
     541:	83 c4 10             	add    $0x10,%esp
     544:	85 c0                	test   %eax,%eax
     546:	75 1f                	jne    567 <gettoken+0x107>
      s++;
     548:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     54b:	39 fb                	cmp    %edi,%ebx
     54d:	74 4d                	je     59c <gettoken+0x13c>
     54f:	0f be 07             	movsbl (%edi),%eax
     552:	83 ec 08             	sub    $0x8,%esp
     555:	50                   	push   %eax
     556:	68 3c 1e 00 00       	push   $0x1e3c
     55b:	e8 90 07 00 00       	call   cf0 <strchr>
     560:	83 c4 10             	add    $0x10,%esp
     563:	85 c0                	test   %eax,%eax
     565:	74 c9                	je     530 <gettoken+0xd0>
    ret = 'a';
     567:	be 61 00 00 00       	mov    $0x61,%esi
     56c:	e9 49 ff ff ff       	jmp    4ba <gettoken+0x5a>
     571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     578:	3c 3e                	cmp    $0x3e,%al
     57a:	75 a4                	jne    520 <gettoken+0xc0>
    if(*s == '>'){
     57c:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     580:	74 0d                	je     58f <gettoken+0x12f>
    s++;
     582:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     585:	be 3e 00 00 00       	mov    $0x3e,%esi
     58a:	e9 2b ff ff ff       	jmp    4ba <gettoken+0x5a>
      s++;
     58f:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     592:	be 2b 00 00 00       	mov    $0x2b,%esi
     597:	e9 1e ff ff ff       	jmp    4ba <gettoken+0x5a>
  if(eq)
     59c:	8b 45 14             	mov    0x14(%ebp),%eax
     59f:	85 c0                	test   %eax,%eax
     5a1:	74 05                	je     5a8 <gettoken+0x148>
    *eq = s;
     5a3:	8b 45 14             	mov    0x14(%ebp),%eax
     5a6:	89 18                	mov    %ebx,(%eax)
  while(s < es && strchr(whitespace, *s))
     5a8:	89 df                	mov    %ebx,%edi
    ret = 'a';
     5aa:	be 61 00 00 00       	mov    $0x61,%esi
     5af:	e9 3b ff ff ff       	jmp    4ef <gettoken+0x8f>
  if(eq)
     5b4:	8b 55 14             	mov    0x14(%ebp),%edx
     5b7:	85 d2                	test   %edx,%edx
     5b9:	74 ef                	je     5aa <gettoken+0x14a>
    *eq = s;
     5bb:	8b 45 14             	mov    0x14(%ebp),%eax
     5be:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     5c0:	eb e8                	jmp    5aa <gettoken+0x14a>
     5c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5c9:	00 
     5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
     5d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5e1:	39 f3                	cmp    %esi,%ebx
     5e3:	72 12                	jb     5f7 <peek+0x27>
     5e5:	eb 28                	jmp    60f <peek+0x3f>
     5e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5ee:	00 
     5ef:	90                   	nop
    s++;
     5f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5f3:	39 de                	cmp    %ebx,%esi
     5f5:	74 18                	je     60f <peek+0x3f>
     5f7:	0f be 03             	movsbl (%ebx),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 3c 1e 00 00       	push   $0x1e3c
     603:	e8 e8 06 00 00       	call   cf0 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <peek+0x20>
  *ps = s;
     60f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     611:	0f be 03             	movsbl (%ebx),%eax
     614:	31 d2                	xor    %edx,%edx
     616:	84 c0                	test   %al,%al
     618:	75 0e                	jne    628 <peek+0x58>
}
     61a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     61d:	89 d0                	mov    %edx,%eax
     61f:	5b                   	pop    %ebx
     620:	5e                   	pop    %esi
     621:	5f                   	pop    %edi
     622:	5d                   	pop    %ebp
     623:	c3                   	ret
     624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     628:	83 ec 08             	sub    $0x8,%esp
     62b:	50                   	push   %eax
     62c:	ff 75 10             	push   0x10(%ebp)
     62f:	e8 bc 06 00 00       	call   cf0 <strchr>
     634:	83 c4 10             	add    $0x10,%esp
     637:	31 d2                	xor    %edx,%edx
     639:	85 c0                	test   %eax,%eax
     63b:	0f 95 c2             	setne  %dl
}
     63e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     641:	5b                   	pop    %ebx
     642:	89 d0                	mov    %edx,%eax
     644:	5e                   	pop    %esi
     645:	5f                   	pop    %edi
     646:	5d                   	pop    %ebp
     647:	c3                   	ret
     648:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     64f:	00 

00000650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
     656:	83 ec 2c             	sub    $0x2c,%esp
     659:	8b 75 0c             	mov    0xc(%ebp),%esi
     65c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     65f:	90                   	nop
     660:	83 ec 04             	sub    $0x4,%esp
     663:	68 b9 16 00 00       	push   $0x16b9
     668:	53                   	push   %ebx
     669:	56                   	push   %esi
     66a:	e8 61 ff ff ff       	call   5d0 <peek>
     66f:	83 c4 10             	add    $0x10,%esp
     672:	85 c0                	test   %eax,%eax
     674:	0f 84 f6 00 00 00    	je     770 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     67a:	6a 00                	push   $0x0
     67c:	6a 00                	push   $0x0
     67e:	53                   	push   %ebx
     67f:	56                   	push   %esi
     680:	e8 db fd ff ff       	call   460 <gettoken>
     685:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     687:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     68a:	50                   	push   %eax
     68b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     68e:	50                   	push   %eax
     68f:	53                   	push   %ebx
     690:	56                   	push   %esi
     691:	e8 ca fd ff ff       	call   460 <gettoken>
     696:	83 c4 20             	add    $0x20,%esp
     699:	83 f8 61             	cmp    $0x61,%eax
     69c:	0f 85 d9 00 00 00    	jne    77b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     6a2:	83 ff 3c             	cmp    $0x3c,%edi
     6a5:	74 69                	je     710 <parseredirs+0xc0>
     6a7:	83 ff 3e             	cmp    $0x3e,%edi
     6aa:	74 05                	je     6b1 <parseredirs+0x61>
     6ac:	83 ff 2b             	cmp    $0x2b,%edi
     6af:	75 af                	jne    660 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6b1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     6b4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     6b7:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ba:	89 55 d0             	mov    %edx,-0x30(%ebp)
     6bd:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     6c0:	6a 18                	push   $0x18
     6c2:	e8 b9 0e 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6c7:	83 c4 0c             	add    $0xc,%esp
     6ca:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6cc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6ce:	6a 00                	push   $0x0
     6d0:	50                   	push   %eax
     6d1:	e8 fa 05 00 00       	call   cd0 <memset>
  cmd->type = REDIR;
     6d6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     6dc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     6df:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6e2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     6e8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     6ee:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     6f5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     6f8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ff:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     702:	e9 59 ff ff ff       	jmp    660 <parseredirs+0x10>
     707:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     70e:	00 
     70f:	90                   	nop
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     710:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     713:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     716:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     719:	89 55 d0             	mov    %edx,-0x30(%ebp)
     71c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     71f:	6a 18                	push   $0x18
     721:	e8 5a 0e 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     726:	83 c4 0c             	add    $0xc,%esp
     729:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     72b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     72d:	6a 00                	push   $0x0
     72f:	50                   	push   %eax
     730:	e8 9b 05 00 00       	call   cd0 <memset>
  cmd->cmd = subcmd;
     735:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     738:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     73b:	83 c4 10             	add    $0x10,%esp
  cmd->efile = efile;
     73e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     741:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     747:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     74a:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     74d:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     750:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     757:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     75e:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     761:	e9 fa fe ff ff       	jmp    660 <parseredirs+0x10>
     766:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     76d:	00 
     76e:	66 90                	xchg   %ax,%ax
    }
  }
  return cmd;
}
     770:	8b 45 08             	mov    0x8(%ebp),%eax
     773:	8d 65 f4             	lea    -0xc(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5f                   	pop    %edi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret
      panic("missing file for redirection");
     77b:	83 ec 0c             	sub    $0xc,%esp
     77e:	68 9c 16 00 00       	push   $0x169c
     783:	e8 e8 f9 ff ff       	call   170 <panic>
     788:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     78f:	00 

00000790 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     790:	55                   	push   %ebp
     791:	89 e5                	mov    %esp,%ebp
     793:	57                   	push   %edi
     794:	56                   	push   %esi
     795:	53                   	push   %ebx
     796:	83 ec 30             	sub    $0x30,%esp
     799:	8b 5d 08             	mov    0x8(%ebp),%ebx
     79c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     79f:	68 bc 16 00 00       	push   $0x16bc
     7a4:	56                   	push   %esi
     7a5:	53                   	push   %ebx
     7a6:	e8 25 fe ff ff       	call   5d0 <peek>
     7ab:	83 c4 10             	add    $0x10,%esp
     7ae:	85 c0                	test   %eax,%eax
     7b0:	0f 85 aa 00 00 00    	jne    860 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     7b6:	83 ec 0c             	sub    $0xc,%esp
     7b9:	89 c7                	mov    %eax,%edi
     7bb:	6a 54                	push   $0x54
     7bd:	e8 be 0d 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7c2:	83 c4 0c             	add    $0xc,%esp
     7c5:	6a 54                	push   $0x54
     7c7:	6a 00                	push   $0x0
     7c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
     7cc:	50                   	push   %eax
     7cd:	e8 fe 04 00 00       	call   cd0 <memset>
  cmd->type = EXEC;
     7d2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7d5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     7d8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     7de:	56                   	push   %esi
     7df:	53                   	push   %ebx
     7e0:	50                   	push   %eax
     7e1:	e8 6a fe ff ff       	call   650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     7e6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     7e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7ec:	eb 15                	jmp    803 <parseexec+0x73>
     7ee:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7f0:	83 ec 04             	sub    $0x4,%esp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
     7f5:	ff 75 d4             	push   -0x2c(%ebp)
     7f8:	e8 53 fe ff ff       	call   650 <parseredirs>
     7fd:	83 c4 10             	add    $0x10,%esp
     800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     803:	83 ec 04             	sub    $0x4,%esp
     806:	68 d3 16 00 00       	push   $0x16d3
     80b:	56                   	push   %esi
     80c:	53                   	push   %ebx
     80d:	e8 be fd ff ff       	call   5d0 <peek>
     812:	83 c4 10             	add    $0x10,%esp
     815:	85 c0                	test   %eax,%eax
     817:	75 5f                	jne    878 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     81c:	50                   	push   %eax
     81d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     820:	50                   	push   %eax
     821:	56                   	push   %esi
     822:	53                   	push   %ebx
     823:	e8 38 fc ff ff       	call   460 <gettoken>
     828:	83 c4 10             	add    $0x10,%esp
     82b:	85 c0                	test   %eax,%eax
     82d:	74 49                	je     878 <parseexec+0xe8>
    if(tok != 'a')
     82f:	83 f8 61             	cmp    $0x61,%eax
     832:	75 62                	jne    896 <parseexec+0x106>
    cmd->argv[argc] = q;
     834:	8b 45 e0             	mov    -0x20(%ebp),%eax
     837:	8b 55 d0             	mov    -0x30(%ebp),%edx
     83a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     83e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     841:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     845:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     848:	83 ff 0a             	cmp    $0xa,%edi
     84b:	75 a3                	jne    7f0 <parseexec+0x60>
      panic("too many args");
     84d:	83 ec 0c             	sub    $0xc,%esp
     850:	68 c5 16 00 00       	push   $0x16c5
     855:	e8 16 f9 ff ff       	call   170 <panic>
     85a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     860:	89 75 0c             	mov    %esi,0xc(%ebp)
     863:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     866:	8d 65 f4             	lea    -0xc(%ebp),%esp
     869:	5b                   	pop    %ebx
     86a:	5e                   	pop    %esi
     86b:	5f                   	pop    %edi
     86c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     86d:	e9 ae 01 00 00       	jmp    a20 <parseblock>
     872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     878:	8b 45 d0             	mov    -0x30(%ebp),%eax
     87b:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     882:	00 
  cmd->eargv[argc] = 0;
     883:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     88a:	00 
}
     88b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     88e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     891:	5b                   	pop    %ebx
     892:	5e                   	pop    %esi
     893:	5f                   	pop    %edi
     894:	5d                   	pop    %ebp
     895:	c3                   	ret
      panic("syntax");
     896:	83 ec 0c             	sub    $0xc,%esp
     899:	68 be 16 00 00       	push   $0x16be
     89e:	e8 cd f8 ff ff       	call   170 <panic>
     8a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     8aa:	00 
     8ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000008b0 <parsepipe>:
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	53                   	push   %ebx
     8b6:	83 ec 14             	sub    $0x14,%esp
     8b9:	8b 75 08             	mov    0x8(%ebp),%esi
     8bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     8bf:	57                   	push   %edi
     8c0:	56                   	push   %esi
     8c1:	e8 ca fe ff ff       	call   790 <parseexec>
  if(peek(ps, es, "|")){
     8c6:	83 c4 0c             	add    $0xc,%esp
     8c9:	68 d8 16 00 00       	push   $0x16d8
  cmd = parseexec(ps, es);
     8ce:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     8d0:	57                   	push   %edi
     8d1:	56                   	push   %esi
     8d2:	e8 f9 fc ff ff       	call   5d0 <peek>
     8d7:	83 c4 10             	add    $0x10,%esp
     8da:	85 c0                	test   %eax,%eax
     8dc:	75 12                	jne    8f0 <parsepipe+0x40>
}
     8de:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8e1:	89 d8                	mov    %ebx,%eax
     8e3:	5b                   	pop    %ebx
     8e4:	5e                   	pop    %esi
     8e5:	5f                   	pop    %edi
     8e6:	5d                   	pop    %ebp
     8e7:	c3                   	ret
     8e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     8ef:	00 
    gettoken(ps, es, 0, 0);
     8f0:	6a 00                	push   $0x0
     8f2:	6a 00                	push   $0x0
     8f4:	57                   	push   %edi
     8f5:	56                   	push   %esi
     8f6:	e8 65 fb ff ff       	call   460 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8fb:	58                   	pop    %eax
     8fc:	5a                   	pop    %edx
     8fd:	57                   	push   %edi
     8fe:	56                   	push   %esi
     8ff:	e8 ac ff ff ff       	call   8b0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     904:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     90b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     90d:	e8 6e 0c 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     912:	83 c4 0c             	add    $0xc,%esp
     915:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     917:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     919:	6a 00                	push   $0x0
     91b:	50                   	push   %eax
     91c:	e8 af 03 00 00       	call   cd0 <memset>
  cmd->left = left;
     921:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     924:	83 c4 10             	add    $0x10,%esp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     927:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     929:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     92f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     931:	89 7e 08             	mov    %edi,0x8(%esi)
}
     934:	8d 65 f4             	lea    -0xc(%ebp),%esp
     937:	5b                   	pop    %ebx
     938:	5e                   	pop    %esi
     939:	5f                   	pop    %edi
     93a:	5d                   	pop    %ebp
     93b:	c3                   	ret
     93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000940 <parseline>:
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	57                   	push   %edi
     944:	56                   	push   %esi
     945:	53                   	push   %ebx
     946:	83 ec 24             	sub    $0x24,%esp
     949:	8b 75 08             	mov    0x8(%ebp),%esi
     94c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     94f:	57                   	push   %edi
     950:	56                   	push   %esi
     951:	e8 5a ff ff ff       	call   8b0 <parsepipe>
  while(peek(ps, es, "&")){
     956:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     959:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     95b:	eb 3b                	jmp    998 <parseline+0x58>
     95d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     960:	6a 00                	push   $0x0
     962:	6a 00                	push   $0x0
     964:	57                   	push   %edi
     965:	56                   	push   %esi
     966:	e8 f5 fa ff ff       	call   460 <gettoken>
  cmd = malloc(sizeof(*cmd));
     96b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     972:	e8 09 0c 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     977:	83 c4 0c             	add    $0xc,%esp
     97a:	6a 08                	push   $0x8
     97c:	6a 00                	push   $0x0
     97e:	50                   	push   %eax
     97f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     982:	e8 49 03 00 00       	call   cd0 <memset>
  cmd->type = BACK;
     987:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     98a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     98d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     993:	89 5a 04             	mov    %ebx,0x4(%edx)
    cmd = backcmd(cmd);
     996:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     998:	83 ec 04             	sub    $0x4,%esp
     99b:	68 da 16 00 00       	push   $0x16da
     9a0:	57                   	push   %edi
     9a1:	56                   	push   %esi
     9a2:	e8 29 fc ff ff       	call   5d0 <peek>
     9a7:	83 c4 10             	add    $0x10,%esp
     9aa:	85 c0                	test   %eax,%eax
     9ac:	75 b2                	jne    960 <parseline+0x20>
  if(peek(ps, es, ";")){
     9ae:	83 ec 04             	sub    $0x4,%esp
     9b1:	68 d6 16 00 00       	push   $0x16d6
     9b6:	57                   	push   %edi
     9b7:	56                   	push   %esi
     9b8:	e8 13 fc ff ff       	call   5d0 <peek>
     9bd:	83 c4 10             	add    $0x10,%esp
     9c0:	85 c0                	test   %eax,%eax
     9c2:	75 0c                	jne    9d0 <parseline+0x90>
}
     9c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c7:	89 d8                	mov    %ebx,%eax
     9c9:	5b                   	pop    %ebx
     9ca:	5e                   	pop    %esi
     9cb:	5f                   	pop    %edi
     9cc:	5d                   	pop    %ebp
     9cd:	c3                   	ret
     9ce:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9d0:	6a 00                	push   $0x0
     9d2:	6a 00                	push   $0x0
     9d4:	57                   	push   %edi
     9d5:	56                   	push   %esi
     9d6:	e8 85 fa ff ff       	call   460 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9db:	58                   	pop    %eax
     9dc:	5a                   	pop    %edx
     9dd:	57                   	push   %edi
     9de:	56                   	push   %esi
     9df:	e8 5c ff ff ff       	call   940 <parseline>
  cmd = malloc(sizeof(*cmd));
     9e4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     9eb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     9ed:	e8 8e 0b 00 00       	call   1580 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9f2:	83 c4 0c             	add    $0xc,%esp
     9f5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     9f7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     9f9:	6a 00                	push   $0x0
     9fb:	50                   	push   %eax
     9fc:	e8 cf 02 00 00       	call   cd0 <memset>
  cmd->left = left;
     a01:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     a04:	83 c4 10             	add    $0x10,%esp
    cmd = listcmd(cmd, parseline(ps, es));
     a07:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     a09:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     a0f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a11:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a17:	5b                   	pop    %ebx
     a18:	5e                   	pop    %esi
     a19:	5f                   	pop    %edi
     a1a:	5d                   	pop    %ebp
     a1b:	c3                   	ret
     a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a20 <parseblock>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 10             	sub    $0x10,%esp
     a29:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a2c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a2f:	68 bc 16 00 00       	push   $0x16bc
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 95 fb ff ff       	call   5d0 <peek>
     a3b:	83 c4 10             	add    $0x10,%esp
     a3e:	85 c0                	test   %eax,%eax
     a40:	74 4a                	je     a8c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     a42:	6a 00                	push   $0x0
     a44:	6a 00                	push   $0x0
     a46:	56                   	push   %esi
     a47:	53                   	push   %ebx
     a48:	e8 13 fa ff ff       	call   460 <gettoken>
  cmd = parseline(ps, es);
     a4d:	58                   	pop    %eax
     a4e:	5a                   	pop    %edx
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 ea fe ff ff       	call   940 <parseline>
  if(!peek(ps, es, ")"))
     a56:	83 c4 0c             	add    $0xc,%esp
     a59:	68 f8 16 00 00       	push   $0x16f8
  cmd = parseline(ps, es);
     a5e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a60:	56                   	push   %esi
     a61:	53                   	push   %ebx
     a62:	e8 69 fb ff ff       	call   5d0 <peek>
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	85 c0                	test   %eax,%eax
     a6c:	74 2b                	je     a99 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a6e:	6a 00                	push   $0x0
     a70:	6a 00                	push   $0x0
     a72:	56                   	push   %esi
     a73:	53                   	push   %ebx
     a74:	e8 e7 f9 ff ff       	call   460 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a79:	83 c4 0c             	add    $0xc,%esp
     a7c:	56                   	push   %esi
     a7d:	53                   	push   %ebx
     a7e:	57                   	push   %edi
     a7f:	e8 cc fb ff ff       	call   650 <parseredirs>
}
     a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a87:	5b                   	pop    %ebx
     a88:	5e                   	pop    %esi
     a89:	5f                   	pop    %edi
     a8a:	5d                   	pop    %ebp
     a8b:	c3                   	ret
    panic("parseblock");
     a8c:	83 ec 0c             	sub    $0xc,%esp
     a8f:	68 dc 16 00 00       	push   $0x16dc
     a94:	e8 d7 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     a99:	83 ec 0c             	sub    $0xc,%esp
     a9c:	68 e7 16 00 00       	push   $0x16e7
     aa1:	e8 ca f6 ff ff       	call   170 <panic>
     aa6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     aad:	00 
     aae:	66 90                	xchg   %ax,%ax

00000ab0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	53                   	push   %ebx
     ab4:	83 ec 04             	sub    $0x4,%esp
     ab7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     aba:	85 db                	test   %ebx,%ebx
     abc:	74 29                	je     ae7 <nulterminate+0x37>
    return 0;

  switch(cmd->type){
     abe:	83 3b 05             	cmpl   $0x5,(%ebx)
     ac1:	77 24                	ja     ae7 <nulterminate+0x37>
     ac3:	8b 03                	mov    (%ebx),%eax
     ac5:	ff 24 85 40 17 00 00 	jmp    *0x1740(,%eax,4)
     acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     ad0:	83 ec 0c             	sub    $0xc,%esp
     ad3:	ff 73 04             	push   0x4(%ebx)
     ad6:	e8 d5 ff ff ff       	call   ab0 <nulterminate>
    nulterminate(lcmd->right);
     adb:	58                   	pop    %eax
     adc:	ff 73 08             	push   0x8(%ebx)
     adf:	e8 cc ff ff ff       	call   ab0 <nulterminate>
    break;
     ae4:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     ae7:	89 d8                	mov    %ebx,%eax
     ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     aec:	c9                   	leave
     aed:	c3                   	ret
     aee:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	ff 73 04             	push   0x4(%ebx)
     af6:	e8 b5 ff ff ff       	call   ab0 <nulterminate>
}
     afb:	89 d8                	mov    %ebx,%eax
    break;
     afd:	83 c4 10             	add    $0x10,%esp
}
     b00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b03:	c9                   	leave
     b04:	c3                   	ret
     b05:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     b08:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b0b:	85 c9                	test   %ecx,%ecx
     b0d:	74 d8                	je     ae7 <nulterminate+0x37>
     b0f:	8d 43 08             	lea    0x8(%ebx),%eax
     b12:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b19:	00 
     b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b20:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b23:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b26:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b29:	8b 50 fc             	mov    -0x4(%eax),%edx
     b2c:	85 d2                	test   %edx,%edx
     b2e:	75 f0                	jne    b20 <nulterminate+0x70>
}
     b30:	89 d8                	mov    %ebx,%eax
     b32:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b35:	c9                   	leave
     b36:	c3                   	ret
     b37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b3e:	00 
     b3f:	90                   	nop
    nulterminate(rcmd->cmd);
     b40:	83 ec 0c             	sub    $0xc,%esp
     b43:	ff 73 04             	push   0x4(%ebx)
     b46:	e8 65 ff ff ff       	call   ab0 <nulterminate>
    *rcmd->efile = 0;
     b4b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     b4e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b51:	c6 00 00             	movb   $0x0,(%eax)
}
     b54:	89 d8                	mov    %ebx,%eax
     b56:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b59:	c9                   	leave
     b5a:	c3                   	ret
     b5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000b60 <parsecmd>:
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	57                   	push   %edi
     b64:	56                   	push   %esi
  cmd = parseline(&s, es);
     b65:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     b68:	53                   	push   %ebx
     b69:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     b6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b6f:	53                   	push   %ebx
     b70:	e8 2b 01 00 00       	call   ca0 <strlen>
  cmd = parseline(&s, es);
     b75:	59                   	pop    %ecx
     b76:	5e                   	pop    %esi
  es = s + strlen(s);
     b77:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b79:	53                   	push   %ebx
     b7a:	57                   	push   %edi
     b7b:	e8 c0 fd ff ff       	call   940 <parseline>
  peek(&s, es, "");
     b80:	83 c4 0c             	add    $0xc,%esp
     b83:	68 86 16 00 00       	push   $0x1686
  cmd = parseline(&s, es);
     b88:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b8a:	53                   	push   %ebx
     b8b:	57                   	push   %edi
     b8c:	e8 3f fa ff ff       	call   5d0 <peek>
  if(s != es){
     b91:	8b 45 08             	mov    0x8(%ebp),%eax
     b94:	83 c4 10             	add    $0x10,%esp
     b97:	39 d8                	cmp    %ebx,%eax
     b99:	75 13                	jne    bae <parsecmd+0x4e>
  nulterminate(cmd);
     b9b:	83 ec 0c             	sub    $0xc,%esp
     b9e:	56                   	push   %esi
     b9f:	e8 0c ff ff ff       	call   ab0 <nulterminate>
}
     ba4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ba7:	89 f0                	mov    %esi,%eax
     ba9:	5b                   	pop    %ebx
     baa:	5e                   	pop    %esi
     bab:	5f                   	pop    %edi
     bac:	5d                   	pop    %ebp
     bad:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     bae:	52                   	push   %edx
     baf:	50                   	push   %eax
     bb0:	68 fa 16 00 00       	push   $0x16fa
     bb5:	6a 02                	push   $0x2
     bb7:	e8 44 06 00 00       	call   1200 <printf>
    panic("syntax");
     bbc:	c7 04 24 be 16 00 00 	movl   $0x16be,(%esp)
     bc3:	e8 a8 f5 ff ff       	call   170 <panic>
     bc8:	66 90                	xchg   %ax,%ax
     bca:	66 90                	xchg   %ax,%ax
     bcc:	66 90                	xchg   %ax,%ax
     bce:	66 90                	xchg   %ax,%ax
     bd0:	66 90                	xchg   %ax,%ax
     bd2:	66 90                	xchg   %ax,%ax
     bd4:	66 90                	xchg   %ax,%ax
     bd6:	66 90                	xchg   %ax,%ax
     bd8:	66 90                	xchg   %ax,%ax
     bda:	66 90                	xchg   %ax,%ax
     bdc:	66 90                	xchg   %ax,%ax
     bde:	66 90                	xchg   %ax,%ax
     be0:	66 90                	xchg   %ax,%ax
     be2:	66 90                	xchg   %ax,%ax
     be4:	66 90                	xchg   %ax,%ax
     be6:	66 90                	xchg   %ax,%ax
     be8:	66 90                	xchg   %ax,%ax
     bea:	66 90                	xchg   %ax,%ax
     bec:	66 90                	xchg   %ax,%ax
     bee:	66 90                	xchg   %ax,%ax
     bf0:	66 90                	xchg   %ax,%ax
     bf2:	66 90                	xchg   %ax,%ax
     bf4:	66 90                	xchg   %ax,%ax
     bf6:	66 90                	xchg   %ax,%ax
     bf8:	66 90                	xchg   %ax,%ax
     bfa:	66 90                	xchg   %ax,%ax
     bfc:	66 90                	xchg   %ax,%ax
     bfe:	66 90                	xchg   %ax,%ax

00000c00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c00:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c01:	31 c0                	xor    %eax,%eax
{
     c03:	89 e5                	mov    %esp,%ebp
     c05:	53                   	push   %ebx
     c06:	8b 4d 08             	mov    0x8(%ebp),%ecx
     c09:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     c10:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     c14:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     c17:	83 c0 01             	add    $0x1,%eax
     c1a:	84 d2                	test   %dl,%dl
     c1c:	75 f2                	jne    c10 <strcpy+0x10>
    ;
  return os;
}
     c1e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c21:	89 c8                	mov    %ecx,%eax
     c23:	c9                   	leave
     c24:	c3                   	ret
     c25:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c2c:	00 
     c2d:	8d 76 00             	lea    0x0(%esi),%esi

00000c30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	53                   	push   %ebx
     c34:	8b 55 08             	mov    0x8(%ebp),%edx
     c37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c3a:	0f b6 02             	movzbl (%edx),%eax
     c3d:	84 c0                	test   %al,%al
     c3f:	75 2f                	jne    c70 <strcmp+0x40>
     c41:	eb 4a                	jmp    c8d <strcmp+0x5d>
     c43:	eb 1b                	jmp    c60 <strcmp+0x30>
     c45:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c4c:	00 
     c4d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c54:	00 
     c55:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c5c:	00 
     c5d:	8d 76 00             	lea    0x0(%esi),%esi
     c60:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     c64:	83 c2 01             	add    $0x1,%edx
     c67:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     c6a:	84 c0                	test   %al,%al
     c6c:	74 12                	je     c80 <strcmp+0x50>
     c6e:	89 d9                	mov    %ebx,%ecx
     c70:	0f b6 19             	movzbl (%ecx),%ebx
     c73:	38 c3                	cmp    %al,%bl
     c75:	74 e9                	je     c60 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
     c77:	29 d8                	sub    %ebx,%eax
}
     c79:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c7c:	c9                   	leave
     c7d:	c3                   	ret
     c7e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
     c80:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     c84:	31 c0                	xor    %eax,%eax
     c86:	29 d8                	sub    %ebx,%eax
}
     c88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c8b:	c9                   	leave
     c8c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     c8d:	0f b6 19             	movzbl (%ecx),%ebx
     c90:	31 c0                	xor    %eax,%eax
     c92:	eb e3                	jmp    c77 <strcmp+0x47>
     c94:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c9b:	00 
     c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ca0 <strlen>:

uint
strlen(const char *s)
{
     ca0:	55                   	push   %ebp
     ca1:	89 e5                	mov    %esp,%ebp
     ca3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     ca6:	80 3a 00             	cmpb   $0x0,(%edx)
     ca9:	74 15                	je     cc0 <strlen+0x20>
     cab:	31 c0                	xor    %eax,%eax
     cad:	8d 76 00             	lea    0x0(%esi),%esi
     cb0:	83 c0 01             	add    $0x1,%eax
     cb3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     cb7:	89 c1                	mov    %eax,%ecx
     cb9:	75 f5                	jne    cb0 <strlen+0x10>
    ;
  return n;
}
     cbb:	89 c8                	mov    %ecx,%eax
     cbd:	5d                   	pop    %ebp
     cbe:	c3                   	ret
     cbf:	90                   	nop
  for(n = 0; s[n]; n++)
     cc0:	31 c9                	xor    %ecx,%ecx
}
     cc2:	5d                   	pop    %ebp
     cc3:	89 c8                	mov    %ecx,%eax
     cc5:	c3                   	ret
     cc6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ccd:	00 
     cce:	66 90                	xchg   %ax,%ax

00000cd0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	57                   	push   %edi
     cd4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cd7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cda:	8b 45 0c             	mov    0xc(%ebp),%eax
     cdd:	89 d7                	mov    %edx,%edi
     cdf:	fc                   	cld
     ce0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     ce2:	8b 7d fc             	mov    -0x4(%ebp),%edi
     ce5:	89 d0                	mov    %edx,%eax
     ce7:	c9                   	leave
     ce8:	c3                   	ret
     ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000cf0 <strchr>:

char*
strchr(const char *s, char c)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	8b 45 08             	mov    0x8(%ebp),%eax
     cf6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     cfa:	0f b6 10             	movzbl (%eax),%edx
     cfd:	84 d2                	test   %dl,%dl
     cff:	75 1a                	jne    d1b <strchr+0x2b>
     d01:	eb 25                	jmp    d28 <strchr+0x38>
     d03:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d0a:	00 
     d0b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     d10:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     d14:	83 c0 01             	add    $0x1,%eax
     d17:	84 d2                	test   %dl,%dl
     d19:	74 0d                	je     d28 <strchr+0x38>
    if(*s == c)
     d1b:	38 d1                	cmp    %dl,%cl
     d1d:	75 f1                	jne    d10 <strchr+0x20>
      return (char*)s;
  return 0;
}
     d1f:	5d                   	pop    %ebp
     d20:	c3                   	ret
     d21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     d28:	31 c0                	xor    %eax,%eax
}
     d2a:	5d                   	pop    %ebp
     d2b:	c3                   	ret
     d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d30 <gets>:

char*
gets(char *buf, int max)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	57                   	push   %edi
     d34:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     d35:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     d38:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     d39:	31 db                	xor    %ebx,%ebx
{
     d3b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     d3e:	eb 27                	jmp    d67 <gets+0x37>
    cc = read(0, &c, 1);
     d40:	83 ec 04             	sub    $0x4,%esp
     d43:	6a 01                	push   $0x1
     d45:	56                   	push   %esi
     d46:	6a 00                	push   $0x0
     d48:	e8 63 03 00 00       	call   10b0 <read>
    if(cc < 1)
     d4d:	83 c4 10             	add    $0x10,%esp
     d50:	85 c0                	test   %eax,%eax
     d52:	7e 1d                	jle    d71 <gets+0x41>
      break;
    buf[i++] = c;
     d54:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d58:	8b 55 08             	mov    0x8(%ebp),%edx
     d5b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d5f:	3c 0a                	cmp    $0xa,%al
     d61:	74 10                	je     d73 <gets+0x43>
     d63:	3c 0d                	cmp    $0xd,%al
     d65:	74 0c                	je     d73 <gets+0x43>
  for(i=0; i+1 < max; ){
     d67:	89 df                	mov    %ebx,%edi
     d69:	83 c3 01             	add    $0x1,%ebx
     d6c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d6f:	7c cf                	jl     d40 <gets+0x10>
     d71:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     d73:	8b 45 08             	mov    0x8(%ebp),%eax
     d76:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     d7a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d7d:	5b                   	pop    %ebx
     d7e:	5e                   	pop    %esi
     d7f:	5f                   	pop    %edi
     d80:	5d                   	pop    %ebp
     d81:	c3                   	ret
     d82:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d89:	00 
     d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d90 <stat>:

int
stat(const char *n, struct stat *st)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d95:	83 ec 08             	sub    $0x8,%esp
     d98:	6a 00                	push   $0x0
     d9a:	ff 75 08             	push   0x8(%ebp)
     d9d:	e8 36 03 00 00       	call   10d8 <open>
  if(fd < 0)
     da2:	83 c4 10             	add    $0x10,%esp
     da5:	85 c0                	test   %eax,%eax
     da7:	78 27                	js     dd0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     da9:	83 ec 08             	sub    $0x8,%esp
     dac:	ff 75 0c             	push   0xc(%ebp)
     daf:	89 c3                	mov    %eax,%ebx
     db1:	50                   	push   %eax
     db2:	e8 39 03 00 00       	call   10f0 <fstat>
  close(fd);
     db7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     dba:	89 c6                	mov    %eax,%esi
  close(fd);
     dbc:	e8 ff 02 00 00       	call   10c0 <close>
  return r;
     dc1:	83 c4 10             	add    $0x10,%esp
}
     dc4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     dc7:	89 f0                	mov    %esi,%eax
     dc9:	5b                   	pop    %ebx
     dca:	5e                   	pop    %esi
     dcb:	5d                   	pop    %ebp
     dcc:	c3                   	ret
     dcd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     dd0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     dd5:	eb ed                	jmp    dc4 <stat+0x34>
     dd7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     dde:	00 
     ddf:	90                   	nop

00000de0 <atoi>:

int
atoi(const char *s)
{
     de0:	55                   	push   %ebp
     de1:	b8 01 00 00 00       	mov    $0x1,%eax
     de6:	89 e5                	mov    %esp,%ebp
     de8:	56                   	push   %esi
     de9:	8b 75 08             	mov    0x8(%ebp),%esi
     dec:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
     ded:	0f be 16             	movsbl (%esi),%edx
     df0:	80 fa 2d             	cmp    $0x2d,%dl
     df3:	75 0c                	jne    e01 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
     df5:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
     df9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
     dfe:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
     e01:	8d 4a d0             	lea    -0x30(%edx),%ecx
     e04:	80 f9 09             	cmp    $0x9,%cl
     e07:	77 37                	ja     e40 <atoi+0x60>
  n = 0;
     e09:	31 c9                	xor    %ecx,%ecx
     e0b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e12:	00 
     e13:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e1a:	00 
     e1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
     e20:	83 c6 01             	add    $0x1,%esi
     e23:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     e26:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
     e2a:	0f be 16             	movsbl (%esi),%edx
     e2d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e30:	80 fb 09             	cmp    $0x9,%bl
     e33:	76 eb                	jbe    e20 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
     e35:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
     e36:	0f af c1             	imul   %ecx,%eax
}
     e39:	5e                   	pop    %esi
     e3a:	5d                   	pop    %ebp
     e3b:	c3                   	ret
     e3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e40:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
     e41:	31 c0                	xor    %eax,%eax
}
     e43:	5e                   	pop    %esi
     e44:	5d                   	pop    %ebp
     e45:	c3                   	ret
     e46:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e4d:	00 
     e4e:	66 90                	xchg   %ax,%ax

00000e50 <atof>:

double atof(const char *s){
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 0c             	sub    $0xc,%esp
     e59:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
     e5c:	0f b6 0a             	movzbl (%edx),%ecx
     e5f:	80 f9 2d             	cmp    $0x2d,%cl
     e62:	0f 84 28 01 00 00    	je     f90 <atof+0x140>
  const char *integerPart = s;
     e68:	89 d3                	mov    %edx,%ebx
     e6a:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
     e6d:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
     e74:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
     e76:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
     e7b:	84 c9                	test   %cl,%cl
     e7d:	75 2f                	jne    eae <atof+0x5e>
     e7f:	eb 7b                	jmp    efc <atof+0xac>
     e81:	eb 1d                	jmp    ea0 <atof+0x50>
     e83:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e8a:	00 
     e8b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e92:	00 
     e93:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e9a:	00 
     e9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     ea0:	0f b6 08             	movzbl (%eax),%ecx
     ea3:	84 c9                	test   %cl,%cl
     ea5:	0f 84 d5 00 00 00    	je     f80 <atof+0x130>
     eab:	83 c0 01             	add    $0x1,%eax
     eae:	89 c2                	mov    %eax,%edx
    if(*s == c)
     eb0:	80 f9 2e             	cmp    $0x2e,%cl
     eb3:	75 eb                	jne    ea0 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
     eb5:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
     eb8:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
     eba:	8d 48 d0             	lea    -0x30(%eax),%ecx
     ebd:	80 f9 09             	cmp    $0x9,%cl
     ec0:	77 3a                	ja     efc <atof+0xac>
     ec2:	eb 1c                	jmp    ee0 <atof+0x90>
     ec4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ecb:	00 
     ecc:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ed3:	00 
     ed4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     edb:	00 
     edc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
     ee0:	83 e8 30             	sub    $0x30,%eax
     ee3:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
     ee6:	83 c3 01             	add    $0x1,%ebx
     ee9:	0f be c0             	movsbl %al,%eax
     eec:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
     eef:	0f b6 03             	movzbl (%ebx),%eax
     ef2:	8d 70 d0             	lea    -0x30(%eax),%esi
     ef5:	89 f1                	mov    %esi,%ecx
     ef7:	80 f9 09             	cmp    $0x9,%cl
     efa:	76 e4                	jbe    ee0 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
     efc:	0f b6 02             	movzbl (%edx),%eax
     eff:	8d 58 d0             	lea    -0x30(%eax),%ebx
     f02:	80 fb 09             	cmp    $0x9,%bl
     f05:	0f 87 9d 00 00 00    	ja     fa8 <atof+0x158>
  double divisor = 10.0;   
     f0b:	d9 05 58 17 00 00    	flds   0x1758
  double fraction = 0.0;  
     f11:	d9 ee                	fldz
     f13:	eb 2d                	jmp    f42 <atof+0xf2>
     f15:	eb 29                	jmp    f40 <atof+0xf0>
     f17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f1e:	00 
     f1f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f26:	00 
     f27:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f2e:	00 
     f2f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f36:	00 
     f37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f3e:	00 
     f3f:	90                   	nop
     f40:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
     f42:	83 e8 30             	sub    $0x30,%eax
     f45:	83 c2 01             	add    $0x1,%edx
     f48:	66 98                	cbtw
     f4a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
     f4e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
     f51:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
     f54:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
     f56:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
     f59:	de c1                	faddp  %st,%st(1)
     f5b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
     f5d:	d8 0d 58 17 00 00    	fmuls  0x1758
  while('0' <= *fractionPart && *fractionPart <= '9'){
     f63:	80 fb 09             	cmp    $0x9,%bl
     f66:	76 d8                	jbe    f40 <atof+0xf0>
     f68:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
     f6a:	89 7d ec             	mov    %edi,-0x14(%ebp)
     f6d:	db 45 ec             	fildl  -0x14(%ebp)
     f70:	de c1                	faddp  %st,%st(1)
  return sign*answer;
     f72:	db 45 e8             	fildl  -0x18(%ebp)
}
     f75:	83 c4 0c             	add    $0xc,%esp
     f78:	5b                   	pop    %ebx
     f79:	5e                   	pop    %esi
     f7a:	5f                   	pop    %edi
     f7b:	5d                   	pop    %ebp
  return sign*answer;
     f7c:	de c9                	fmulp  %st,%st(1)
}
     f7e:	c3                   	ret
     f7f:	90                   	nop
     f80:	ba 01 00 00 00       	mov    $0x1,%edx
     f85:	e9 2b ff ff ff       	jmp    eb5 <atof+0x65>
     f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
     f90:	8d 42 01             	lea    0x1(%edx),%eax
     f93:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
     f9a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
     f9c:	e9 0d ff ff ff       	jmp    eae <atof+0x5e>
     fa1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
     fa8:	d9 ee                	fldz
     faa:	eb be                	jmp    f6a <atof+0x11a>
     fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000fb0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
     fb0:	55                   	push   %ebp
     fb1:	89 e5                	mov    %esp,%ebp
     fb3:	57                   	push   %edi
     fb4:	8b 45 10             	mov    0x10(%ebp),%eax
     fb7:	8b 55 08             	mov    0x8(%ebp),%edx
     fba:	56                   	push   %esi
     fbb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     fbe:	85 c0                	test   %eax,%eax
     fc0:	7e 13                	jle    fd5 <memmove+0x25>
     fc2:	01 d0                	add    %edx,%eax
  dst = vdst;
     fc4:	89 d7                	mov    %edx,%edi
     fc6:	66 90                	xchg   %ax,%ax
     fc8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     fcf:	00 
    *dst++ = *src++;
     fd0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     fd1:	39 f8                	cmp    %edi,%eax
     fd3:	75 fb                	jne    fd0 <memmove+0x20>
  return vdst;
}
     fd5:	5e                   	pop    %esi
     fd6:	89 d0                	mov    %edx,%eax
     fd8:	5f                   	pop    %edi
     fd9:	5d                   	pop    %ebp
     fda:	c3                   	ret
     fdb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000fe0 <fsqrt>:

double fsqrt(double n) {
     fe0:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
     fe1:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
     fe6:	89 e5                	mov    %esp,%ebp
     fe8:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
     feb:	d9 c0                	fld    %st(0)
     fed:	d8 0d 5c 17 00 00    	fmuls  0x175c
    for (int i = 0; i < 20; i++) {
     ff3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ffa:	00 
     ffb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
    1000:	d9 c1                	fld    %st(1)
    1002:	d8 f1                	fdiv   %st(1),%st
    1004:	de c1                	faddp  %st,%st(1)
    1006:	d8 0d 5c 17 00 00    	fmuls  0x175c
    for (int i = 0; i < 20; i++) {
    100c:	83 e8 01             	sub    $0x1,%eax
    100f:	75 ef                	jne    1000 <fsqrt+0x20>
    1011:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
    1013:	5d                   	pop    %ebp
    1014:	c3                   	ret
    1015:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    101c:	00 
    101d:	8d 76 00             	lea    0x0(%esi),%esi

00001020 <insertionSort>:

void insertionSort(double arr[], int n)
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	57                   	push   %edi
    1024:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1027:	56                   	push   %esi
    1028:	8b 75 08             	mov    0x8(%ebp),%esi
    102b:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
    102c:	83 ff 01             	cmp    $0x1,%edi
    102f:	7e 5a                	jle    108b <insertionSort+0x6b>
    1031:	bb 01 00 00 00       	mov    $0x1,%ebx
    1036:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    103d:	00 
    103e:	66 90                	xchg   %ax,%ax
        double key = arr[i];
    1040:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
    1043:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
    1046:	8d 04 de             	lea    (%esi,%ebx,8),%eax
    1049:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1050:	00 
    1051:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1058:	00 
    1059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1060:	dd 40 f8             	fldl   -0x8(%eax)
    1063:	89 c1                	mov    %eax,%ecx
    1065:	db f1                	fcomi  %st(1),%st
    1067:	76 17                	jbe    1080 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
    1069:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
    106c:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
    106e:	8d 41 f8             	lea    -0x8(%ecx),%eax
    1071:	83 fa ff             	cmp    $0xffffffff,%edx
    1074:	75 ea                	jne    1060 <insertionSort+0x40>
    1076:	89 f1                	mov    %esi,%ecx
    1078:	eb 08                	jmp    1082 <insertionSort+0x62>
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1080:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
    1082:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
    1085:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
    1087:	39 df                	cmp    %ebx,%edi
    1089:	75 b5                	jne    1040 <insertionSort+0x20>
    }
    
    108b:	5b                   	pop    %ebx
    108c:	5e                   	pop    %esi
    108d:	5f                   	pop    %edi
    108e:	5d                   	pop    %ebp
    108f:	c3                   	ret

00001090 <fork>:
    1090:	b8 01 00 00 00       	mov    $0x1,%eax
    1095:	cd 40                	int    $0x40
    1097:	c3                   	ret

00001098 <exit>:
    1098:	b8 02 00 00 00       	mov    $0x2,%eax
    109d:	cd 40                	int    $0x40
    109f:	c3                   	ret

000010a0 <wait>:
    10a0:	b8 03 00 00 00       	mov    $0x3,%eax
    10a5:	cd 40                	int    $0x40
    10a7:	c3                   	ret

000010a8 <pipe>:
    10a8:	b8 04 00 00 00       	mov    $0x4,%eax
    10ad:	cd 40                	int    $0x40
    10af:	c3                   	ret

000010b0 <read>:
    10b0:	b8 05 00 00 00       	mov    $0x5,%eax
    10b5:	cd 40                	int    $0x40
    10b7:	c3                   	ret

000010b8 <write>:
    10b8:	b8 10 00 00 00       	mov    $0x10,%eax
    10bd:	cd 40                	int    $0x40
    10bf:	c3                   	ret

000010c0 <close>:
    10c0:	b8 15 00 00 00       	mov    $0x15,%eax
    10c5:	cd 40                	int    $0x40
    10c7:	c3                   	ret

000010c8 <kill>:
    10c8:	b8 06 00 00 00       	mov    $0x6,%eax
    10cd:	cd 40                	int    $0x40
    10cf:	c3                   	ret

000010d0 <exec>:
    10d0:	b8 07 00 00 00       	mov    $0x7,%eax
    10d5:	cd 40                	int    $0x40
    10d7:	c3                   	ret

000010d8 <open>:
    10d8:	b8 0f 00 00 00       	mov    $0xf,%eax
    10dd:	cd 40                	int    $0x40
    10df:	c3                   	ret

000010e0 <mknod>:
    10e0:	b8 11 00 00 00       	mov    $0x11,%eax
    10e5:	cd 40                	int    $0x40
    10e7:	c3                   	ret

000010e8 <unlink>:
    10e8:	b8 12 00 00 00       	mov    $0x12,%eax
    10ed:	cd 40                	int    $0x40
    10ef:	c3                   	ret

000010f0 <fstat>:
    10f0:	b8 08 00 00 00       	mov    $0x8,%eax
    10f5:	cd 40                	int    $0x40
    10f7:	c3                   	ret

000010f8 <link>:
    10f8:	b8 13 00 00 00       	mov    $0x13,%eax
    10fd:	cd 40                	int    $0x40
    10ff:	c3                   	ret

00001100 <mkdir>:
    1100:	b8 14 00 00 00       	mov    $0x14,%eax
    1105:	cd 40                	int    $0x40
    1107:	c3                   	ret

00001108 <chdir>:
    1108:	b8 09 00 00 00       	mov    $0x9,%eax
    110d:	cd 40                	int    $0x40
    110f:	c3                   	ret

00001110 <dup>:
    1110:	b8 0a 00 00 00       	mov    $0xa,%eax
    1115:	cd 40                	int    $0x40
    1117:	c3                   	ret

00001118 <getpid>:
    1118:	b8 0b 00 00 00       	mov    $0xb,%eax
    111d:	cd 40                	int    $0x40
    111f:	c3                   	ret

00001120 <sbrk>:
    1120:	b8 0c 00 00 00       	mov    $0xc,%eax
    1125:	cd 40                	int    $0x40
    1127:	c3                   	ret

00001128 <sleep>:
    1128:	b8 0d 00 00 00       	mov    $0xd,%eax
    112d:	cd 40                	int    $0x40
    112f:	c3                   	ret

00001130 <uptime>:
    1130:	b8 0e 00 00 00       	mov    $0xe,%eax
    1135:	cd 40                	int    $0x40
    1137:	c3                   	ret
    1138:	66 90                	xchg   %ax,%ax
    113a:	66 90                	xchg   %ax,%ax
    113c:	66 90                	xchg   %ax,%ax
    113e:	66 90                	xchg   %ax,%ax

00001140 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	57                   	push   %edi
    1144:	56                   	push   %esi
    1145:	53                   	push   %ebx
    1146:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    1148:	89 d1                	mov    %edx,%ecx
{
    114a:	83 ec 3c             	sub    $0x3c,%esp
    114d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
    1150:	85 d2                	test   %edx,%edx
    1152:	0f 89 98 00 00 00    	jns    11f0 <printint+0xb0>
    1158:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    115c:	0f 84 8e 00 00 00    	je     11f0 <printint+0xb0>
    x = -xx;
    1162:	f7 d9                	neg    %ecx
    neg = 1;
    1164:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
    1169:	89 45 c0             	mov    %eax,-0x40(%ebp)
    116c:	31 f6                	xor    %esi,%esi
    116e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1175:	00 
    1176:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    117d:	00 
    117e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
    1180:	89 c8                	mov    %ecx,%eax
    1182:	31 d2                	xor    %edx,%edx
    1184:	89 f7                	mov    %esi,%edi
    1186:	f7 f3                	div    %ebx
    1188:	8d 76 01             	lea    0x1(%esi),%esi
    118b:	0f b6 92 b8 17 00 00 	movzbl 0x17b8(%edx),%edx
    1192:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    1196:	89 ca                	mov    %ecx,%edx
    1198:	89 c1                	mov    %eax,%ecx
    119a:	39 da                	cmp    %ebx,%edx
    119c:	73 e2                	jae    1180 <printint+0x40>
  if(neg)
    119e:	8b 45 c0             	mov    -0x40(%ebp),%eax
    11a1:	85 c0                	test   %eax,%eax
    11a3:	74 07                	je     11ac <printint+0x6c>
    buf[i++] = '-';
    11a5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    11aa:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
    11ac:	8d 5d d8             	lea    -0x28(%ebp),%ebx
    11af:	8b 75 c4             	mov    -0x3c(%ebp),%esi
    11b2:	01 df                	add    %ebx,%edi
    11b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    11bb:	00 
    11bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
    11c0:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
    11c3:	83 ec 04             	sub    $0x4,%esp
    11c6:	88 45 d7             	mov    %al,-0x29(%ebp)
    11c9:	8d 45 d7             	lea    -0x29(%ebp),%eax
    11cc:	6a 01                	push   $0x1
    11ce:	50                   	push   %eax
    11cf:	56                   	push   %esi
    11d0:	e8 e3 fe ff ff       	call   10b8 <write>
  while(--i >= 0)
    11d5:	89 f8                	mov    %edi,%eax
    11d7:	83 c4 10             	add    $0x10,%esp
    11da:	83 ef 01             	sub    $0x1,%edi
    11dd:	39 d8                	cmp    %ebx,%eax
    11df:	75 df                	jne    11c0 <printint+0x80>
}
    11e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11e4:	5b                   	pop    %ebx
    11e5:	5e                   	pop    %esi
    11e6:	5f                   	pop    %edi
    11e7:	5d                   	pop    %ebp
    11e8:	c3                   	ret
    11e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    11f0:	31 c0                	xor    %eax,%eax
    11f2:	e9 72 ff ff ff       	jmp    1169 <printint+0x29>
    11f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    11fe:	00 
    11ff:	90                   	nop

00001200 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	57                   	push   %edi
    1204:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    1205:	8d 7d 10             	lea    0x10(%ebp),%edi
{
    1208:	53                   	push   %ebx
    1209:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
    120c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
    120f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    1212:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
    1215:	0f b6 01             	movzbl (%ecx),%eax
    1218:	84 c0                	test   %al,%al
    121a:	74 2f                	je     124b <printf+0x4b>
    121c:	31 db                	xor    %ebx,%ebx
    121e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    1220:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
    1223:	83 fa 25             	cmp    $0x25,%edx
    1226:	74 30                	je     1258 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
    1228:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    122b:	83 ec 04             	sub    $0x4,%esp
    122e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1231:	6a 01                	push   $0x1
    1233:	50                   	push   %eax
    1234:	56                   	push   %esi
    1235:	e8 7e fe ff ff       	call   10b8 <write>
        putc(fd, c);
    123a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    123d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1240:	83 c3 01             	add    $0x1,%ebx
    1243:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    1247:	84 c0                	test   %al,%al
    1249:	75 d5                	jne    1220 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    124b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    124e:	5b                   	pop    %ebx
    124f:	5e                   	pop    %esi
    1250:	5f                   	pop    %edi
    1251:	5d                   	pop    %ebp
    1252:	c3                   	ret
    1253:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
    1258:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
    125d:	8d 7b 01             	lea    0x1(%ebx),%edi
    1260:	84 d2                	test   %dl,%dl
    1262:	74 e7                	je     124b <printf+0x4b>
    c = fmt[i] & 0xff;
    1264:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
    1267:	80 fa 25             	cmp    $0x25,%dl
    126a:	0f 84 10 02 00 00    	je     1480 <printf+0x280>
    1270:	83 e8 63             	sub    $0x63,%eax
    1273:	83 f8 15             	cmp    $0x15,%eax
    1276:	77 08                	ja     1280 <printf+0x80>
    1278:	ff 24 85 60 17 00 00 	jmp    *0x1760(,%eax,4)
    127f:	90                   	nop
  write(fd, &c, 1);
    1280:	83 ec 04             	sub    $0x4,%esp
    1283:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1286:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
    1289:	89 fb                	mov    %edi,%ebx
    128b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    128f:	6a 01                	push   $0x1
    1291:	51                   	push   %ecx
    1292:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    1295:	56                   	push   %esi
    1296:	e8 1d fe ff ff       	call   10b8 <write>
        putc(fd, c);
    129b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
    129f:	83 c4 0c             	add    $0xc,%esp
    12a2:	88 55 e7             	mov    %dl,-0x19(%ebp)
    12a5:	6a 01                	push   $0x1
    12a7:	8b 4d c8             	mov    -0x38(%ebp),%ecx
    12aa:	51                   	push   %ecx
    12ab:	56                   	push   %esi
    12ac:	e8 07 fe ff ff       	call   10b8 <write>
        putc(fd, c);
    12b1:	83 c4 10             	add    $0x10,%esp
    12b4:	eb 87                	jmp    123d <printf+0x3d>
    12b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12bd:	00 
    12be:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    12c0:	8b 7d d0             	mov    -0x30(%ebp),%edi
    12c3:	83 ec 0c             	sub    $0xc,%esp
    12c6:	b9 10 00 00 00       	mov    $0x10,%ecx
    12cb:	8b 17                	mov    (%edi),%edx
    12cd:	6a 00                	push   $0x0
    12cf:	89 f0                	mov    %esi,%eax
    12d1:	e8 6a fe ff ff       	call   1140 <printint>
        ap++;
    12d6:	83 c7 04             	add    $0x4,%edi
    12d9:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
    12dc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    12df:	83 c3 02             	add    $0x2,%ebx
    12e2:	83 c4 10             	add    $0x10,%esp
    12e5:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    12e9:	84 c0                	test   %al,%al
    12eb:	0f 85 2f ff ff ff    	jne    1220 <printf+0x20>
}
    12f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12f4:	5b                   	pop    %ebx
    12f5:	5e                   	pop    %esi
    12f6:	5f                   	pop    %edi
    12f7:	5d                   	pop    %ebp
    12f8:	c3                   	ret
    12f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
    1300:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1303:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
    1305:	d9 7d d6             	fnstcw -0x2a(%ebp)
    1308:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
    130c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
    130f:	80 cc 0c             	or     $0xc,%ah
    1312:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
    1316:	d9 6d d4             	fldcw  -0x2c(%ebp)
    1319:	db 55 c0             	fistl  -0x40(%ebp)
    131c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
    131f:	db 45 c0             	fildl  -0x40(%ebp)
    1322:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
    1324:	d9 ee                	fldz
    1326:	df f1                	fcomip %st(1),%st
    1328:	0f 87 82 01 00 00    	ja     14b0 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
    132e:	83 ec 0c             	sub    $0xc,%esp
    1331:	dd 5d b0             	fstpl  -0x50(%ebp)
    1334:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1339:	89 f0                	mov    %esi,%eax
    133b:	6a 01                	push   $0x1
    133d:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
    1340:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
    1345:	e8 f6 fd ff ff       	call   1140 <printint>
  write(fd, &c, 1);
    134a:	83 c4 0c             	add    $0xc,%esp
    134d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1350:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
    1354:	6a 01                	push   $0x1
    1356:	51                   	push   %ecx
    1357:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    135a:	56                   	push   %esi
    135b:	e8 58 fd ff ff       	call   10b8 <write>
        putc(fd, '.'); //adds the decimal point
    1360:	8b 4d c8             	mov    -0x38(%ebp),%ecx
    1363:	83 c4 10             	add    $0x10,%esp
    1366:	dd 45 b0             	fldl   -0x50(%ebp)
    1369:	89 5d b8             	mov    %ebx,-0x48(%ebp)
    136c:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
    136f:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
    1372:	d8 0d 58 17 00 00    	fmuls  0x1758
          int digit = (int) fraction_part;
    1378:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
    137c:	80 cc 0c             	or     $0xc,%ah
    137f:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
    1383:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
    1388:	d9 6d d4             	fldcw  -0x2c(%ebp)
    138b:	db 55 c8             	fistl  -0x38(%ebp)
    138e:	d9 6d d6             	fldcw  -0x2a(%ebp)
    1391:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
    1394:	39 c3                	cmp    %eax,%ebx
    1396:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
    1399:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
    139c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
    139f:	8d 43 30             	lea    0x30(%ebx),%eax
    13a2:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    13a5:	6a 01                	push   $0x1
    13a7:	ff 75 bc             	push   -0x44(%ebp)
    13aa:	56                   	push   %esi
    13ab:	e8 08 fd ff ff       	call   10b8 <write>
          fraction_part -= digit;
    13b0:	89 5d c8             	mov    %ebx,-0x38(%ebp)
    13b3:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
    13b6:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
    13b9:	dd 45 c0             	fldl   -0x40(%ebp)
    13bc:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
    13be:	83 ef 01             	sub    $0x1,%edi
    13c1:	75 ac                	jne    136f <printf+0x16f>
    13c3:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
    13c5:	8b 45 d0             	mov    -0x30(%ebp),%eax
    13c8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
    13cb:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
    13ce:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    13d1:	83 c3 02             	add    $0x2,%ebx
    13d4:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    13d8:	84 c0                	test   %al,%al
    13da:	0f 85 40 fe ff ff    	jne    1220 <printf+0x20>
}
    13e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13e3:	5b                   	pop    %ebx
    13e4:	5e                   	pop    %esi
    13e5:	5f                   	pop    %edi
    13e6:	5d                   	pop    %ebp
    13e7:	c3                   	ret
    13e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    13ef:	00 
        s = (char*)*ap;
    13f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    13f3:	8b 38                	mov    (%eax),%edi
        ap++;
    13f5:	83 c0 04             	add    $0x4,%eax
    13f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    13fb:	85 ff                	test   %edi,%edi
    13fd:	0f 84 9d 00 00 00    	je     14a0 <printf+0x2a0>
        while(*s != 0){
    1403:	0f b6 07             	movzbl (%edi),%eax
    1406:	84 c0                	test   %al,%al
    1408:	0f 84 a9 00 00 00    	je     14b7 <printf+0x2b7>
    140e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1411:	89 5d c8             	mov    %ebx,-0x38(%ebp)
    1414:	89 fb                	mov    %edi,%ebx
    1416:	89 cf                	mov    %ecx,%edi
    1418:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    141f:	00 
  write(fd, &c, 1);
    1420:	83 ec 04             	sub    $0x4,%esp
    1423:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    1426:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    1429:	6a 01                	push   $0x1
    142b:	57                   	push   %edi
    142c:	56                   	push   %esi
    142d:	e8 86 fc ff ff       	call   10b8 <write>
        while(*s != 0){
    1432:	0f b6 03             	movzbl (%ebx),%eax
    1435:	83 c4 10             	add    $0x10,%esp
    1438:	84 c0                	test   %al,%al
    143a:	75 e4                	jne    1420 <printf+0x220>
    143c:	8b 5d c8             	mov    -0x38(%ebp),%ebx
    143f:	eb 8d                	jmp    13ce <printf+0x1ce>
    1441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
    1448:	8b 7d d0             	mov    -0x30(%ebp),%edi
    144b:	83 ec 0c             	sub    $0xc,%esp
    144e:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1453:	8b 17                	mov    (%edi),%edx
    1455:	6a 01                	push   $0x1
    1457:	e9 73 fe ff ff       	jmp    12cf <printf+0xcf>
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1460:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
    1463:	83 ec 04             	sub    $0x4,%esp
    1466:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
    1469:	8b 07                	mov    (%edi),%eax
    146b:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    146e:	6a 01                	push   $0x1
    1470:	51                   	push   %ecx
    1471:	56                   	push   %esi
    1472:	e8 41 fc ff ff       	call   10b8 <write>
    1477:	e9 5a fe ff ff       	jmp    12d6 <printf+0xd6>
    147c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1480:	83 ec 04             	sub    $0x4,%esp
    1483:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1486:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1489:	6a 01                	push   $0x1
    148b:	51                   	push   %ecx
    148c:	56                   	push   %esi
    148d:	e8 26 fc ff ff       	call   10b8 <write>
    1492:	e9 45 fe ff ff       	jmp    12dc <printf+0xdc>
    1497:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    149e:	00 
    149f:	90                   	nop
    14a0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    14a5:	bf 1f 17 00 00       	mov    $0x171f,%edi
    14aa:	e9 5f ff ff ff       	jmp    140e <printf+0x20e>
    14af:	90                   	nop
          fraction_part = -fraction_part;
    14b0:	d9 e0                	fchs
    14b2:	e9 77 fe ff ff       	jmp    132e <printf+0x12e>
  for(i = 0; fmt[i]; i++){
    14b7:	83 c3 02             	add    $0x2,%ebx
    14ba:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    14be:	84 c0                	test   %al,%al
    14c0:	0f 85 5a fd ff ff    	jne    1220 <printf+0x20>
    14c6:	e9 80 fd ff ff       	jmp    124b <printf+0x4b>
    14cb:	66 90                	xchg   %ax,%ax
    14cd:	66 90                	xchg   %ax,%ax
    14cf:	66 90                	xchg   %ax,%ax
    14d1:	66 90                	xchg   %ax,%ax
    14d3:	66 90                	xchg   %ax,%ax
    14d5:	66 90                	xchg   %ax,%ax
    14d7:	66 90                	xchg   %ax,%ax
    14d9:	66 90                	xchg   %ax,%ax
    14db:	66 90                	xchg   %ax,%ax
    14dd:	66 90                	xchg   %ax,%ax
    14df:	90                   	nop

000014e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    14e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14e1:	a1 c4 1e 00 00       	mov    0x1ec4,%eax
{
    14e6:	89 e5                	mov    %esp,%ebp
    14e8:	57                   	push   %edi
    14e9:	56                   	push   %esi
    14ea:	53                   	push   %ebx
    14eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    14ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14f1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    14f8:	00 
    14f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1500:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1502:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1504:	39 ca                	cmp    %ecx,%edx
    1506:	73 30                	jae    1538 <free+0x58>
    1508:	39 c1                	cmp    %eax,%ecx
    150a:	72 04                	jb     1510 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    150c:	39 c2                	cmp    %eax,%edx
    150e:	72 f0                	jb     1500 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1510:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1513:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1516:	39 f8                	cmp    %edi,%eax
    1518:	74 36                	je     1550 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    151a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    151d:	8b 42 04             	mov    0x4(%edx),%eax
    1520:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1523:	39 f1                	cmp    %esi,%ecx
    1525:	74 40                	je     1567 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    1527:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    1529:	5b                   	pop    %ebx
  freep = p;
    152a:	89 15 c4 1e 00 00    	mov    %edx,0x1ec4
}
    1530:	5e                   	pop    %esi
    1531:	5f                   	pop    %edi
    1532:	5d                   	pop    %ebp
    1533:	c3                   	ret
    1534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1538:	39 c2                	cmp    %eax,%edx
    153a:	72 c4                	jb     1500 <free+0x20>
    153c:	39 c1                	cmp    %eax,%ecx
    153e:	73 c0                	jae    1500 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    1540:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1543:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1546:	39 f8                	cmp    %edi,%eax
    1548:	75 d0                	jne    151a <free+0x3a>
    154a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    1550:	03 70 04             	add    0x4(%eax),%esi
    1553:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1556:	8b 02                	mov    (%edx),%eax
    1558:	8b 00                	mov    (%eax),%eax
    155a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    155d:	8b 42 04             	mov    0x4(%edx),%eax
    1560:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1563:	39 f1                	cmp    %esi,%ecx
    1565:	75 c0                	jne    1527 <free+0x47>
    p->s.size += bp->s.size;
    1567:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    156a:	89 15 c4 1e 00 00    	mov    %edx,0x1ec4
    p->s.size += bp->s.size;
    1570:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1573:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1576:	89 0a                	mov    %ecx,(%edx)
}
    1578:	5b                   	pop    %ebx
    1579:	5e                   	pop    %esi
    157a:	5f                   	pop    %edi
    157b:	5d                   	pop    %ebp
    157c:	c3                   	ret
    157d:	8d 76 00             	lea    0x0(%esi),%esi

00001580 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1580:	55                   	push   %ebp
    1581:	89 e5                	mov    %esp,%ebp
    1583:	57                   	push   %edi
    1584:	56                   	push   %esi
    1585:	53                   	push   %ebx
    1586:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1589:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    158c:	8b 15 c4 1e 00 00    	mov    0x1ec4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1592:	8d 78 07             	lea    0x7(%eax),%edi
    1595:	c1 ef 03             	shr    $0x3,%edi
    1598:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    159b:	85 d2                	test   %edx,%edx
    159d:	0f 84 8d 00 00 00    	je     1630 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15a3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    15a5:	8b 48 04             	mov    0x4(%eax),%ecx
    15a8:	39 f9                	cmp    %edi,%ecx
    15aa:	73 64                	jae    1610 <malloc+0x90>
  if(nu < 4096)
    15ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
    15b1:	39 df                	cmp    %ebx,%edi
    15b3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    15b6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    15bd:	eb 0a                	jmp    15c9 <malloc+0x49>
    15bf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    15c2:	8b 48 04             	mov    0x4(%eax),%ecx
    15c5:	39 f9                	cmp    %edi,%ecx
    15c7:	73 47                	jae    1610 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    15c9:	89 c2                	mov    %eax,%edx
    15cb:	39 05 c4 1e 00 00    	cmp    %eax,0x1ec4
    15d1:	75 ed                	jne    15c0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    15d3:	83 ec 0c             	sub    $0xc,%esp
    15d6:	56                   	push   %esi
    15d7:	e8 44 fb ff ff       	call   1120 <sbrk>
  if(p == (char*)-1)
    15dc:	83 c4 10             	add    $0x10,%esp
    15df:	83 f8 ff             	cmp    $0xffffffff,%eax
    15e2:	74 1c                	je     1600 <malloc+0x80>
  hp->s.size = nu;
    15e4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    15e7:	83 ec 0c             	sub    $0xc,%esp
    15ea:	83 c0 08             	add    $0x8,%eax
    15ed:	50                   	push   %eax
    15ee:	e8 ed fe ff ff       	call   14e0 <free>
  return freep;
    15f3:	8b 15 c4 1e 00 00    	mov    0x1ec4,%edx
      if((p = morecore(nunits)) == 0)
    15f9:	83 c4 10             	add    $0x10,%esp
    15fc:	85 d2                	test   %edx,%edx
    15fe:	75 c0                	jne    15c0 <malloc+0x40>
        return 0;
  }
}
    1600:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1603:	31 c0                	xor    %eax,%eax
}
    1605:	5b                   	pop    %ebx
    1606:	5e                   	pop    %esi
    1607:	5f                   	pop    %edi
    1608:	5d                   	pop    %ebp
    1609:	c3                   	ret
    160a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1610:	39 cf                	cmp    %ecx,%edi
    1612:	74 4c                	je     1660 <malloc+0xe0>
        p->s.size -= nunits;
    1614:	29 f9                	sub    %edi,%ecx
    1616:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1619:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    161c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    161f:	89 15 c4 1e 00 00    	mov    %edx,0x1ec4
}
    1625:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1628:	83 c0 08             	add    $0x8,%eax
}
    162b:	5b                   	pop    %ebx
    162c:	5e                   	pop    %esi
    162d:	5f                   	pop    %edi
    162e:	5d                   	pop    %ebp
    162f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    1630:	c7 05 c4 1e 00 00 c8 	movl   $0x1ec8,0x1ec4
    1637:	1e 00 00 
    base.s.size = 0;
    163a:	b8 c8 1e 00 00       	mov    $0x1ec8,%eax
    base.s.ptr = freep = prevp = &base;
    163f:	c7 05 c8 1e 00 00 c8 	movl   $0x1ec8,0x1ec8
    1646:	1e 00 00 
    base.s.size = 0;
    1649:	c7 05 cc 1e 00 00 00 	movl   $0x0,0x1ecc
    1650:	00 00 00 
    if(p->s.size >= nunits){
    1653:	e9 54 ff ff ff       	jmp    15ac <malloc+0x2c>
    1658:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    165f:	00 
        prevp->s.ptr = p->s.ptr;
    1660:	8b 08                	mov    (%eax),%ecx
    1662:	89 0a                	mov    %ecx,(%edx)
    1664:	eb b9                	jmp    161f <malloc+0x9f>
