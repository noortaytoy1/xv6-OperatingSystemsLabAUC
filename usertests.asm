
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 16 51 00 00       	push   $0x5116
      16:	6a 01                	push   $0x1
      18:	e8 a3 3c 00 00       	call   3cc0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 2a 51 00 00       	push   $0x512a
      26:	e8 6d 3b 00 00       	call   3b98 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 9c 58 00 00       	push   $0x589c
      39:	6a 01                	push   $0x1
      3b:	e8 80 3c 00 00       	call   3cc0 <printf>
    exit();
      40:	e8 13 3b 00 00       	call   3b58 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 2a 51 00 00       	push   $0x512a
      51:	e8 42 3b 00 00       	call   3b98 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 22 3b 00 00       	call   3b80 <close>

  argptest();
      5e:	e8 ad 35 00 00       	call   3610 <argptest>
  createdelete();
      63:	e8 a8 11 00 00       	call   1210 <createdelete>
  linkunlink();
      68:	e8 53 1a 00 00       	call   1ac0 <linkunlink>
  concreate();
      6d:	e8 4e 17 00 00       	call   17c0 <concreate>
  fourfiles();
      72:	e8 a9 0f 00 00       	call   1020 <fourfiles>
  sharedfd();
      77:	e8 e4 0d 00 00       	call   e60 <sharedfd>

  bigargtest();
      7c:	e8 2f 32 00 00       	call   32b0 <bigargtest>
  bigwrite();
      81:	e8 5a 23 00 00       	call   23e0 <bigwrite>
  bigargtest();
      86:	e8 25 32 00 00       	call   32b0 <bigargtest>
  bsstest();
      8b:	e8 a0 31 00 00       	call   3230 <bsstest>
  sbrktest();
      90:	e8 9b 2c 00 00       	call   2d30 <sbrktest>
  validatetest();
      95:	e8 e6 30 00 00       	call   3180 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 b7 05 00 00       	call   660 <writetest1>
  createtest();
      a9:	e8 82 07 00 00       	call   830 <createtest>

  openiputtest();
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ce 0c 00 00       	call   d90 <mem>
  pipe1();
      c2:	e8 49 09 00 00       	call   a10 <pipe1>
  preempt();
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
  exitwait();
      cc:	e8 3f 0c 00 00       	call   d10 <exitwait>

  rmdot();
      d1:	e8 0a 27 00 00       	call   27e0 <rmdot>
  fourteen();
      d6:	e8 c5 25 00 00       	call   26a0 <fourteen>
  bigfile();
      db:	e8 e0 23 00 00       	call   24c0 <bigfile>
  subdir();
      e0:	e8 1b 1c 00 00       	call   1d00 <subdir>
  linktest();
      e5:	e8 c6 14 00 00       	call   15b0 <linktest>
  unlinkread();
      ea:	e8 31 13 00 00       	call   1420 <unlinkread>
  dirfile();
      ef:	e8 6c 28 00 00       	call   2960 <dirfile>
  iref();
      f4:	e8 67 2a 00 00       	call   2b60 <iref>
  forktest();
      f9:	e8 82 2b 00 00       	call   2c80 <forktest>
  bigdir(); // slow
      fe:	e8 cd 1a 00 00       	call   1bd0 <bigdir>

  uio();
     103:	e8 98 34 00 00       	call   35a0 <uio>

  exectest();
     108:	e8 b3 08 00 00       	call   9c0 <exectest>

  exit();
     10d:	e8 46 3a 00 00       	call   3b58 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 bc 41 00 00       	push   $0x41bc
     12b:	ff 35 cc 62 00 00    	push   0x62cc
     131:	e8 8a 3b 00 00       	call   3cc0 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 4f 41 00 00 	movl   $0x414f,(%esp)
     13d:	e8 7e 3a 00 00       	call   3bc0 <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 5a                	js     1a3 <iputtest+0x83>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 4f 41 00 00       	push   $0x414f
     151:	e8 72 3a 00 00       	call   3bc8 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 82 00 00 00    	js     1e3 <iputtest+0xc3>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 4c 41 00 00       	push   $0x414c
     169:	e8 3a 3a 00 00       	call   3ba8 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 57                	js     1cc <iputtest+0xac>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 71 41 00 00       	push   $0x4171
     17d:	e8 46 3a 00 00       	call   3bc8 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	89 c2                	mov    %eax,%edx
    printf(stdout, "chdir / failed\n");
     187:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(chdir("/") < 0){
     18c:	85 d2                	test   %edx,%edx
     18e:	78 2a                	js     1ba <iputtest+0x9a>
  printf(stdout, "iput test ok\n");
     190:	83 ec 08             	sub    $0x8,%esp
     193:	68 f4 41 00 00       	push   $0x41f4
     198:	50                   	push   %eax
     199:	e8 22 3b 00 00       	call   3cc0 <printf>
}
     19e:	83 c4 10             	add    $0x10,%esp
     1a1:	c9                   	leave
     1a2:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     1a3:	50                   	push   %eax
     1a4:	50                   	push   %eax
     1a5:	68 28 41 00 00       	push   $0x4128
     1aa:	ff 35 cc 62 00 00    	push   0x62cc
     1b0:	e8 0b 3b 00 00       	call   3cc0 <printf>
    exit();
     1b5:	e8 9e 39 00 00       	call   3b58 <exit>
    printf(stdout, "chdir / failed\n");
     1ba:	52                   	push   %edx
     1bb:	52                   	push   %edx
     1bc:	68 73 41 00 00       	push   $0x4173
     1c1:	50                   	push   %eax
     1c2:	e8 f9 3a 00 00       	call   3cc0 <printf>
    exit();
     1c7:	e8 8c 39 00 00       	call   3b58 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cc:	51                   	push   %ecx
     1cd:	51                   	push   %ecx
     1ce:	68 57 41 00 00       	push   $0x4157
     1d3:	ff 35 cc 62 00 00    	push   0x62cc
     1d9:	e8 e2 3a 00 00       	call   3cc0 <printf>
    exit();
     1de:	e8 75 39 00 00       	call   3b58 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e3:	50                   	push   %eax
     1e4:	50                   	push   %eax
     1e5:	68 36 41 00 00       	push   $0x4136
     1ea:	ff 35 cc 62 00 00    	push   0x62cc
     1f0:	e8 cb 3a 00 00       	call   3cc0 <printf>
    exit();
     1f5:	e8 5e 39 00 00       	call   3b58 <exit>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 83 41 00 00       	push   $0x4183
     20b:	ff 35 cc 62 00 00    	push   0x62cc
     211:	e8 aa 3a 00 00       	call   3cc0 <printf>
  pid = fork();
     216:	e8 35 39 00 00       	call   3b50 <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
  if(pid == 0){
     226:	75 50                	jne    278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 4f 41 00 00       	push   $0x414f
     230:	e8 8b 39 00 00       	call   3bc0 <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 4f 41 00 00       	push   $0x414f
     248:	e8 7b 39 00 00       	call   3bc8 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 4c 41 00 00       	push   $0x414c
     260:	e8 43 39 00 00       	call   3ba8 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
    exit();
     26c:	e8 e7 38 00 00       	call   3b58 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     278:	e8 e3 38 00 00       	call   3b60 <wait>
  printf(stdout, "exitiput test ok\n");
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 a6 41 00 00       	push   $0x41a6
     285:	ff 35 cc 62 00 00    	push   0x62cc
     28b:	e8 30 3a 00 00       	call   3cc0 <printf>
}
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave
     294:	c3                   	ret
     295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 57 41 00 00       	push   $0x4157
     2a0:	ff 35 cc 62 00 00    	push   0x62cc
     2a6:	e8 15 3a 00 00       	call   3cc0 <printf>
      exit();
     2ab:	e8 a8 38 00 00       	call   3b58 <exit>
    printf(stdout, "fork failed\n");
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 69 50 00 00       	push   $0x5069
     2b7:	ff 35 cc 62 00 00    	push   0x62cc
     2bd:	e8 fe 39 00 00       	call   3cc0 <printf>
    exit();
     2c2:	e8 91 38 00 00       	call   3b58 <exit>
      printf(stdout, "mkdir failed\n");
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 28 41 00 00       	push   $0x4128
     2ce:	ff 35 cc 62 00 00    	push   0x62cc
     2d4:	e8 e7 39 00 00       	call   3cc0 <printf>
      exit();
     2d9:	e8 7a 38 00 00       	call   3b58 <exit>
      printf(stdout, "child chdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 92 41 00 00       	push   $0x4192
     2e5:	ff 35 cc 62 00 00    	push   0x62cc
     2eb:	e8 d0 39 00 00       	call   3cc0 <printf>
      exit();
     2f0:	e8 63 38 00 00       	call   3b58 <exit>
     2f5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     2fc:	00 
     2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     306:	68 b8 41 00 00       	push   $0x41b8
     30b:	ff 35 cc 62 00 00    	push   0x62cc
     311:	e8 aa 39 00 00       	call   3cc0 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 c7 41 00 00 	movl   $0x41c7,(%esp)
     31d:	e8 9e 38 00 00       	call   3bc0 <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
  pid = fork();
     32d:	e8 1e 38 00 00       	call   3b50 <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
  if(pid == 0){
     336:	75 38                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 c7 41 00 00       	push   $0x41c7
     342:	e8 51 38 00 00       	call   3b98 <open>
    if(fd >= 0){
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 50 51 00 00       	push   $0x5150
     356:	ff 35 cc 62 00 00    	push   0x62cc
     35c:	e8 5f 39 00 00       	call   3cc0 <printf>
      exit();
     361:	e8 f2 37 00 00       	call   3b58 <exit>
     366:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     36d:	00 
     36e:	66 90                	xchg   %ax,%ax
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 6e 38 00 00       	call   3be8 <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 c7 41 00 00 	movl   $0x41c7,(%esp)
     381:	e8 22 38 00 00       	call   3ba8 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
  wait();
     38d:	e8 ce 37 00 00       	call   3b60 <wait>
  printf(stdout, "openiput test ok\n");
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 f0 41 00 00       	push   $0x41f0
     39a:	ff 35 cc 62 00 00    	push   0x62cc
     3a0:	e8 1b 39 00 00       	call   3cc0 <printf>
}
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	c9                   	leave
     3a9:	c3                   	ret
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3b0:	e8 a3 37 00 00       	call   3b58 <exit>
    printf(stdout, "fork failed\n");
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 69 50 00 00       	push   $0x5069
     3bc:	ff 35 cc 62 00 00    	push   0x62cc
     3c2:	e8 f9 38 00 00       	call   3cc0 <printf>
    exit();
     3c7:	e8 8c 37 00 00       	call   3b58 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 cd 41 00 00       	push   $0x41cd
     3d3:	ff 35 cc 62 00 00    	push   0x62cc
     3d9:	e8 e2 38 00 00       	call   3cc0 <printf>
    exit();
     3de:	e8 75 37 00 00       	call   3b58 <exit>
    printf(stdout, "unlink failed\n");
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 e1 41 00 00       	push   $0x41e1
     3ea:	ff 35 cc 62 00 00    	push   0x62cc
     3f0:	e8 cb 38 00 00       	call   3cc0 <printf>
    exit();
     3f5:	e8 5e 37 00 00       	call   3b58 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 02 42 00 00       	push   $0x4202
     40b:	ff 35 cc 62 00 00    	push   0x62cc
     411:	e8 aa 38 00 00       	call   3cc0 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 0d 42 00 00       	push   $0x420d
     41f:	e8 74 37 00 00       	call   3b98 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 38                	js     463 <opentest+0x63>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 4c 37 00 00       	call   3b80 <close>
  fd = open("doesnotexist", 0);
     434:	59                   	pop    %ecx
     435:	58                   	pop    %eax
     436:	6a 00                	push   $0x0
     438:	68 25 42 00 00       	push   $0x4225
     43d:	e8 56 37 00 00       	call   3b98 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
  fd = open("doesnotexist", 0);
     445:	89 c2                	mov    %eax,%edx
    printf(stdout, "open doesnotexist succeeded!\n");
     447:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(fd >= 0){
     44c:	85 d2                	test   %edx,%edx
     44e:	79 2a                	jns    47a <opentest+0x7a>
  printf(stdout, "open test ok\n");
     450:	83 ec 08             	sub    $0x8,%esp
     453:	68 50 42 00 00       	push   $0x4250
     458:	50                   	push   %eax
     459:	e8 62 38 00 00       	call   3cc0 <printf>
}
     45e:	83 c4 10             	add    $0x10,%esp
     461:	c9                   	leave
     462:	c3                   	ret
    printf(stdout, "open echo failed!\n");
     463:	50                   	push   %eax
     464:	50                   	push   %eax
     465:	68 12 42 00 00       	push   $0x4212
     46a:	ff 35 cc 62 00 00    	push   0x62cc
     470:	e8 4b 38 00 00       	call   3cc0 <printf>
    exit();
     475:	e8 de 36 00 00       	call   3b58 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47a:	52                   	push   %edx
     47b:	52                   	push   %edx
     47c:	68 32 42 00 00       	push   $0x4232
     481:	50                   	push   %eax
     482:	e8 39 38 00 00       	call   3cc0 <printf>
    exit();
     487:	e8 cc 36 00 00       	call   3b58 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 5e 42 00 00       	push   $0x425e
     49d:	ff 35 cc 62 00 00    	push   0x62cc
     4a3:	e8 18 38 00 00       	call   3cc0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	59                   	pop    %ecx
     4a9:	5b                   	pop    %ebx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 6f 42 00 00       	push   $0x426f
     4b4:	e8 df 36 00 00       	call   3b98 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_CREATE|O_RDWR);
     4bc:	89 c6                	mov    %eax,%esi
    printf(stdout, "creat small succeeded; ok\n");
     4be:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(fd >= 0){
     4c3:	85 f6                	test   %esi,%esi
     4c5:	0f 88 77 01 00 00    	js     642 <writetest+0x1b2>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 100; i++){
     4ce:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d0:	68 75 42 00 00       	push   $0x4275
     4d5:	50                   	push   %eax
     4d6:	e8 e5 37 00 00       	call   3cc0 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 ac 42 00 00       	push   $0x42ac
     4ea:	56                   	push   %esi
     4eb:	e8 88 36 00 00       	call   3b78 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 de 00 00 00    	jne    5da <writetest+0x14a>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 b7 42 00 00       	push   $0x42b7
     506:	56                   	push   %esi
     507:	e8 6c 36 00 00       	call   3b78 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 db 00 00 00    	jne    5f3 <writetest+0x163>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 c2 42 00 00       	push   $0x42c2
     528:	ff 35 cc 62 00 00    	push   0x62cc
     52e:	e8 8d 37 00 00       	call   3cc0 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 45 36 00 00       	call   3b80 <close>
  fd = open("small", O_RDONLY);
     53b:	5e                   	pop    %esi
     53c:	58                   	pop    %eax
     53d:	6a 00                	push   $0x0
     53f:	68 6f 42 00 00       	push   $0x426f
     544:	e8 4f 36 00 00       	call   3b98 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     54c:	89 c3                	mov    %eax,%ebx
    printf(stdout, "open small succeeded ok\n");
     54e:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(fd >= 0){
     553:	85 db                	test   %ebx,%ebx
     555:	0f 88 b1 00 00 00    	js     60c <writetest+0x17c>
    printf(stdout, "open small succeeded ok\n");
     55b:	83 ec 08             	sub    $0x8,%esp
     55e:	68 cd 42 00 00       	push   $0x42cd
     563:	50                   	push   %eax
     564:	e8 57 37 00 00       	call   3cc0 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 20 8a 00 00       	push   $0x8a20
     576:	53                   	push   %ebx
     577:	e8 f4 35 00 00       	call   3b70 <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     57f:	89 c2                	mov    %eax,%edx
    printf(stdout, "read succeeded ok\n");
     581:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(i == 2000){
     586:	81 fa d0 07 00 00    	cmp    $0x7d0,%edx
     58c:	0f 85 8c 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     592:	83 ec 08             	sub    $0x8,%esp
     595:	68 01 43 00 00       	push   $0x4301
     59a:	50                   	push   %eax
     59b:	e8 20 37 00 00       	call   3cc0 <printf>
  close(fd);
     5a0:	89 1c 24             	mov    %ebx,(%esp)
     5a3:	e8 d8 35 00 00       	call   3b80 <close>
  if(unlink("small") < 0){
     5a8:	c7 04 24 6f 42 00 00 	movl   $0x426f,(%esp)
     5af:	e8 f4 35 00 00       	call   3ba8 <unlink>
     5b4:	83 c4 10             	add    $0x10,%esp
     5b7:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink small failed\n");
     5b9:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(unlink("small") < 0){
     5be:	85 d2                	test   %edx,%edx
     5c0:	78 6e                	js     630 <writetest+0x1a0>
  printf(stdout, "small file test ok\n");
     5c2:	83 ec 08             	sub    $0x8,%esp
     5c5:	68 29 43 00 00       	push   $0x4329
     5ca:	50                   	push   %eax
     5cb:	e8 f0 36 00 00       	call   3cc0 <printf>
}
     5d0:	83 c4 10             	add    $0x10,%esp
     5d3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5d                   	pop    %ebp
     5d9:	c3                   	ret
      printf(stdout, "error: write aa %d new file failed\n", i);
     5da:	83 ec 04             	sub    $0x4,%esp
     5dd:	53                   	push   %ebx
     5de:	68 74 51 00 00       	push   $0x5174
     5e3:	ff 35 cc 62 00 00    	push   0x62cc
     5e9:	e8 d2 36 00 00       	call   3cc0 <printf>
      exit();
     5ee:	e8 65 35 00 00       	call   3b58 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5f3:	83 ec 04             	sub    $0x4,%esp
     5f6:	53                   	push   %ebx
     5f7:	68 98 51 00 00       	push   $0x5198
     5fc:	ff 35 cc 62 00 00    	push   0x62cc
     602:	e8 b9 36 00 00       	call   3cc0 <printf>
      exit();
     607:	e8 4c 35 00 00       	call   3b58 <exit>
    printf(stdout, "error: open small failed!\n");
     60c:	53                   	push   %ebx
     60d:	53                   	push   %ebx
     60e:	68 e6 42 00 00       	push   $0x42e6
     613:	50                   	push   %eax
     614:	e8 a7 36 00 00       	call   3cc0 <printf>
    exit();
     619:	e8 3a 35 00 00       	call   3b58 <exit>
    printf(stdout, "read failed\n");
     61e:	51                   	push   %ecx
     61f:	51                   	push   %ecx
     620:	68 2d 46 00 00       	push   $0x462d
     625:	50                   	push   %eax
     626:	e8 95 36 00 00       	call   3cc0 <printf>
    exit();
     62b:	e8 28 35 00 00       	call   3b58 <exit>
    printf(stdout, "unlink small failed\n");
     630:	52                   	push   %edx
     631:	52                   	push   %edx
     632:	68 14 43 00 00       	push   $0x4314
     637:	50                   	push   %eax
     638:	e8 83 36 00 00       	call   3cc0 <printf>
    exit();
     63d:	e8 16 35 00 00       	call   3b58 <exit>
    printf(stdout, "error: creat small failed!\n");
     642:	52                   	push   %edx
     643:	52                   	push   %edx
     644:	68 90 42 00 00       	push   $0x4290
     649:	50                   	push   %eax
     64a:	e8 71 36 00 00       	call   3cc0 <printf>
    exit();
     64f:	e8 04 35 00 00       	call   3b58 <exit>
     654:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     65b:	00 
     65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 3d 43 00 00       	push   $0x433d
     66d:	ff 35 cc 62 00 00    	push   0x62cc
     673:	e8 48 36 00 00       	call   3cc0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     678:	58                   	pop    %eax
     679:	5a                   	pop    %edx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 b7 43 00 00       	push   $0x43b7
     684:	e8 0f 35 00 00       	call   3b98 <open>
  if(fd < 0){
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 67 01 00 00    	js     7fb <writetest1+0x19b>
     694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     696:	31 db                	xor    %ebx,%ebx
     698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     69f:	00 
    if(write(fd, buf, 512) != 512){
     6a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6a3:	89 1d 20 8a 00 00    	mov    %ebx,0x8a20
    if(write(fd, buf, 512) != 512){
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 20 8a 00 00       	push   $0x8a20
     6b3:	56                   	push   %esi
     6b4:	e8 bf 34 00 00       	call   3b78 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b9 00 00 00    	jne    780 <writetest1+0x120>
  for(i = 0; i < MAXFILE; i++){
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 a5 34 00 00       	call   3b80 <close>
  fd = open("big", O_RDONLY);
     6db:	5e                   	pop    %esi
     6dc:	58                   	pop    %eax
     6dd:	6a 00                	push   $0x0
     6df:	68 b7 43 00 00       	push   $0x43b7
     6e4:	e8 af 34 00 00       	call   3b98 <open>
  if(fd < 0){
     6e9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     6ec:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     6ee:	85 c0                	test   %eax,%eax
     6f0:	0f 88 ee 00 00 00    	js     7e4 <writetest1+0x184>
  n = 0;
     6f6:	31 f6                	xor    %esi,%esi
     6f8:	eb 21                	jmp    71b <writetest1+0xbb>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 a5 00 00 00    	jne    7b0 <writetest1+0x150>
    if(((int*)buf)[0] != n){
     70b:	a1 20 8a 00 00       	mov    0x8a20,%eax
     710:	39 f0                	cmp    %esi,%eax
     712:	0f 85 81 00 00 00    	jne    799 <writetest1+0x139>
    n++;
     718:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     71b:	83 ec 04             	sub    $0x4,%esp
     71e:	68 00 02 00 00       	push   $0x200
     723:	68 20 8a 00 00       	push   $0x8a20
     728:	53                   	push   %ebx
     729:	e8 42 34 00 00       	call   3b70 <read>
    if(i == 0){
     72e:	83 c4 10             	add    $0x10,%esp
     731:	85 c0                	test   %eax,%eax
     733:	75 cb                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     735:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     73b:	0f 84 88 00 00 00    	je     7c9 <writetest1+0x169>
  close(fd);
     741:	83 ec 0c             	sub    $0xc,%esp
     744:	53                   	push   %ebx
     745:	e8 36 34 00 00       	call   3b80 <close>
  if(unlink("big") < 0){
     74a:	c7 04 24 b7 43 00 00 	movl   $0x43b7,(%esp)
     751:	e8 52 34 00 00       	call   3ba8 <unlink>
     756:	83 c4 10             	add    $0x10,%esp
     759:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink big failed\n");
     75b:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(unlink("big") < 0){
     760:	85 d2                	test   %edx,%edx
     762:	0f 88 aa 00 00 00    	js     812 <writetest1+0x1b2>
  printf(stdout, "big files ok\n");
     768:	83 ec 08             	sub    $0x8,%esp
     76b:	68 de 43 00 00       	push   $0x43de
     770:	50                   	push   %eax
     771:	e8 4a 35 00 00       	call   3cc0 <printf>
}
     776:	83 c4 10             	add    $0x10,%esp
     779:	8d 65 f8             	lea    -0x8(%ebp),%esp
     77c:	5b                   	pop    %ebx
     77d:	5e                   	pop    %esi
     77e:	5d                   	pop    %ebp
     77f:	c3                   	ret
      printf(stdout, "error: write big file failed\n", i);
     780:	83 ec 04             	sub    $0x4,%esp
     783:	53                   	push   %ebx
     784:	68 67 43 00 00       	push   $0x4367
     789:	ff 35 cc 62 00 00    	push   0x62cc
     78f:	e8 2c 35 00 00       	call   3cc0 <printf>
      exit();
     794:	e8 bf 33 00 00       	call   3b58 <exit>
      printf(stdout, "read content of block %d is %d\n",
     799:	50                   	push   %eax
     79a:	56                   	push   %esi
     79b:	68 bc 51 00 00       	push   $0x51bc
     7a0:	ff 35 cc 62 00 00    	push   0x62cc
     7a6:	e8 15 35 00 00       	call   3cc0 <printf>
      exit();
     7ab:	e8 a8 33 00 00       	call   3b58 <exit>
      printf(stdout, "read failed %d\n", i);
     7b0:	83 ec 04             	sub    $0x4,%esp
     7b3:	50                   	push   %eax
     7b4:	68 bb 43 00 00       	push   $0x43bb
     7b9:	ff 35 cc 62 00 00    	push   0x62cc
     7bf:	e8 fc 34 00 00       	call   3cc0 <printf>
      exit();
     7c4:	e8 8f 33 00 00       	call   3b58 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7c9:	51                   	push   %ecx
     7ca:	68 8b 00 00 00       	push   $0x8b
     7cf:	68 9e 43 00 00       	push   $0x439e
     7d4:	ff 35 cc 62 00 00    	push   0x62cc
     7da:	e8 e1 34 00 00       	call   3cc0 <printf>
        exit();
     7df:	e8 74 33 00 00       	call   3b58 <exit>
    printf(stdout, "error: open big failed!\n");
     7e4:	53                   	push   %ebx
     7e5:	53                   	push   %ebx
     7e6:	68 85 43 00 00       	push   $0x4385
     7eb:	ff 35 cc 62 00 00    	push   0x62cc
     7f1:	e8 ca 34 00 00       	call   3cc0 <printf>
    exit();
     7f6:	e8 5d 33 00 00       	call   3b58 <exit>
    printf(stdout, "error: creat big failed!\n");
     7fb:	50                   	push   %eax
     7fc:	50                   	push   %eax
     7fd:	68 4d 43 00 00       	push   $0x434d
     802:	ff 35 cc 62 00 00    	push   0x62cc
     808:	e8 b3 34 00 00       	call   3cc0 <printf>
    exit();
     80d:	e8 46 33 00 00       	call   3b58 <exit>
    printf(stdout, "unlink big failed\n");
     812:	52                   	push   %edx
     813:	52                   	push   %edx
     814:	68 cb 43 00 00       	push   $0x43cb
     819:	50                   	push   %eax
     81a:	e8 a1 34 00 00       	call   3cc0 <printf>
    exit();
     81f:	e8 34 33 00 00       	call   3b58 <exit>
     824:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     82b:	00 
     82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	68 dc 51 00 00       	push   $0x51dc
     841:	ff 35 cc 62 00 00    	push   0x62cc
     847:	e8 74 34 00 00       	call   3cc0 <printf>
  name[0] = 'a';
     84c:	c6 05 10 8a 00 00 61 	movb   $0x61,0x8a10
  name[2] = '\0';
     853:	83 c4 10             	add    $0x10,%esp
     856:	c6 05 12 8a 00 00 00 	movb   $0x0,0x8a12
  for(i = 0; i < 52; i++){
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     863:	88 1d 11 8a 00 00    	mov    %bl,0x8a11
  for(i = 0; i < 52; i++){
     869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 10 8a 00 00       	push   $0x8a10
     876:	e8 1d 33 00 00       	call   3b98 <open>
    close(fd);
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 fd 32 00 00       	call   3b80 <close>
  for(i = 0; i < 52; i++){
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88b:	c6 05 10 8a 00 00 61 	movb   $0x61,0x8a10
  name[2] = '\0';
     892:	bb 30 00 00 00       	mov    $0x30,%ebx
     897:	c6 05 12 8a 00 00 00 	movb   $0x0,0x8a12
  for(i = 0; i < 52; i++){
     89e:	66 90                	xchg   %ax,%ax
    unlink(name);
     8a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8a3:	88 1d 11 8a 00 00    	mov    %bl,0x8a11
  for(i = 0; i < 52; i++){
     8a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8ac:	68 10 8a 00 00       	push   $0x8a10
     8b1:	e8 f2 32 00 00       	call   3ba8 <unlink>
  for(i = 0; i < 52; i++){
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 08 52 00 00       	push   $0x5208
     8c6:	ff 35 cc 62 00 00    	push   0x62cc
     8cc:	e8 ef 33 00 00       	call   3cc0 <printf>
}
     8d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d4:	83 c4 10             	add    $0x10,%esp
     8d7:	c9                   	leave
     8d8:	c3                   	ret
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8e6:	68 ec 43 00 00       	push   $0x43ec
     8eb:	ff 35 cc 62 00 00    	push   0x62cc
     8f1:	e8 ca 33 00 00       	call   3cc0 <printf>
  if(mkdir("dir0") < 0){
     8f6:	c7 04 24 f8 43 00 00 	movl   $0x43f8,(%esp)
     8fd:	e8 be 32 00 00       	call   3bc0 <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 5a                	js     963 <dirtest+0x83>
  if(chdir("dir0") < 0){
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 f8 43 00 00       	push   $0x43f8
     911:	e8 b2 32 00 00       	call   3bc8 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 82 00 00 00    	js     9a3 <dirtest+0xc3>
  if(chdir("..") < 0){
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 9d 49 00 00       	push   $0x499d
     929:	e8 9a 32 00 00       	call   3bc8 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 57                	js     98c <dirtest+0xac>
  if(unlink("dir0") < 0){
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 f8 43 00 00       	push   $0x43f8
     93d:	e8 66 32 00 00       	call   3ba8 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink dir0 failed\n");
     947:	a1 cc 62 00 00       	mov    0x62cc,%eax
  if(unlink("dir0") < 0){
     94c:	85 d2                	test   %edx,%edx
     94e:	78 2a                	js     97a <dirtest+0x9a>
  printf(stdout, "mkdir test ok\n");
     950:	83 ec 08             	sub    $0x8,%esp
     953:	68 35 44 00 00       	push   $0x4435
     958:	50                   	push   %eax
     959:	e8 62 33 00 00       	call   3cc0 <printf>
}
     95e:	83 c4 10             	add    $0x10,%esp
     961:	c9                   	leave
     962:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     963:	50                   	push   %eax
     964:	50                   	push   %eax
     965:	68 28 41 00 00       	push   $0x4128
     96a:	ff 35 cc 62 00 00    	push   0x62cc
     970:	e8 4b 33 00 00       	call   3cc0 <printf>
    exit();
     975:	e8 de 31 00 00       	call   3b58 <exit>
    printf(stdout, "unlink dir0 failed\n");
     97a:	52                   	push   %edx
     97b:	52                   	push   %edx
     97c:	68 21 44 00 00       	push   $0x4421
     981:	50                   	push   %eax
     982:	e8 39 33 00 00       	call   3cc0 <printf>
    exit();
     987:	e8 cc 31 00 00       	call   3b58 <exit>
    printf(stdout, "chdir .. failed\n");
     98c:	51                   	push   %ecx
     98d:	51                   	push   %ecx
     98e:	68 10 44 00 00       	push   $0x4410
     993:	ff 35 cc 62 00 00    	push   0x62cc
     999:	e8 22 33 00 00       	call   3cc0 <printf>
    exit();
     99e:	e8 b5 31 00 00       	call   3b58 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9a3:	50                   	push   %eax
     9a4:	50                   	push   %eax
     9a5:	68 fd 43 00 00       	push   $0x43fd
     9aa:	ff 35 cc 62 00 00    	push   0x62cc
     9b0:	e8 0b 33 00 00       	call   3cc0 <printf>
    exit();
     9b5:	e8 9e 31 00 00       	call   3b58 <exit>
     9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9c6:	68 44 44 00 00       	push   $0x4444
     9cb:	ff 35 cc 62 00 00    	push   0x62cc
     9d1:	e8 ea 32 00 00       	call   3cc0 <printf>
  if(exec("echo", echoargv) < 0){
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 d0 62 00 00       	push   $0x62d0
     9dd:	68 0d 42 00 00       	push   $0x420d
     9e2:	e8 a9 31 00 00       	call   3b90 <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
}
     9ee:	c9                   	leave
     9ef:	c3                   	ret
    printf(stdout, "exec echo failed\n");
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 4f 44 00 00       	push   $0x444f
     9f7:	ff 35 cc 62 00 00    	push   0x62cc
     9fd:	e8 be 32 00 00       	call   3cc0 <printf>
    exit();
     a02:	e8 51 31 00 00       	call   3b58 <exit>
     a07:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     a0e:	00 
     a0f:	90                   	nop

00000a10 <pipe1>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
  if(pipe(fds) != 0){
     a15:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a18:	53                   	push   %ebx
     a19:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a1c:	50                   	push   %eax
     a1d:	e8 46 31 00 00       	call   3b68 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 3c 01 00 00    	jne    b69 <pipe1+0x159>
  pid = fork();
     a2d:	e8 1e 31 00 00       	call   3b50 <fork>
  if(pid == 0){
     a32:	85 c0                	test   %eax,%eax
     a34:	0f 84 85 00 00 00    	je     abf <pipe1+0xaf>
  } else if(pid > 0){
     a3a:	0f 8e 3c 01 00 00    	jle    b7c <pipe1+0x16c>
    close(fds[1]);
     a40:	83 ec 0c             	sub    $0xc,%esp
     a43:	ff 75 e4             	push   -0x1c(%ebp)
  seq = 0;
     a46:	31 db                	xor    %ebx,%ebx
    cc = 1;
     a48:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
     a4d:	e8 2e 31 00 00       	call   3b80 <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a52:	83 c4 10             	add    $0x10,%esp
    total = 0;
     a55:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a5c:	83 ec 04             	sub    $0x4,%esp
     a5f:	56                   	push   %esi
     a60:	68 20 8a 00 00       	push   $0x8a20
     a65:	ff 75 e0             	push   -0x20(%ebp)
     a68:	e8 03 31 00 00       	call   3b70 <read>
     a6d:	83 c4 10             	add    $0x10,%esp
     a70:	89 c7                	mov    %eax,%edi
     a72:	85 c0                	test   %eax,%eax
     a74:	0f 8e ab 00 00 00    	jle    b25 <pipe1+0x115>
     a7a:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
      for(i = 0; i < n; i++){
     a7d:	31 c0                	xor    %eax,%eax
     a7f:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a80:	89 da                	mov    %ebx,%edx
     a82:	83 c3 01             	add    $0x1,%ebx
     a85:	38 90 20 8a 00 00    	cmp    %dl,0x8a20(%eax)
     a8b:	75 18                	jne    aa5 <pipe1+0x95>
      for(i = 0; i < n; i++){
     a8d:	83 c0 01             	add    $0x1,%eax
     a90:	39 cb                	cmp    %ecx,%ebx
     a92:	75 ec                	jne    a80 <pipe1+0x70>
      cc = cc * 2;
     a94:	01 f6                	add    %esi,%esi
      if(cc > sizeof(buf))
     a96:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
     a9b:	01 7d d4             	add    %edi,-0x2c(%ebp)
      if(cc > sizeof(buf))
     a9e:	39 c6                	cmp    %eax,%esi
     aa0:	0f 4f f0             	cmovg  %eax,%esi
     aa3:	eb b7                	jmp    a5c <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     aa5:	83 ec 08             	sub    $0x8,%esp
     aa8:	68 7e 44 00 00       	push   $0x447e
     aad:	6a 01                	push   $0x1
     aaf:	e8 0c 32 00 00       	call   3cc0 <printf>
     ab4:	83 c4 10             	add    $0x10,%esp
}
     ab7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aba:	5b                   	pop    %ebx
     abb:	5e                   	pop    %esi
     abc:	5f                   	pop    %edi
     abd:	5d                   	pop    %ebp
     abe:	c3                   	ret
    close(fds[0]);
     abf:	83 ec 0c             	sub    $0xc,%esp
     ac2:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
     ac5:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     ac7:	e8 b4 30 00 00       	call   3b80 <close>
     acc:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     acf:	31 c0                	xor    %eax,%eax
     ad1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ad8:	00 
     ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        buf[i] = seq++;
     ae0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     ae3:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     ae6:	88 90 1f 8a 00 00    	mov    %dl,0x8a1f(%eax)
      for(i = 0; i < 1033; i++)
     aec:	3d 09 04 00 00       	cmp    $0x409,%eax
     af1:	75 ed                	jne    ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     af3:	83 ec 04             	sub    $0x4,%esp
     af6:	81 c3 09 04 00 00    	add    $0x409,%ebx
     afc:	68 09 04 00 00       	push   $0x409
     b01:	68 20 8a 00 00       	push   $0x8a20
     b06:	ff 75 e4             	push   -0x1c(%ebp)
     b09:	e8 6a 30 00 00       	call   3b78 <write>
     b0e:	83 c4 10             	add    $0x10,%esp
     b11:	3d 09 04 00 00       	cmp    $0x409,%eax
     b16:	75 77                	jne    b8f <pipe1+0x17f>
    for(n = 0; n < 5; n++){
     b18:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b1e:	75 af                	jne    acf <pipe1+0xbf>
    exit();
     b20:	e8 33 30 00 00       	call   3b58 <exit>
    if(total != 5 * 1033){
     b25:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b2c:	75 26                	jne    b54 <pipe1+0x144>
    close(fds[0]);
     b2e:	83 ec 0c             	sub    $0xc,%esp
     b31:	ff 75 e0             	push   -0x20(%ebp)
     b34:	e8 47 30 00 00       	call   3b80 <close>
    wait();
     b39:	e8 22 30 00 00       	call   3b60 <wait>
  printf(1, "pipe1 ok\n");
     b3e:	5a                   	pop    %edx
     b3f:	59                   	pop    %ecx
     b40:	68 a3 44 00 00       	push   $0x44a3
     b45:	6a 01                	push   $0x1
     b47:	e8 74 31 00 00       	call   3cc0 <printf>
     b4c:	83 c4 10             	add    $0x10,%esp
     b4f:	e9 63 ff ff ff       	jmp    ab7 <pipe1+0xa7>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b54:	53                   	push   %ebx
     b55:	ff 75 d4             	push   -0x2c(%ebp)
     b58:	68 8c 44 00 00       	push   $0x448c
     b5d:	6a 01                	push   $0x1
     b5f:	e8 5c 31 00 00       	call   3cc0 <printf>
      exit();
     b64:	e8 ef 2f 00 00       	call   3b58 <exit>
    printf(1, "pipe() failed\n");
     b69:	57                   	push   %edi
     b6a:	57                   	push   %edi
     b6b:	68 61 44 00 00       	push   $0x4461
     b70:	6a 01                	push   $0x1
     b72:	e8 49 31 00 00       	call   3cc0 <printf>
    exit();
     b77:	e8 dc 2f 00 00       	call   3b58 <exit>
    printf(1, "fork() failed\n");
     b7c:	50                   	push   %eax
     b7d:	50                   	push   %eax
     b7e:	68 ad 44 00 00       	push   $0x44ad
     b83:	6a 01                	push   $0x1
     b85:	e8 36 31 00 00       	call   3cc0 <printf>
    exit();
     b8a:	e8 c9 2f 00 00       	call   3b58 <exit>
        printf(1, "pipe1 oops 1\n");
     b8f:	56                   	push   %esi
     b90:	56                   	push   %esi
     b91:	68 70 44 00 00       	push   $0x4470
     b96:	6a 01                	push   $0x1
     b98:	e8 23 31 00 00       	call   3cc0 <printf>
        exit();
     b9d:	e8 b6 2f 00 00       	call   3b58 <exit>
     ba2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ba9:	00 
     baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000bb0 <preempt>:
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bb9:	68 bc 44 00 00       	push   $0x44bc
     bbe:	6a 01                	push   $0x1
     bc0:	e8 fb 30 00 00       	call   3cc0 <printf>
  pid1 = fork();
     bc5:	e8 86 2f 00 00       	call   3b50 <fork>
  if(pid1 == 0)
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 07                	jne    bd8 <preempt+0x28>
    for(;;)
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     bd8:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
     bda:	e8 71 2f 00 00       	call   3b50 <fork>
     bdf:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     be1:	85 c0                	test   %eax,%eax
     be3:	75 0b                	jne    bf0 <preempt+0x40>
    for(;;)
     be5:	eb fe                	jmp    be5 <preempt+0x35>
     be7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     bee:	00 
     bef:	90                   	nop
  pipe(pfds);
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 6c 2f 00 00       	call   3b68 <pipe>
  pid3 = fork();
     bfc:	e8 4f 2f 00 00       	call   3b50 <fork>
  if(pid3 == 0){
     c01:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     c04:	89 c7                	mov    %eax,%edi
  if(pid3 == 0){
     c06:	85 c0                	test   %eax,%eax
     c08:	75 3e                	jne    c48 <preempt+0x98>
    close(pfds[0]);
     c0a:	83 ec 0c             	sub    $0xc,%esp
     c0d:	ff 75 e0             	push   -0x20(%ebp)
     c10:	e8 6b 2f 00 00       	call   3b80 <close>
    if(write(pfds[1], "x", 1) != 1)
     c15:	83 c4 0c             	add    $0xc,%esp
     c18:	6a 01                	push   $0x1
     c1a:	68 81 4a 00 00       	push   $0x4a81
     c1f:	ff 75 e4             	push   -0x1c(%ebp)
     c22:	e8 51 2f 00 00       	call   3b78 <write>
     c27:	83 c4 10             	add    $0x10,%esp
     c2a:	83 f8 01             	cmp    $0x1,%eax
     c2d:	0f 85 b8 00 00 00    	jne    ceb <preempt+0x13b>
    close(pfds[1]);
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	push   -0x1c(%ebp)
     c39:	e8 42 2f 00 00       	call   3b80 <close>
     c3e:	83 c4 10             	add    $0x10,%esp
    for(;;)
     c41:	eb fe                	jmp    c41 <preempt+0x91>
     c43:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  close(pfds[1]);
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 75 e4             	push   -0x1c(%ebp)
     c4e:	e8 2d 2f 00 00       	call   3b80 <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c53:	83 c4 0c             	add    $0xc,%esp
     c56:	68 00 20 00 00       	push   $0x2000
     c5b:	68 20 8a 00 00       	push   $0x8a20
     c60:	ff 75 e0             	push   -0x20(%ebp)
     c63:	e8 08 2f 00 00       	call   3b70 <read>
     c68:	83 c4 10             	add    $0x10,%esp
     c6b:	83 f8 01             	cmp    $0x1,%eax
     c6e:	75 67                	jne    cd7 <preempt+0x127>
  close(pfds[0]);
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 75 e0             	push   -0x20(%ebp)
     c76:	e8 05 2f 00 00       	call   3b80 <close>
  printf(1, "kill... ");
     c7b:	58                   	pop    %eax
     c7c:	5a                   	pop    %edx
     c7d:	68 ed 44 00 00       	push   $0x44ed
     c82:	6a 01                	push   $0x1
     c84:	e8 37 30 00 00       	call   3cc0 <printf>
  kill(pid1);
     c89:	89 1c 24             	mov    %ebx,(%esp)
     c8c:	e8 f7 2e 00 00       	call   3b88 <kill>
  kill(pid2);
     c91:	89 34 24             	mov    %esi,(%esp)
     c94:	e8 ef 2e 00 00       	call   3b88 <kill>
  kill(pid3);
     c99:	89 3c 24             	mov    %edi,(%esp)
     c9c:	e8 e7 2e 00 00       	call   3b88 <kill>
  printf(1, "wait... ");
     ca1:	59                   	pop    %ecx
     ca2:	5b                   	pop    %ebx
     ca3:	68 f6 44 00 00       	push   $0x44f6
     ca8:	6a 01                	push   $0x1
     caa:	e8 11 30 00 00       	call   3cc0 <printf>
  wait();
     caf:	e8 ac 2e 00 00       	call   3b60 <wait>
  wait();
     cb4:	e8 a7 2e 00 00       	call   3b60 <wait>
  wait();
     cb9:	e8 a2 2e 00 00       	call   3b60 <wait>
  printf(1, "preempt ok\n");
     cbe:	5e                   	pop    %esi
     cbf:	5f                   	pop    %edi
     cc0:	68 ff 44 00 00       	push   $0x44ff
     cc5:	6a 01                	push   $0x1
     cc7:	e8 f4 2f 00 00       	call   3cc0 <printf>
     ccc:	83 c4 10             	add    $0x10,%esp
}
     ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd2:	5b                   	pop    %ebx
     cd3:	5e                   	pop    %esi
     cd4:	5f                   	pop    %edi
     cd5:	5d                   	pop    %ebp
     cd6:	c3                   	ret
    printf(1, "preempt read error");
     cd7:	83 ec 08             	sub    $0x8,%esp
     cda:	68 da 44 00 00       	push   $0x44da
     cdf:	6a 01                	push   $0x1
     ce1:	e8 da 2f 00 00       	call   3cc0 <printf>
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	eb e4                	jmp    ccf <preempt+0x11f>
      printf(1, "preempt write error");
     ceb:	83 ec 08             	sub    $0x8,%esp
     cee:	68 c6 44 00 00       	push   $0x44c6
     cf3:	6a 01                	push   $0x1
     cf5:	e8 c6 2f 00 00       	call   3cc0 <printf>
     cfa:	83 c4 10             	add    $0x10,%esp
     cfd:	e9 31 ff ff ff       	jmp    c33 <preempt+0x83>
     d02:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d09:	00 
     d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d10 <exitwait>:
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 14                	jmp    d30 <exitwait+0x20>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d20:	74 68                	je     d8a <exitwait+0x7a>
      if(wait() != pid){
     d22:	e8 39 2e 00 00       	call   3b60 <wait>
     d27:	39 d8                	cmp    %ebx,%eax
     d29:	75 2d                	jne    d58 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d2b:	83 ee 01             	sub    $0x1,%esi
     d2e:	74 41                	je     d71 <exitwait+0x61>
    pid = fork();
     d30:	e8 1b 2e 00 00       	call   3b50 <fork>
     d35:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d37:	85 c0                	test   %eax,%eax
     d39:	79 e5                	jns    d20 <exitwait+0x10>
      printf(1, "fork failed\n");
     d3b:	83 ec 08             	sub    $0x8,%esp
     d3e:	68 69 50 00 00       	push   $0x5069
     d43:	6a 01                	push   $0x1
     d45:	e8 76 2f 00 00       	call   3cc0 <printf>
      return;
     d4a:	83 c4 10             	add    $0x10,%esp
}
     d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d50:	5b                   	pop    %ebx
     d51:	5e                   	pop    %esi
     d52:	5d                   	pop    %ebp
     d53:	c3                   	ret
     d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 0b 45 00 00       	push   $0x450b
     d60:	6a 01                	push   $0x1
     d62:	e8 59 2f 00 00       	call   3cc0 <printf>
        return;
     d67:	83 c4 10             	add    $0x10,%esp
}
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret
  printf(1, "exitwait ok\n");
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 1b 45 00 00       	push   $0x451b
     d79:	6a 01                	push   $0x1
     d7b:	e8 40 2f 00 00       	call   3cc0 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
}
     d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d86:	5b                   	pop    %ebx
     d87:	5e                   	pop    %esi
     d88:	5d                   	pop    %ebp
     d89:	c3                   	ret
      exit();
     d8a:	e8 c9 2d 00 00       	call   3b58 <exit>
     d8f:	90                   	nop

00000d90 <mem>:
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	31 f6                	xor    %esi,%esi
     d96:	53                   	push   %ebx
  printf(1, "mem test\n");
     d97:	83 ec 08             	sub    $0x8,%esp
     d9a:	68 28 45 00 00       	push   $0x4528
     d9f:	6a 01                	push   $0x1
     da1:	e8 1a 2f 00 00       	call   3cc0 <printf>
  ppid = getpid();
     da6:	e8 2d 2e 00 00       	call   3bd8 <getpid>
     dab:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
     dad:	e8 9e 2d 00 00       	call   3b50 <fork>
     db2:	83 c4 10             	add    $0x10,%esp
     db5:	85 c0                	test   %eax,%eax
     db7:	74 0b                	je     dc4 <mem+0x34>
     db9:	e9 8a 00 00 00       	jmp    e48 <mem+0xb8>
     dbe:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
     dc0:	89 30                	mov    %esi,(%eax)
      m1 = m2;
     dc2:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	68 11 27 00 00       	push   $0x2711
     dcc:	e8 6f 32 00 00       	call   4040 <malloc>
     dd1:	83 c4 10             	add    $0x10,%esp
     dd4:	85 c0                	test   %eax,%eax
     dd6:	75 e8                	jne    dc0 <mem+0x30>
    while(m1){
     dd8:	85 f6                	test   %esi,%esi
     dda:	74 18                	je     df4 <mem+0x64>
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     de0:	89 f0                	mov    %esi,%eax
      free(m1);
     de2:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     de5:	8b 36                	mov    (%esi),%esi
      free(m1);
     de7:	50                   	push   %eax
     de8:	e8 b3 31 00 00       	call   3fa0 <free>
    while(m1){
     ded:	83 c4 10             	add    $0x10,%esp
     df0:	85 f6                	test   %esi,%esi
     df2:	75 ec                	jne    de0 <mem+0x50>
    m1 = malloc(1024*20);
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 00 50 00 00       	push   $0x5000
     dfc:	e8 3f 32 00 00       	call   4040 <malloc>
    if(m1 == 0){
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	74 20                	je     e28 <mem+0x98>
    free(m1);
     e08:	83 ec 0c             	sub    $0xc,%esp
     e0b:	50                   	push   %eax
     e0c:	e8 8f 31 00 00       	call   3fa0 <free>
    printf(1, "mem ok\n");
     e11:	58                   	pop    %eax
     e12:	5a                   	pop    %edx
     e13:	68 4c 45 00 00       	push   $0x454c
     e18:	6a 01                	push   $0x1
     e1a:	e8 a1 2e 00 00       	call   3cc0 <printf>
    exit();
     e1f:	e8 34 2d 00 00       	call   3b58 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	68 32 45 00 00       	push   $0x4532
     e30:	6a 01                	push   $0x1
     e32:	e8 89 2e 00 00       	call   3cc0 <printf>
      kill(ppid);
     e37:	89 1c 24             	mov    %ebx,(%esp)
     e3a:	e8 49 2d 00 00       	call   3b88 <kill>
      exit();
     e3f:	e8 14 2d 00 00       	call   3b58 <exit>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e48:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e4b:	5b                   	pop    %ebx
     e4c:	5e                   	pop    %esi
     e4d:	5d                   	pop    %ebp
    wait();
     e4e:	e9 0d 2d 00 00       	jmp    3b60 <wait>
     e53:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e5a:	00 
     e5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000e60 <sharedfd>:
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e69:	68 54 45 00 00       	push   $0x4554
     e6e:	6a 01                	push   $0x1
     e70:	e8 4b 2e 00 00       	call   3cc0 <printf>
  unlink("sharedfd");
     e75:	c7 04 24 63 45 00 00 	movl   $0x4563,(%esp)
     e7c:	e8 27 2d 00 00       	call   3ba8 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e81:	5b                   	pop    %ebx
     e82:	5e                   	pop    %esi
     e83:	68 02 02 00 00       	push   $0x202
     e88:	68 63 45 00 00       	push   $0x4563
     e8d:	e8 06 2d 00 00       	call   3b98 <open>
  if(fd < 0){
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	0f 88 2a 01 00 00    	js     fc7 <sharedfd+0x167>
     e9d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e9f:	8d 75 dc             	lea    -0x24(%ebp),%esi
     ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     ea7:	e8 a4 2c 00 00       	call   3b50 <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eac:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eb2:	19 c0                	sbb    %eax,%eax
     eb4:	83 ec 04             	sub    $0x4,%esp
     eb7:	83 e0 f3             	and    $0xfffffff3,%eax
     eba:	6a 0a                	push   $0xa
     ebc:	83 c0 70             	add    $0x70,%eax
     ebf:	50                   	push   %eax
     ec0:	56                   	push   %esi
     ec1:	e8 ca 28 00 00       	call   3790 <memset>
     ec6:	83 c4 10             	add    $0x10,%esp
     ec9:	eb 0a                	jmp    ed5 <sharedfd+0x75>
     ecb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
     ed0:	83 eb 01             	sub    $0x1,%ebx
     ed3:	74 26                	je     efb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ed5:	83 ec 04             	sub    $0x4,%esp
     ed8:	6a 0a                	push   $0xa
     eda:	56                   	push   %esi
     edb:	57                   	push   %edi
     edc:	e8 97 2c 00 00       	call   3b78 <write>
     ee1:	83 c4 10             	add    $0x10,%esp
     ee4:	83 f8 0a             	cmp    $0xa,%eax
     ee7:	74 e7                	je     ed0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ee9:	83 ec 08             	sub    $0x8,%esp
     eec:	68 5c 52 00 00       	push   $0x525c
     ef1:	6a 01                	push   $0x1
     ef3:	e8 c8 2d 00 00       	call   3cc0 <printf>
      break;
     ef8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     efe:	85 c9                	test   %ecx,%ecx
     f00:	0f 84 f5 00 00 00    	je     ffb <sharedfd+0x19b>
    wait();
     f06:	e8 55 2c 00 00       	call   3b60 <wait>
  close(fd);
     f0b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     f0e:	31 db                	xor    %ebx,%ebx
  close(fd);
     f10:	57                   	push   %edi
     f11:	8d 7d e6             	lea    -0x1a(%ebp),%edi
     f14:	e8 67 2c 00 00       	call   3b80 <close>
  fd = open("sharedfd", 0);
     f19:	58                   	pop    %eax
     f1a:	5a                   	pop    %edx
     f1b:	6a 00                	push   $0x0
     f1d:	68 63 45 00 00       	push   $0x4563
     f22:	e8 71 2c 00 00       	call   3b98 <open>
  if(fd < 0){
     f27:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
     f2a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
     f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f2f:	85 c0                	test   %eax,%eax
     f31:	0f 88 aa 00 00 00    	js     fe1 <sharedfd+0x181>
     f37:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f3e:	00 
     f3f:	90                   	nop
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f40:	83 ec 04             	sub    $0x4,%esp
     f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f46:	6a 0a                	push   $0xa
     f48:	56                   	push   %esi
     f49:	ff 75 d0             	push   -0x30(%ebp)
     f4c:	e8 1f 2c 00 00       	call   3b70 <read>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	7e 28                	jle    f80 <sharedfd+0x120>
     f58:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f5b:	89 f0                	mov    %esi,%eax
     f5d:	eb 13                	jmp    f72 <sharedfd+0x112>
     f5f:	90                   	nop
        np++;
     f60:	80 f9 70             	cmp    $0x70,%cl
     f63:	0f 94 c1             	sete   %cl
     f66:	0f b6 c9             	movzbl %cl,%ecx
     f69:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     f6b:	83 c0 01             	add    $0x1,%eax
     f6e:	39 f8                	cmp    %edi,%eax
     f70:	74 ce                	je     f40 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f72:	0f b6 08             	movzbl (%eax),%ecx
     f75:	80 f9 63             	cmp    $0x63,%cl
     f78:	75 e6                	jne    f60 <sharedfd+0x100>
        nc++;
     f7a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
     f7d:	eb ec                	jmp    f6b <sharedfd+0x10b>
     f7f:	90                   	nop
  close(fd);
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	ff 75 d0             	push   -0x30(%ebp)
     f86:	e8 f5 2b 00 00       	call   3b80 <close>
  unlink("sharedfd");
     f8b:	c7 04 24 63 45 00 00 	movl   $0x4563,(%esp)
     f92:	e8 11 2c 00 00       	call   3ba8 <unlink>
  if(nc == 10000 && np == 10000){
     f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fa3:	75 5b                	jne    1000 <sharedfd+0x1a0>
     fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fab:	75 53                	jne    1000 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
     fad:	83 ec 08             	sub    $0x8,%esp
     fb0:	68 6c 45 00 00       	push   $0x456c
     fb5:	6a 01                	push   $0x1
     fb7:	e8 04 2d 00 00       	call   3cc0 <printf>
     fbc:	83 c4 10             	add    $0x10,%esp
}
     fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc2:	5b                   	pop    %ebx
     fc3:	5e                   	pop    %esi
     fc4:	5f                   	pop    %edi
     fc5:	5d                   	pop    %ebp
     fc6:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for writing");
     fc7:	83 ec 08             	sub    $0x8,%esp
     fca:	68 30 52 00 00       	push   $0x5230
     fcf:	6a 01                	push   $0x1
     fd1:	e8 ea 2c 00 00       	call   3cc0 <printf>
    return;
     fd6:	83 c4 10             	add    $0x10,%esp
}
     fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdc:	5b                   	pop    %ebx
     fdd:	5e                   	pop    %esi
     fde:	5f                   	pop    %edi
     fdf:	5d                   	pop    %ebp
     fe0:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fe1:	83 ec 08             	sub    $0x8,%esp
     fe4:	68 7c 52 00 00       	push   $0x527c
     fe9:	6a 01                	push   $0x1
     feb:	e8 d0 2c 00 00       	call   3cc0 <printf>
    return;
     ff0:	83 c4 10             	add    $0x10,%esp
}
     ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff6:	5b                   	pop    %ebx
     ff7:	5e                   	pop    %esi
     ff8:	5f                   	pop    %edi
     ff9:	5d                   	pop    %ebp
     ffa:	c3                   	ret
    exit();
     ffb:	e8 58 2b 00 00       	call   3b58 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1000:	53                   	push   %ebx
    1001:	52                   	push   %edx
    1002:	68 79 45 00 00       	push   $0x4579
    1007:	6a 01                	push   $0x1
    1009:	e8 b2 2c 00 00       	call   3cc0 <printf>
    exit();
    100e:	e8 45 2b 00 00       	call   3b58 <exit>
    1013:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    101a:	00 
    101b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00001020 <fourfiles>:
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	57                   	push   %edi
    1024:	56                   	push   %esi
    1025:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1026:	31 db                	xor    %ebx,%ebx
{
    1028:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    102b:	c7 45 d8 8e 45 00 00 	movl   $0x458e,-0x28(%ebp)
    1032:	c7 45 dc d7 46 00 00 	movl   $0x46d7,-0x24(%ebp)
    1039:	c7 45 e0 db 46 00 00 	movl   $0x46db,-0x20(%ebp)
    1040:	c7 45 e4 91 45 00 00 	movl   $0x4591,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1047:	68 94 45 00 00       	push   $0x4594
    104c:	6a 01                	push   $0x1
    104e:	e8 6d 2c 00 00       	call   3cc0 <printf>
    1053:	83 c4 10             	add    $0x10,%esp
    fname = names[pi];
    1056:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    unlink(fname);
    105a:	83 ec 0c             	sub    $0xc,%esp
    105d:	56                   	push   %esi
    105e:	e8 45 2b 00 00       	call   3ba8 <unlink>
    pid = fork();
    1063:	e8 e8 2a 00 00       	call   3b50 <fork>
    if(pid < 0){
    1068:	83 c4 10             	add    $0x10,%esp
    106b:	85 c0                	test   %eax,%eax
    106d:	0f 88 5d 01 00 00    	js     11d0 <fourfiles+0x1b0>
    if(pid == 0){
    1073:	0f 84 e7 00 00 00    	je     1160 <fourfiles+0x140>
  for(pi = 0; pi < 4; pi++){
    1079:	83 c3 01             	add    $0x1,%ebx
    107c:	83 fb 04             	cmp    $0x4,%ebx
    107f:	75 d5                	jne    1056 <fourfiles+0x36>
    wait();
    1081:	e8 da 2a 00 00       	call   3b60 <wait>
    1086:	e8 d5 2a 00 00       	call   3b60 <wait>
    108b:	e8 d0 2a 00 00       	call   3b60 <wait>
    1090:	e8 cb 2a 00 00       	call   3b60 <wait>
  for(i = 0; i < 2; i++){
    1095:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    fname = names[i];
    109c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    fd = open(fname, 0);
    109f:	83 ec 08             	sub    $0x8,%esp
    fname = names[i];
    10a2:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
        if(buf[j] != '0'+i){
    10a6:	8d 73 30             	lea    0x30(%ebx),%esi
    total = 0;
    10a9:	31 db                	xor    %ebx,%ebx
    fname = names[i];
    10ab:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    10ae:	6a 00                	push   $0x0
    10b0:	50                   	push   %eax
    10b1:	e8 e2 2a 00 00       	call   3b98 <open>
        if(buf[j] != '0'+i){
    10b6:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10b9:	89 c7                	mov    %eax,%edi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	68 00 20 00 00       	push   $0x2000
    10c8:	68 20 8a 00 00       	push   $0x8a20
    10cd:	57                   	push   %edi
    10ce:	e8 9d 2a 00 00       	call   3b70 <read>
    10d3:	83 c4 10             	add    $0x10,%esp
    10d6:	85 c0                	test   %eax,%eax
    10d8:	7e 1c                	jle    10f6 <fourfiles+0xd6>
      for(j = 0; j < n; j++){
    10da:	31 d2                	xor    %edx,%edx
    10dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if(buf[j] != '0'+i){
    10e0:	0f be 8a 20 8a 00 00 	movsbl 0x8a20(%edx),%ecx
    10e7:	39 f1                	cmp    %esi,%ecx
    10e9:	75 61                	jne    114c <fourfiles+0x12c>
      for(j = 0; j < n; j++){
    10eb:	83 c2 01             	add    $0x1,%edx
    10ee:	39 d0                	cmp    %edx,%eax
    10f0:	75 ee                	jne    10e0 <fourfiles+0xc0>
      total += n;
    10f2:	01 c3                	add    %eax,%ebx
    10f4:	eb ca                	jmp    10c0 <fourfiles+0xa0>
    close(fd);
    10f6:	83 ec 0c             	sub    $0xc,%esp
    10f9:	57                   	push   %edi
    10fa:	e8 81 2a 00 00       	call   3b80 <close>
    if(total != 12*500){
    10ff:	83 c4 10             	add    $0x10,%esp
    1102:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1108:	0f 85 d6 00 00 00    	jne    11e4 <fourfiles+0x1c4>
    unlink(fname);
    110e:	83 ec 0c             	sub    $0xc,%esp
    1111:	ff 75 d0             	push   -0x30(%ebp)
    1114:	e8 8f 2a 00 00       	call   3ba8 <unlink>
  for(i = 0; i < 2; i++){
    1119:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    111c:	83 c4 10             	add    $0x10,%esp
    111f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    1126:	83 c0 01             	add    $0x1,%eax
    1129:	83 f8 02             	cmp    $0x2,%eax
    112c:	0f 85 6a ff ff ff    	jne    109c <fourfiles+0x7c>
  printf(1, "fourfiles ok\n");
    1132:	83 ec 08             	sub    $0x8,%esp
    1135:	68 d2 45 00 00       	push   $0x45d2
    113a:	6a 01                	push   $0x1
    113c:	e8 7f 2b 00 00       	call   3cc0 <printf>
}
    1141:	83 c4 10             	add    $0x10,%esp
    1144:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1147:	5b                   	pop    %ebx
    1148:	5e                   	pop    %esi
    1149:	5f                   	pop    %edi
    114a:	5d                   	pop    %ebp
    114b:	c3                   	ret
          printf(1, "wrong char\n");
    114c:	83 ec 08             	sub    $0x8,%esp
    114f:	68 b5 45 00 00       	push   $0x45b5
    1154:	6a 01                	push   $0x1
    1156:	e8 65 2b 00 00       	call   3cc0 <printf>
          exit();
    115b:	e8 f8 29 00 00       	call   3b58 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1160:	83 ec 08             	sub    $0x8,%esp
    1163:	68 02 02 00 00       	push   $0x202
    1168:	56                   	push   %esi
    1169:	e8 2a 2a 00 00       	call   3b98 <open>
      if(fd < 0){
    116e:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    1171:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1173:	85 c0                	test   %eax,%eax
    1175:	78 45                	js     11bc <fourfiles+0x19c>
      memset(buf, '0'+pi, 512);
    1177:	83 ec 04             	sub    $0x4,%esp
    117a:	83 c3 30             	add    $0x30,%ebx
    117d:	68 00 02 00 00       	push   $0x200
    1182:	53                   	push   %ebx
    1183:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1188:	68 20 8a 00 00       	push   $0x8a20
    118d:	e8 fe 25 00 00       	call   3790 <memset>
    1192:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    1195:	83 ec 04             	sub    $0x4,%esp
    1198:	68 f4 01 00 00       	push   $0x1f4
    119d:	68 20 8a 00 00       	push   $0x8a20
    11a2:	56                   	push   %esi
    11a3:	e8 d0 29 00 00       	call   3b78 <write>
    11a8:	83 c4 10             	add    $0x10,%esp
    11ab:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11b0:	75 45                	jne    11f7 <fourfiles+0x1d7>
      for(i = 0; i < 12; i++){
    11b2:	83 eb 01             	sub    $0x1,%ebx
    11b5:	75 de                	jne    1195 <fourfiles+0x175>
      exit();
    11b7:	e8 9c 29 00 00       	call   3b58 <exit>
        printf(1, "create failed\n");
    11bc:	51                   	push   %ecx
    11bd:	51                   	push   %ecx
    11be:	68 2f 48 00 00       	push   $0x482f
    11c3:	6a 01                	push   $0x1
    11c5:	e8 f6 2a 00 00       	call   3cc0 <printf>
        exit();
    11ca:	e8 89 29 00 00       	call   3b58 <exit>
    11cf:	90                   	nop
      printf(1, "fork failed\n");
    11d0:	83 ec 08             	sub    $0x8,%esp
    11d3:	68 69 50 00 00       	push   $0x5069
    11d8:	6a 01                	push   $0x1
    11da:	e8 e1 2a 00 00       	call   3cc0 <printf>
      exit();
    11df:	e8 74 29 00 00       	call   3b58 <exit>
      printf(1, "wrong length %d\n", total);
    11e4:	50                   	push   %eax
    11e5:	53                   	push   %ebx
    11e6:	68 c1 45 00 00       	push   $0x45c1
    11eb:	6a 01                	push   $0x1
    11ed:	e8 ce 2a 00 00       	call   3cc0 <printf>
      exit();
    11f2:	e8 61 29 00 00       	call   3b58 <exit>
          printf(1, "write failed %d\n", n);
    11f7:	52                   	push   %edx
    11f8:	50                   	push   %eax
    11f9:	68 a4 45 00 00       	push   $0x45a4
    11fe:	6a 01                	push   $0x1
    1200:	e8 bb 2a 00 00       	call   3cc0 <printf>
          exit();
    1205:	e8 4e 29 00 00       	call   3b58 <exit>
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001210 <createdelete>:
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	57                   	push   %edi
    1214:	56                   	push   %esi
  for(pi = 0; pi < 4; pi++){
    1215:	31 f6                	xor    %esi,%esi
{
    1217:	53                   	push   %ebx
    1218:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    121b:	68 e0 45 00 00       	push   $0x45e0
    1220:	6a 01                	push   $0x1
    1222:	e8 99 2a 00 00       	call   3cc0 <printf>
    1227:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    122a:	e8 21 29 00 00       	call   3b50 <fork>
    122f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1231:	85 c0                	test   %eax,%eax
    1233:	0f 88 aa 01 00 00    	js     13e3 <createdelete+0x1d3>
    if(pid == 0){
    1239:	0f 84 11 01 00 00    	je     1350 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    123f:	83 c6 01             	add    $0x1,%esi
    1242:	83 fe 04             	cmp    $0x4,%esi
    1245:	75 e3                	jne    122a <createdelete+0x1a>
    wait();
    1247:	e8 14 29 00 00       	call   3b60 <wait>
  for(i = 0; i < N; i++){
    124c:	31 ff                	xor    %edi,%edi
    124e:	8d 75 c8             	lea    -0x38(%ebp),%esi
    wait();
    1251:	e8 0a 29 00 00       	call   3b60 <wait>
    1256:	e8 05 29 00 00       	call   3b60 <wait>
    125b:	e8 00 29 00 00       	call   3b60 <wait>
  name[0] = name[1] = name[2] = 0;
    1260:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    1264:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    126b:	00 
    126c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if((i == 0 || i >= N/2) && fd < 0){
    1270:	85 ff                	test   %edi,%edi
      name[1] = '0' + i;
    1272:	bb 70 00 00 00       	mov    $0x70,%ebx
      if((i == 0 || i >= N/2) && fd < 0){
    1277:	0f 94 c2             	sete   %dl
    127a:	83 ff 09             	cmp    $0x9,%edi
    127d:	0f 9f c0             	setg   %al
    1280:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
    1282:	8d 47 30             	lea    0x30(%edi),%eax
      if((i == 0 || i >= N/2) && fd < 0){
    1285:	88 55 c7             	mov    %dl,-0x39(%ebp)
      name[1] = '0' + i;
    1288:	88 45 c6             	mov    %al,-0x3a(%ebp)
    128b:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    128f:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1292:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1295:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1298:	6a 00                	push   $0x0
    129a:	56                   	push   %esi
    129b:	e8 f8 28 00 00       	call   3b98 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12a0:	83 c4 10             	add    $0x10,%esp
    12a3:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    12a7:	0f 84 83 00 00 00    	je     1330 <createdelete+0x120>
    12ad:	85 c0                	test   %eax,%eax
    12af:	0f 88 19 01 00 00    	js     13ce <createdelete+0x1be>
        close(fd);
    12b5:	83 ec 0c             	sub    $0xc,%esp
    12b8:	50                   	push   %eax
    12b9:	e8 c2 28 00 00       	call   3b80 <close>
    12be:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    12c1:	83 c3 01             	add    $0x1,%ebx
    12c4:	80 fb 74             	cmp    $0x74,%bl
    12c7:	75 c2                	jne    128b <createdelete+0x7b>
  for(i = 0; i < N; i++){
    12c9:	83 c7 01             	add    $0x1,%edi
    12cc:	83 ff 14             	cmp    $0x14,%edi
    12cf:	75 9f                	jne    1270 <createdelete+0x60>
    12d1:	bf 70 00 00 00       	mov    $0x70,%edi
    12d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12dd:	00 
    12de:	66 90                	xchg   %ax,%ax
      name[1] = '0' + i;
    12e0:	8d 47 c0             	lea    -0x40(%edi),%eax
    12e3:	bb 04 00 00 00       	mov    $0x4,%ebx
    12e8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    12eb:	89 f8                	mov    %edi,%eax
      unlink(name);
    12ed:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    12f0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    12f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    12f7:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    12fa:	56                   	push   %esi
    12fb:	e8 a8 28 00 00       	call   3ba8 <unlink>
    for(pi = 0; pi < 4; pi++){
    1300:	83 c4 10             	add    $0x10,%esp
    1303:	83 eb 01             	sub    $0x1,%ebx
    1306:	75 e3                	jne    12eb <createdelete+0xdb>
  for(i = 0; i < N; i++){
    1308:	83 c7 01             	add    $0x1,%edi
    130b:	89 f8                	mov    %edi,%eax
    130d:	3c 84                	cmp    $0x84,%al
    130f:	75 cf                	jne    12e0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1311:	83 ec 08             	sub    $0x8,%esp
    1314:	68 f3 45 00 00       	push   $0x45f3
    1319:	6a 01                	push   $0x1
    131b:	e8 a0 29 00 00       	call   3cc0 <printf>
}
    1320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret
    1328:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    132f:	00 
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1330:	85 c0                	test   %eax,%eax
    1332:	78 8d                	js     12c1 <createdelete+0xb1>
        printf(1, "oops createdelete %s did exist\n", name);
    1334:	50                   	push   %eax
    1335:	56                   	push   %esi
    1336:	68 cc 52 00 00       	push   $0x52cc
    133b:	6a 01                	push   $0x1
    133d:	e8 7e 29 00 00       	call   3cc0 <printf>
        exit();
    1342:	e8 11 28 00 00       	call   3b58 <exit>
    1347:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    134e:	00 
    134f:	90                   	nop
      name[0] = 'p' + pi;
    1350:	8d 46 70             	lea    0x70(%esi),%eax
      name[2] = '\0';
    1353:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1357:	8d 75 c8             	lea    -0x38(%ebp),%esi
      name[0] = 'p' + pi;
    135a:	88 45 c8             	mov    %al,-0x38(%ebp)
      for(i = 0; i < N; i++){
    135d:	8d 76 00             	lea    0x0(%esi),%esi
        fd = open(name, O_CREATE | O_RDWR);
    1360:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    1363:	8d 43 30             	lea    0x30(%ebx),%eax
    1366:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1369:	68 02 02 00 00       	push   $0x202
    136e:	56                   	push   %esi
    136f:	e8 24 28 00 00       	call   3b98 <open>
        if(fd < 0){
    1374:	83 c4 10             	add    $0x10,%esp
    1377:	85 c0                	test   %eax,%eax
    1379:	0f 88 8b 00 00 00    	js     140a <createdelete+0x1fa>
        close(fd);
    137f:	83 ec 0c             	sub    $0xc,%esp
    1382:	50                   	push   %eax
    1383:	e8 f8 27 00 00       	call   3b80 <close>
        if(i > 0 && (i % 2 ) == 0){
    1388:	83 c4 10             	add    $0x10,%esp
    138b:	85 db                	test   %ebx,%ebx
    138d:	74 19                	je     13a8 <createdelete+0x198>
    138f:	f6 c3 01             	test   $0x1,%bl
    1392:	74 1b                	je     13af <createdelete+0x19f>
      for(i = 0; i < N; i++){
    1394:	83 c3 01             	add    $0x1,%ebx
    1397:	83 fb 14             	cmp    $0x14,%ebx
    139a:	75 c4                	jne    1360 <createdelete+0x150>
      exit();
    139c:	e8 b7 27 00 00       	call   3b58 <exit>
    13a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    13a8:	bb 01 00 00 00       	mov    $0x1,%ebx
    13ad:	eb b1                	jmp    1360 <createdelete+0x150>
          name[1] = '0' + (i / 2);
    13af:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    13b1:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13b4:	d1 f8                	sar    $1,%eax
    13b6:	83 c0 30             	add    $0x30,%eax
    13b9:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13bc:	56                   	push   %esi
    13bd:	e8 e6 27 00 00       	call   3ba8 <unlink>
    13c2:	83 c4 10             	add    $0x10,%esp
    13c5:	85 c0                	test   %eax,%eax
    13c7:	78 2e                	js     13f7 <createdelete+0x1e7>
      for(i = 0; i < N; i++){
    13c9:	83 c3 01             	add    $0x1,%ebx
    13cc:	eb 92                	jmp    1360 <createdelete+0x150>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13ce:	83 ec 04             	sub    $0x4,%esp
    13d1:	56                   	push   %esi
    13d2:	68 a8 52 00 00       	push   $0x52a8
    13d7:	6a 01                	push   $0x1
    13d9:	e8 e2 28 00 00       	call   3cc0 <printf>
        exit();
    13de:	e8 75 27 00 00       	call   3b58 <exit>
      printf(1, "fork failed\n");
    13e3:	83 ec 08             	sub    $0x8,%esp
    13e6:	68 69 50 00 00       	push   $0x5069
    13eb:	6a 01                	push   $0x1
    13ed:	e8 ce 28 00 00       	call   3cc0 <printf>
      exit();
    13f2:	e8 61 27 00 00       	call   3b58 <exit>
            printf(1, "unlink failed\n");
    13f7:	52                   	push   %edx
    13f8:	52                   	push   %edx
    13f9:	68 e1 41 00 00       	push   $0x41e1
    13fe:	6a 01                	push   $0x1
    1400:	e8 bb 28 00 00       	call   3cc0 <printf>
            exit();
    1405:	e8 4e 27 00 00       	call   3b58 <exit>
          printf(1, "create failed\n");
    140a:	83 ec 08             	sub    $0x8,%esp
    140d:	68 2f 48 00 00       	push   $0x482f
    1412:	6a 01                	push   $0x1
    1414:	e8 a7 28 00 00       	call   3cc0 <printf>
          exit();
    1419:	e8 3a 27 00 00       	call   3b58 <exit>
    141e:	66 90                	xchg   %ax,%ax

00001420 <unlinkread>:
{
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	56                   	push   %esi
    1424:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1425:	83 ec 08             	sub    $0x8,%esp
    1428:	68 04 46 00 00       	push   $0x4604
    142d:	6a 01                	push   $0x1
    142f:	e8 8c 28 00 00       	call   3cc0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1434:	5b                   	pop    %ebx
    1435:	5e                   	pop    %esi
    1436:	68 02 02 00 00       	push   $0x202
    143b:	68 15 46 00 00       	push   $0x4615
    1440:	e8 53 27 00 00       	call   3b98 <open>
  if(fd < 0){
    1445:	83 c4 10             	add    $0x10,%esp
    1448:	85 c0                	test   %eax,%eax
    144a:	0f 88 e6 00 00 00    	js     1536 <unlinkread+0x116>
  write(fd, "hello", 5);
    1450:	83 ec 04             	sub    $0x4,%esp
    1453:	89 c3                	mov    %eax,%ebx
    1455:	6a 05                	push   $0x5
    1457:	68 3a 46 00 00       	push   $0x463a
    145c:	50                   	push   %eax
    145d:	e8 16 27 00 00       	call   3b78 <write>
  close(fd);
    1462:	89 1c 24             	mov    %ebx,(%esp)
    1465:	e8 16 27 00 00       	call   3b80 <close>
  fd = open("unlinkread", O_RDWR);
    146a:	58                   	pop    %eax
    146b:	5a                   	pop    %edx
    146c:	6a 02                	push   $0x2
    146e:	68 15 46 00 00       	push   $0x4615
    1473:	e8 20 27 00 00       	call   3b98 <open>
  if(fd < 0){
    1478:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    147b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    147d:	85 c0                	test   %eax,%eax
    147f:	0f 88 10 01 00 00    	js     1595 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    1485:	83 ec 0c             	sub    $0xc,%esp
    1488:	68 15 46 00 00       	push   $0x4615
    148d:	e8 16 27 00 00       	call   3ba8 <unlink>
    1492:	83 c4 10             	add    $0x10,%esp
    1495:	85 c0                	test   %eax,%eax
    1497:	0f 85 e5 00 00 00    	jne    1582 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    149d:	83 ec 08             	sub    $0x8,%esp
    14a0:	68 02 02 00 00       	push   $0x202
    14a5:	68 15 46 00 00       	push   $0x4615
    14aa:	e8 e9 26 00 00       	call   3b98 <open>
  write(fd1, "yyy", 3);
    14af:	83 c4 0c             	add    $0xc,%esp
    14b2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14b4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14b6:	68 72 46 00 00       	push   $0x4672
    14bb:	50                   	push   %eax
    14bc:	e8 b7 26 00 00       	call   3b78 <write>
  close(fd1);
    14c1:	89 34 24             	mov    %esi,(%esp)
    14c4:	e8 b7 26 00 00       	call   3b80 <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14c9:	83 c4 0c             	add    $0xc,%esp
    14cc:	68 00 20 00 00       	push   $0x2000
    14d1:	68 20 8a 00 00       	push   $0x8a20
    14d6:	53                   	push   %ebx
    14d7:	e8 94 26 00 00       	call   3b70 <read>
    14dc:	83 c4 10             	add    $0x10,%esp
    14df:	83 f8 05             	cmp    $0x5,%eax
    14e2:	0f 85 87 00 00 00    	jne    156f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    14e8:	80 3d 20 8a 00 00 68 	cmpb   $0x68,0x8a20
    14ef:	75 6b                	jne    155c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    14f1:	83 ec 04             	sub    $0x4,%esp
    14f4:	6a 0a                	push   $0xa
    14f6:	68 20 8a 00 00       	push   $0x8a20
    14fb:	53                   	push   %ebx
    14fc:	e8 77 26 00 00       	call   3b78 <write>
    1501:	83 c4 10             	add    $0x10,%esp
    1504:	83 f8 0a             	cmp    $0xa,%eax
    1507:	75 40                	jne    1549 <unlinkread+0x129>
  close(fd);
    1509:	83 ec 0c             	sub    $0xc,%esp
    150c:	53                   	push   %ebx
    150d:	e8 6e 26 00 00       	call   3b80 <close>
  unlink("unlinkread");
    1512:	c7 04 24 15 46 00 00 	movl   $0x4615,(%esp)
    1519:	e8 8a 26 00 00       	call   3ba8 <unlink>
  printf(1, "unlinkread ok\n");
    151e:	58                   	pop    %eax
    151f:	5a                   	pop    %edx
    1520:	68 bd 46 00 00       	push   $0x46bd
    1525:	6a 01                	push   $0x1
    1527:	e8 94 27 00 00       	call   3cc0 <printf>
}
    152c:	83 c4 10             	add    $0x10,%esp
    152f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1532:	5b                   	pop    %ebx
    1533:	5e                   	pop    %esi
    1534:	5d                   	pop    %ebp
    1535:	c3                   	ret
    printf(1, "create unlinkread failed\n");
    1536:	51                   	push   %ecx
    1537:	51                   	push   %ecx
    1538:	68 20 46 00 00       	push   $0x4620
    153d:	6a 01                	push   $0x1
    153f:	e8 7c 27 00 00       	call   3cc0 <printf>
    exit();
    1544:	e8 0f 26 00 00       	call   3b58 <exit>
    printf(1, "unlinkread write failed\n");
    1549:	51                   	push   %ecx
    154a:	51                   	push   %ecx
    154b:	68 a4 46 00 00       	push   $0x46a4
    1550:	6a 01                	push   $0x1
    1552:	e8 69 27 00 00       	call   3cc0 <printf>
    exit();
    1557:	e8 fc 25 00 00       	call   3b58 <exit>
    printf(1, "unlinkread wrong data\n");
    155c:	53                   	push   %ebx
    155d:	53                   	push   %ebx
    155e:	68 8d 46 00 00       	push   $0x468d
    1563:	6a 01                	push   $0x1
    1565:	e8 56 27 00 00       	call   3cc0 <printf>
    exit();
    156a:	e8 e9 25 00 00       	call   3b58 <exit>
    printf(1, "unlinkread read failed");
    156f:	56                   	push   %esi
    1570:	56                   	push   %esi
    1571:	68 76 46 00 00       	push   $0x4676
    1576:	6a 01                	push   $0x1
    1578:	e8 43 27 00 00       	call   3cc0 <printf>
    exit();
    157d:	e8 d6 25 00 00       	call   3b58 <exit>
    printf(1, "unlink unlinkread failed\n");
    1582:	50                   	push   %eax
    1583:	50                   	push   %eax
    1584:	68 58 46 00 00       	push   $0x4658
    1589:	6a 01                	push   $0x1
    158b:	e8 30 27 00 00       	call   3cc0 <printf>
    exit();
    1590:	e8 c3 25 00 00       	call   3b58 <exit>
    printf(1, "open unlinkread failed\n");
    1595:	50                   	push   %eax
    1596:	50                   	push   %eax
    1597:	68 40 46 00 00       	push   $0x4640
    159c:	6a 01                	push   $0x1
    159e:	e8 1d 27 00 00       	call   3cc0 <printf>
    exit();
    15a3:	e8 b0 25 00 00       	call   3b58 <exit>
    15a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    15af:	00 

000015b0 <linktest>:
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	53                   	push   %ebx
    15b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15b7:	68 cc 46 00 00       	push   $0x46cc
    15bc:	6a 01                	push   $0x1
    15be:	e8 fd 26 00 00       	call   3cc0 <printf>
  unlink("lf1");
    15c3:	c7 04 24 d6 46 00 00 	movl   $0x46d6,(%esp)
    15ca:	e8 d9 25 00 00       	call   3ba8 <unlink>
  unlink("lf2");
    15cf:	c7 04 24 da 46 00 00 	movl   $0x46da,(%esp)
    15d6:	e8 cd 25 00 00       	call   3ba8 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15db:	58                   	pop    %eax
    15dc:	5a                   	pop    %edx
    15dd:	68 02 02 00 00       	push   $0x202
    15e2:	68 d6 46 00 00       	push   $0x46d6
    15e7:	e8 ac 25 00 00       	call   3b98 <open>
  if(fd < 0){
    15ec:	83 c4 10             	add    $0x10,%esp
    15ef:	85 c0                	test   %eax,%eax
    15f1:	0f 88 1e 01 00 00    	js     1715 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    15f7:	83 ec 04             	sub    $0x4,%esp
    15fa:	89 c3                	mov    %eax,%ebx
    15fc:	6a 05                	push   $0x5
    15fe:	68 3a 46 00 00       	push   $0x463a
    1603:	50                   	push   %eax
    1604:	e8 6f 25 00 00       	call   3b78 <write>
    1609:	83 c4 10             	add    $0x10,%esp
    160c:	83 f8 05             	cmp    $0x5,%eax
    160f:	0f 85 98 01 00 00    	jne    17ad <linktest+0x1fd>
  close(fd);
    1615:	83 ec 0c             	sub    $0xc,%esp
    1618:	53                   	push   %ebx
    1619:	e8 62 25 00 00       	call   3b80 <close>
  if(link("lf1", "lf2") < 0){
    161e:	5b                   	pop    %ebx
    161f:	58                   	pop    %eax
    1620:	68 da 46 00 00       	push   $0x46da
    1625:	68 d6 46 00 00       	push   $0x46d6
    162a:	e8 89 25 00 00       	call   3bb8 <link>
    162f:	83 c4 10             	add    $0x10,%esp
    1632:	85 c0                	test   %eax,%eax
    1634:	0f 88 60 01 00 00    	js     179a <linktest+0x1ea>
  unlink("lf1");
    163a:	83 ec 0c             	sub    $0xc,%esp
    163d:	68 d6 46 00 00       	push   $0x46d6
    1642:	e8 61 25 00 00       	call   3ba8 <unlink>
  if(open("lf1", 0) >= 0){
    1647:	58                   	pop    %eax
    1648:	5a                   	pop    %edx
    1649:	6a 00                	push   $0x0
    164b:	68 d6 46 00 00       	push   $0x46d6
    1650:	e8 43 25 00 00       	call   3b98 <open>
    1655:	83 c4 10             	add    $0x10,%esp
    1658:	85 c0                	test   %eax,%eax
    165a:	0f 89 27 01 00 00    	jns    1787 <linktest+0x1d7>
  fd = open("lf2", 0);
    1660:	83 ec 08             	sub    $0x8,%esp
    1663:	6a 00                	push   $0x0
    1665:	68 da 46 00 00       	push   $0x46da
    166a:	e8 29 25 00 00       	call   3b98 <open>
  if(fd < 0){
    166f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1672:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1674:	85 c0                	test   %eax,%eax
    1676:	0f 88 f8 00 00 00    	js     1774 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    167c:	83 ec 04             	sub    $0x4,%esp
    167f:	68 00 20 00 00       	push   $0x2000
    1684:	68 20 8a 00 00       	push   $0x8a20
    1689:	50                   	push   %eax
    168a:	e8 e1 24 00 00       	call   3b70 <read>
    168f:	83 c4 10             	add    $0x10,%esp
    1692:	83 f8 05             	cmp    $0x5,%eax
    1695:	0f 85 c6 00 00 00    	jne    1761 <linktest+0x1b1>
  close(fd);
    169b:	83 ec 0c             	sub    $0xc,%esp
    169e:	53                   	push   %ebx
    169f:	e8 dc 24 00 00       	call   3b80 <close>
  if(link("lf2", "lf2") >= 0){
    16a4:	58                   	pop    %eax
    16a5:	5a                   	pop    %edx
    16a6:	68 da 46 00 00       	push   $0x46da
    16ab:	68 da 46 00 00       	push   $0x46da
    16b0:	e8 03 25 00 00       	call   3bb8 <link>
    16b5:	83 c4 10             	add    $0x10,%esp
    16b8:	85 c0                	test   %eax,%eax
    16ba:	0f 89 8e 00 00 00    	jns    174e <linktest+0x19e>
  unlink("lf2");
    16c0:	83 ec 0c             	sub    $0xc,%esp
    16c3:	68 da 46 00 00       	push   $0x46da
    16c8:	e8 db 24 00 00       	call   3ba8 <unlink>
  if(link("lf2", "lf1") >= 0){
    16cd:	59                   	pop    %ecx
    16ce:	5b                   	pop    %ebx
    16cf:	68 d6 46 00 00       	push   $0x46d6
    16d4:	68 da 46 00 00       	push   $0x46da
    16d9:	e8 da 24 00 00       	call   3bb8 <link>
    16de:	83 c4 10             	add    $0x10,%esp
    16e1:	85 c0                	test   %eax,%eax
    16e3:	79 56                	jns    173b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    16e5:	83 ec 08             	sub    $0x8,%esp
    16e8:	68 d6 46 00 00       	push   $0x46d6
    16ed:	68 9e 49 00 00       	push   $0x499e
    16f2:	e8 c1 24 00 00       	call   3bb8 <link>
    16f7:	83 c4 10             	add    $0x10,%esp
    16fa:	85 c0                	test   %eax,%eax
    16fc:	79 2a                	jns    1728 <linktest+0x178>
  printf(1, "linktest ok\n");
    16fe:	83 ec 08             	sub    $0x8,%esp
    1701:	68 74 47 00 00       	push   $0x4774
    1706:	6a 01                	push   $0x1
    1708:	e8 b3 25 00 00       	call   3cc0 <printf>
}
    170d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1710:	83 c4 10             	add    $0x10,%esp
    1713:	c9                   	leave
    1714:	c3                   	ret
    printf(1, "create lf1 failed\n");
    1715:	50                   	push   %eax
    1716:	50                   	push   %eax
    1717:	68 de 46 00 00       	push   $0x46de
    171c:	6a 01                	push   $0x1
    171e:	e8 9d 25 00 00       	call   3cc0 <printf>
    exit();
    1723:	e8 30 24 00 00       	call   3b58 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1728:	50                   	push   %eax
    1729:	50                   	push   %eax
    172a:	68 58 47 00 00       	push   $0x4758
    172f:	6a 01                	push   $0x1
    1731:	e8 8a 25 00 00       	call   3cc0 <printf>
    exit();
    1736:	e8 1d 24 00 00       	call   3b58 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    173b:	52                   	push   %edx
    173c:	52                   	push   %edx
    173d:	68 14 53 00 00       	push   $0x5314
    1742:	6a 01                	push   $0x1
    1744:	e8 77 25 00 00       	call   3cc0 <printf>
    exit();
    1749:	e8 0a 24 00 00       	call   3b58 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    174e:	50                   	push   %eax
    174f:	50                   	push   %eax
    1750:	68 3a 47 00 00       	push   $0x473a
    1755:	6a 01                	push   $0x1
    1757:	e8 64 25 00 00       	call   3cc0 <printf>
    exit();
    175c:	e8 f7 23 00 00       	call   3b58 <exit>
    printf(1, "read lf2 failed\n");
    1761:	51                   	push   %ecx
    1762:	51                   	push   %ecx
    1763:	68 29 47 00 00       	push   $0x4729
    1768:	6a 01                	push   $0x1
    176a:	e8 51 25 00 00       	call   3cc0 <printf>
    exit();
    176f:	e8 e4 23 00 00       	call   3b58 <exit>
    printf(1, "open lf2 failed\n");
    1774:	53                   	push   %ebx
    1775:	53                   	push   %ebx
    1776:	68 18 47 00 00       	push   $0x4718
    177b:	6a 01                	push   $0x1
    177d:	e8 3e 25 00 00       	call   3cc0 <printf>
    exit();
    1782:	e8 d1 23 00 00       	call   3b58 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1787:	50                   	push   %eax
    1788:	50                   	push   %eax
    1789:	68 ec 52 00 00       	push   $0x52ec
    178e:	6a 01                	push   $0x1
    1790:	e8 2b 25 00 00       	call   3cc0 <printf>
    exit();
    1795:	e8 be 23 00 00       	call   3b58 <exit>
    printf(1, "link lf1 lf2 failed\n");
    179a:	51                   	push   %ecx
    179b:	51                   	push   %ecx
    179c:	68 03 47 00 00       	push   $0x4703
    17a1:	6a 01                	push   $0x1
    17a3:	e8 18 25 00 00       	call   3cc0 <printf>
    exit();
    17a8:	e8 ab 23 00 00       	call   3b58 <exit>
    printf(1, "write lf1 failed\n");
    17ad:	50                   	push   %eax
    17ae:	50                   	push   %eax
    17af:	68 f1 46 00 00       	push   $0x46f1
    17b4:	6a 01                	push   $0x1
    17b6:	e8 05 25 00 00       	call   3cc0 <printf>
    exit();
    17bb:	e8 98 23 00 00       	call   3b58 <exit>

000017c0 <concreate>:
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	57                   	push   %edi
    17c4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    17c5:	31 f6                	xor    %esi,%esi
{
    17c7:	53                   	push   %ebx
    17c8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17cb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17ce:	68 81 47 00 00       	push   $0x4781
    17d3:	6a 01                	push   $0x1
    17d5:	e8 e6 24 00 00       	call   3cc0 <printf>
  file[0] = 'C';
    17da:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    17de:	83 c4 10             	add    $0x10,%esp
    17e1:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    17e5:	eb 4c                	jmp    1833 <concreate+0x73>
    17e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    17ee:	00 
    17ef:	90                   	nop
    17f0:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    17f6:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    17fb:	0f 83 8f 00 00 00    	jae    1890 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1801:	83 ec 08             	sub    $0x8,%esp
    1804:	68 02 02 00 00       	push   $0x202
    1809:	53                   	push   %ebx
    180a:	e8 89 23 00 00       	call   3b98 <open>
      if(fd < 0){
    180f:	83 c4 10             	add    $0x10,%esp
    1812:	85 c0                	test   %eax,%eax
    1814:	78 63                	js     1879 <concreate+0xb9>
      close(fd);
    1816:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1819:	83 c6 01             	add    $0x1,%esi
      close(fd);
    181c:	50                   	push   %eax
    181d:	e8 5e 23 00 00       	call   3b80 <close>
    1822:	83 c4 10             	add    $0x10,%esp
      wait();
    1825:	e8 36 23 00 00       	call   3b60 <wait>
  for(i = 0; i < 40; i++){
    182a:	83 fe 28             	cmp    $0x28,%esi
    182d:	0f 84 7f 00 00 00    	je     18b2 <concreate+0xf2>
    unlink(file);
    1833:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1836:	8d 46 30             	lea    0x30(%esi),%eax
    1839:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    183c:	53                   	push   %ebx
    183d:	e8 66 23 00 00       	call   3ba8 <unlink>
    pid = fork();
    1842:	e8 09 23 00 00       	call   3b50 <fork>
    if(pid && (i % 3) == 1){
    1847:	83 c4 10             	add    $0x10,%esp
    184a:	85 c0                	test   %eax,%eax
    184c:	75 a2                	jne    17f0 <concreate+0x30>
      link("C0", file);
    184e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    1854:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    185a:	0f 83 d0 00 00 00    	jae    1930 <concreate+0x170>
      fd = open(file, O_CREATE | O_RDWR);
    1860:	83 ec 08             	sub    $0x8,%esp
    1863:	68 02 02 00 00       	push   $0x202
    1868:	53                   	push   %ebx
    1869:	e8 2a 23 00 00       	call   3b98 <open>
      if(fd < 0){
    186e:	83 c4 10             	add    $0x10,%esp
    1871:	85 c0                	test   %eax,%eax
    1873:	0f 89 ea 01 00 00    	jns    1a63 <concreate+0x2a3>
        printf(1, "concreate create %s failed\n", file);
    1879:	83 ec 04             	sub    $0x4,%esp
    187c:	53                   	push   %ebx
    187d:	68 94 47 00 00       	push   $0x4794
    1882:	6a 01                	push   $0x1
    1884:	e8 37 24 00 00       	call   3cc0 <printf>
        exit();
    1889:	e8 ca 22 00 00       	call   3b58 <exit>
    188e:	66 90                	xchg   %ax,%ax
      link("C0", file);
    1890:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    1893:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1896:	53                   	push   %ebx
    1897:	68 91 47 00 00       	push   $0x4791
    189c:	e8 17 23 00 00       	call   3bb8 <link>
    18a1:	83 c4 10             	add    $0x10,%esp
      wait();
    18a4:	e8 b7 22 00 00       	call   3b60 <wait>
  for(i = 0; i < 40; i++){
    18a9:	83 fe 28             	cmp    $0x28,%esi
    18ac:	0f 85 81 ff ff ff    	jne    1833 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    18b2:	83 ec 04             	sub    $0x4,%esp
    18b5:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18b8:	6a 28                	push   $0x28
    18ba:	6a 00                	push   $0x0
    18bc:	50                   	push   %eax
    18bd:	e8 ce 1e 00 00       	call   3790 <memset>
  fd = open(".", 0);
    18c2:	5e                   	pop    %esi
    18c3:	5f                   	pop    %edi
    18c4:	6a 00                	push   $0x0
    18c6:	68 9e 49 00 00       	push   $0x499e
    18cb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    18ce:	e8 c5 22 00 00       	call   3b98 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    18d3:	83 c4 10             	add    $0x10,%esp
  n = 0;
    18d6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    18dd:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    18df:	90                   	nop
    18e0:	83 ec 04             	sub    $0x4,%esp
    18e3:	6a 10                	push   $0x10
    18e5:	57                   	push   %edi
    18e6:	56                   	push   %esi
    18e7:	e8 84 22 00 00       	call   3b70 <read>
    18ec:	83 c4 10             	add    $0x10,%esp
    18ef:	85 c0                	test   %eax,%eax
    18f1:	7e 5d                	jle    1950 <concreate+0x190>
    if(de.inum == 0)
    18f3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    18f8:	74 e6                	je     18e0 <concreate+0x120>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    18fa:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    18fe:	75 e0                	jne    18e0 <concreate+0x120>
    1900:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1904:	75 da                	jne    18e0 <concreate+0x120>
      i = de.name[1] - '0';
    1906:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    190a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    190d:	83 f8 27             	cmp    $0x27,%eax
    1910:	0f 87 5e 01 00 00    	ja     1a74 <concreate+0x2b4>
      if(fa[i]){
    1916:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    191b:	0f 85 7e 01 00 00    	jne    1a9f <concreate+0x2df>
      n++;
    1921:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1925:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    192a:	eb b4                	jmp    18e0 <concreate+0x120>
    192c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1930:	83 ec 08             	sub    $0x8,%esp
    1933:	53                   	push   %ebx
    1934:	68 91 47 00 00       	push   $0x4791
    1939:	e8 7a 22 00 00       	call   3bb8 <link>
    193e:	83 c4 10             	add    $0x10,%esp
      exit();
    1941:	e8 12 22 00 00       	call   3b58 <exit>
    1946:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    194d:	00 
    194e:	66 90                	xchg   %ax,%ax
  close(fd);
    1950:	83 ec 0c             	sub    $0xc,%esp
    1953:	56                   	push   %esi
    1954:	e8 27 22 00 00       	call   3b80 <close>
  if(n != 40){
    1959:	83 c4 10             	add    $0x10,%esp
    195c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1960:	0f 85 26 01 00 00    	jne    1a8c <concreate+0x2cc>
  for(i = 0; i < 40; i++){
    1966:	31 f6                	xor    %esi,%esi
    1968:	eb 48                	jmp    19b2 <concreate+0x1f2>
    196a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1970:	83 f8 01             	cmp    $0x1,%eax
    1973:	75 04                	jne    1979 <concreate+0x1b9>
    1975:	85 ff                	test   %edi,%edi
    1977:	75 68                	jne    19e1 <concreate+0x221>
      unlink(file);
    1979:	83 ec 0c             	sub    $0xc,%esp
    197c:	53                   	push   %ebx
    197d:	e8 26 22 00 00       	call   3ba8 <unlink>
      unlink(file);
    1982:	89 1c 24             	mov    %ebx,(%esp)
    1985:	e8 1e 22 00 00       	call   3ba8 <unlink>
      unlink(file);
    198a:	89 1c 24             	mov    %ebx,(%esp)
    198d:	e8 16 22 00 00       	call   3ba8 <unlink>
      unlink(file);
    1992:	89 1c 24             	mov    %ebx,(%esp)
    1995:	e8 0e 22 00 00       	call   3ba8 <unlink>
    199a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    199d:	85 ff                	test   %edi,%edi
    199f:	74 a0                	je     1941 <concreate+0x181>
      wait();
    19a1:	e8 ba 21 00 00       	call   3b60 <wait>
  for(i = 0; i < 40; i++){
    19a6:	83 c6 01             	add    $0x1,%esi
    19a9:	83 fe 28             	cmp    $0x28,%esi
    19ac:	0f 84 86 00 00 00    	je     1a38 <concreate+0x278>
    file[1] = '0' + i;
    19b2:	8d 46 30             	lea    0x30(%esi),%eax
    19b5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19b8:	e8 93 21 00 00       	call   3b50 <fork>
    19bd:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19bf:	85 c0                	test   %eax,%eax
    19c1:	0f 88 88 00 00 00    	js     1a4f <concreate+0x28f>
    if(((i % 3) == 0 && pid == 0) ||
    19c7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19cc:	f7 e6                	mul    %esi
    19ce:	89 d0                	mov    %edx,%eax
    19d0:	83 e2 fe             	and    $0xfffffffe,%edx
    19d3:	d1 e8                	shr    $1,%eax
    19d5:	01 c2                	add    %eax,%edx
    19d7:	89 f0                	mov    %esi,%eax
    19d9:	29 d0                	sub    %edx,%eax
    19db:	89 c1                	mov    %eax,%ecx
    19dd:	09 f9                	or     %edi,%ecx
    19df:	75 8f                	jne    1970 <concreate+0x1b0>
      close(open(file, 0));
    19e1:	83 ec 08             	sub    $0x8,%esp
    19e4:	6a 00                	push   $0x0
    19e6:	53                   	push   %ebx
    19e7:	e8 ac 21 00 00       	call   3b98 <open>
    19ec:	89 04 24             	mov    %eax,(%esp)
    19ef:	e8 8c 21 00 00       	call   3b80 <close>
      close(open(file, 0));
    19f4:	58                   	pop    %eax
    19f5:	5a                   	pop    %edx
    19f6:	6a 00                	push   $0x0
    19f8:	53                   	push   %ebx
    19f9:	e8 9a 21 00 00       	call   3b98 <open>
    19fe:	89 04 24             	mov    %eax,(%esp)
    1a01:	e8 7a 21 00 00       	call   3b80 <close>
      close(open(file, 0));
    1a06:	59                   	pop    %ecx
    1a07:	58                   	pop    %eax
    1a08:	6a 00                	push   $0x0
    1a0a:	53                   	push   %ebx
    1a0b:	e8 88 21 00 00       	call   3b98 <open>
    1a10:	89 04 24             	mov    %eax,(%esp)
    1a13:	e8 68 21 00 00       	call   3b80 <close>
      close(open(file, 0));
    1a18:	58                   	pop    %eax
    1a19:	5a                   	pop    %edx
    1a1a:	6a 00                	push   $0x0
    1a1c:	53                   	push   %ebx
    1a1d:	e8 76 21 00 00       	call   3b98 <open>
    1a22:	89 04 24             	mov    %eax,(%esp)
    1a25:	e8 56 21 00 00       	call   3b80 <close>
    1a2a:	83 c4 10             	add    $0x10,%esp
    1a2d:	e9 6b ff ff ff       	jmp    199d <concreate+0x1dd>
    1a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1a38:	83 ec 08             	sub    $0x8,%esp
    1a3b:	68 e6 47 00 00       	push   $0x47e6
    1a40:	6a 01                	push   $0x1
    1a42:	e8 79 22 00 00       	call   3cc0 <printf>
}
    1a47:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a4a:	5b                   	pop    %ebx
    1a4b:	5e                   	pop    %esi
    1a4c:	5f                   	pop    %edi
    1a4d:	5d                   	pop    %ebp
    1a4e:	c3                   	ret
      printf(1, "fork failed\n");
    1a4f:	83 ec 08             	sub    $0x8,%esp
    1a52:	68 69 50 00 00       	push   $0x5069
    1a57:	6a 01                	push   $0x1
    1a59:	e8 62 22 00 00       	call   3cc0 <printf>
      exit();
    1a5e:	e8 f5 20 00 00       	call   3b58 <exit>
      close(fd);
    1a63:	83 ec 0c             	sub    $0xc,%esp
    1a66:	50                   	push   %eax
    1a67:	e8 14 21 00 00       	call   3b80 <close>
    1a6c:	83 c4 10             	add    $0x10,%esp
    1a6f:	e9 cd fe ff ff       	jmp    1941 <concreate+0x181>
        printf(1, "concreate weird file %s\n", de.name);
    1a74:	83 ec 04             	sub    $0x4,%esp
    1a77:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a7a:	50                   	push   %eax
    1a7b:	68 b0 47 00 00       	push   $0x47b0
    1a80:	6a 01                	push   $0x1
    1a82:	e8 39 22 00 00       	call   3cc0 <printf>
        exit();
    1a87:	e8 cc 20 00 00       	call   3b58 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1a8c:	51                   	push   %ecx
    1a8d:	51                   	push   %ecx
    1a8e:	68 38 53 00 00       	push   $0x5338
    1a93:	6a 01                	push   $0x1
    1a95:	e8 26 22 00 00       	call   3cc0 <printf>
    exit();
    1a9a:	e8 b9 20 00 00       	call   3b58 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1a9f:	83 ec 04             	sub    $0x4,%esp
    1aa2:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1aa5:	50                   	push   %eax
    1aa6:	68 c9 47 00 00       	push   $0x47c9
    1aab:	6a 01                	push   $0x1
    1aad:	e8 0e 22 00 00       	call   3cc0 <printf>
        exit();
    1ab2:	e8 a1 20 00 00       	call   3b58 <exit>
    1ab7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1abe:	00 
    1abf:	90                   	nop

00001ac0 <linkunlink>:
{
    1ac0:	55                   	push   %ebp
    1ac1:	89 e5                	mov    %esp,%ebp
    1ac3:	57                   	push   %edi
    1ac4:	56                   	push   %esi
    1ac5:	53                   	push   %ebx
    1ac6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ac9:	68 f4 47 00 00       	push   $0x47f4
    1ace:	6a 01                	push   $0x1
    1ad0:	e8 eb 21 00 00       	call   3cc0 <printf>
  unlink("x");
    1ad5:	c7 04 24 81 4a 00 00 	movl   $0x4a81,(%esp)
    1adc:	e8 c7 20 00 00       	call   3ba8 <unlink>
  pid = fork();
    1ae1:	e8 6a 20 00 00       	call   3b50 <fork>
  if(pid < 0){
    1ae6:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1ae9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1aec:	85 c0                	test   %eax,%eax
    1aee:	0f 88 b6 00 00 00    	js     1baa <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1af4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1af8:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1afd:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b02:	19 ff                	sbb    %edi,%edi
    1b04:	83 e7 60             	and    $0x60,%edi
    1b07:	83 c7 01             	add    $0x1,%edi
  for(i = 0; i < 100; i++){
    1b0a:	eb 1e                	jmp    1b2a <linkunlink+0x6a>
    1b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b10:	83 f8 01             	cmp    $0x1,%eax
    1b13:	74 7b                	je     1b90 <linkunlink+0xd0>
      unlink("x");
    1b15:	83 ec 0c             	sub    $0xc,%esp
    1b18:	68 81 4a 00 00       	push   $0x4a81
    1b1d:	e8 86 20 00 00       	call   3ba8 <unlink>
    1b22:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b25:	83 eb 01             	sub    $0x1,%ebx
    1b28:	74 41                	je     1b6b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    1b2a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b30:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b36:	89 f8                	mov    %edi,%eax
    1b38:	f7 e6                	mul    %esi
    1b3a:	89 d0                	mov    %edx,%eax
    1b3c:	83 e2 fe             	and    $0xfffffffe,%edx
    1b3f:	d1 e8                	shr    $1,%eax
    1b41:	01 c2                	add    %eax,%edx
    1b43:	89 f8                	mov    %edi,%eax
    1b45:	29 d0                	sub    %edx,%eax
    1b47:	75 c7                	jne    1b10 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b49:	83 ec 08             	sub    $0x8,%esp
    1b4c:	68 02 02 00 00       	push   $0x202
    1b51:	68 81 4a 00 00       	push   $0x4a81
    1b56:	e8 3d 20 00 00       	call   3b98 <open>
    1b5b:	89 04 24             	mov    %eax,(%esp)
    1b5e:	e8 1d 20 00 00       	call   3b80 <close>
    1b63:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b66:	83 eb 01             	sub    $0x1,%ebx
    1b69:	75 bf                	jne    1b2a <linkunlink+0x6a>
  if(pid)
    1b6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b6e:	85 c0                	test   %eax,%eax
    1b70:	74 4b                	je     1bbd <linkunlink+0xfd>
    wait();
    1b72:	e8 e9 1f 00 00       	call   3b60 <wait>
  printf(1, "linkunlink ok\n");
    1b77:	83 ec 08             	sub    $0x8,%esp
    1b7a:	68 09 48 00 00       	push   $0x4809
    1b7f:	6a 01                	push   $0x1
    1b81:	e8 3a 21 00 00       	call   3cc0 <printf>
}
    1b86:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b89:	5b                   	pop    %ebx
    1b8a:	5e                   	pop    %esi
    1b8b:	5f                   	pop    %edi
    1b8c:	5d                   	pop    %ebp
    1b8d:	c3                   	ret
    1b8e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1b90:	83 ec 08             	sub    $0x8,%esp
    1b93:	68 81 4a 00 00       	push   $0x4a81
    1b98:	68 05 48 00 00       	push   $0x4805
    1b9d:	e8 16 20 00 00       	call   3bb8 <link>
    1ba2:	83 c4 10             	add    $0x10,%esp
    1ba5:	e9 7b ff ff ff       	jmp    1b25 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1baa:	52                   	push   %edx
    1bab:	52                   	push   %edx
    1bac:	68 69 50 00 00       	push   $0x5069
    1bb1:	6a 01                	push   $0x1
    1bb3:	e8 08 21 00 00       	call   3cc0 <printf>
    exit();
    1bb8:	e8 9b 1f 00 00       	call   3b58 <exit>
    exit();
    1bbd:	e8 96 1f 00 00       	call   3b58 <exit>
    1bc2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1bc9:	00 
    1bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001bd0 <bigdir>:
{
    1bd0:	55                   	push   %ebp
    1bd1:	89 e5                	mov    %esp,%ebp
    1bd3:	57                   	push   %edi
    1bd4:	56                   	push   %esi
    1bd5:	53                   	push   %ebx
    1bd6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1bd9:	68 18 48 00 00       	push   $0x4818
    1bde:	6a 01                	push   $0x1
    1be0:	e8 db 20 00 00       	call   3cc0 <printf>
  unlink("bd");
    1be5:	c7 04 24 25 48 00 00 	movl   $0x4825,(%esp)
    1bec:	e8 b7 1f 00 00       	call   3ba8 <unlink>
  fd = open("bd", O_CREATE);
    1bf1:	5a                   	pop    %edx
    1bf2:	59                   	pop    %ecx
    1bf3:	68 00 02 00 00       	push   $0x200
    1bf8:	68 25 48 00 00       	push   $0x4825
    1bfd:	e8 96 1f 00 00       	call   3b98 <open>
  if(fd < 0){
    1c02:	83 c4 10             	add    $0x10,%esp
    1c05:	85 c0                	test   %eax,%eax
    1c07:	0f 88 de 00 00 00    	js     1ceb <bigdir+0x11b>
  close(fd);
    1c0d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1c10:	31 f6                	xor    %esi,%esi
    1c12:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1c15:	50                   	push   %eax
    1c16:	e8 65 1f 00 00       	call   3b80 <close>
    1c1b:	83 c4 10             	add    $0x10,%esp
    1c1e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c20:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c22:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c25:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c29:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c2c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c30:	83 c0 30             	add    $0x30,%eax
    1c33:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c36:	89 f0                	mov    %esi,%eax
    1c38:	83 e0 3f             	and    $0x3f,%eax
    1c3b:	83 c0 30             	add    $0x30,%eax
    1c3e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c41:	57                   	push   %edi
    1c42:	68 25 48 00 00       	push   $0x4825
    1c47:	e8 6c 1f 00 00       	call   3bb8 <link>
    1c4c:	83 c4 10             	add    $0x10,%esp
    1c4f:	89 c3                	mov    %eax,%ebx
    1c51:	85 c0                	test   %eax,%eax
    1c53:	75 6e                	jne    1cc3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c55:	83 c6 01             	add    $0x1,%esi
    1c58:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c5e:	75 c0                	jne    1c20 <bigdir+0x50>
  unlink("bd");
    1c60:	83 ec 0c             	sub    $0xc,%esp
    1c63:	68 25 48 00 00       	push   $0x4825
    1c68:	e8 3b 1f 00 00       	call   3ba8 <unlink>
    1c6d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c70:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c72:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c75:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c79:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c7c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c80:	83 c0 30             	add    $0x30,%eax
    1c83:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c86:	89 d8                	mov    %ebx,%eax
    1c88:	83 e0 3f             	and    $0x3f,%eax
    1c8b:	83 c0 30             	add    $0x30,%eax
    1c8e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1c91:	57                   	push   %edi
    1c92:	e8 11 1f 00 00       	call   3ba8 <unlink>
    1c97:	83 c4 10             	add    $0x10,%esp
    1c9a:	85 c0                	test   %eax,%eax
    1c9c:	75 39                	jne    1cd7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1c9e:	83 c3 01             	add    $0x1,%ebx
    1ca1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ca7:	75 c7                	jne    1c70 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1ca9:	83 ec 08             	sub    $0x8,%esp
    1cac:	68 67 48 00 00       	push   $0x4867
    1cb1:	6a 01                	push   $0x1
    1cb3:	e8 08 20 00 00       	call   3cc0 <printf>
    1cb8:	83 c4 10             	add    $0x10,%esp
}
    1cbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cbe:	5b                   	pop    %ebx
    1cbf:	5e                   	pop    %esi
    1cc0:	5f                   	pop    %edi
    1cc1:	5d                   	pop    %ebp
    1cc2:	c3                   	ret
      printf(1, "bigdir link failed\n");
    1cc3:	83 ec 08             	sub    $0x8,%esp
    1cc6:	68 3e 48 00 00       	push   $0x483e
    1ccb:	6a 01                	push   $0x1
    1ccd:	e8 ee 1f 00 00       	call   3cc0 <printf>
      exit();
    1cd2:	e8 81 1e 00 00       	call   3b58 <exit>
      printf(1, "bigdir unlink failed");
    1cd7:	83 ec 08             	sub    $0x8,%esp
    1cda:	68 52 48 00 00       	push   $0x4852
    1cdf:	6a 01                	push   $0x1
    1ce1:	e8 da 1f 00 00       	call   3cc0 <printf>
      exit();
    1ce6:	e8 6d 1e 00 00       	call   3b58 <exit>
    printf(1, "bigdir create failed\n");
    1ceb:	50                   	push   %eax
    1cec:	50                   	push   %eax
    1ced:	68 28 48 00 00       	push   $0x4828
    1cf2:	6a 01                	push   $0x1
    1cf4:	e8 c7 1f 00 00       	call   3cc0 <printf>
    exit();
    1cf9:	e8 5a 1e 00 00       	call   3b58 <exit>
    1cfe:	66 90                	xchg   %ax,%ax

00001d00 <subdir>:
{
    1d00:	55                   	push   %ebp
    1d01:	89 e5                	mov    %esp,%ebp
    1d03:	53                   	push   %ebx
    1d04:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d07:	68 72 48 00 00       	push   $0x4872
    1d0c:	6a 01                	push   $0x1
    1d0e:	e8 ad 1f 00 00       	call   3cc0 <printf>
  unlink("ff");
    1d13:	c7 04 24 fb 48 00 00 	movl   $0x48fb,(%esp)
    1d1a:	e8 89 1e 00 00       	call   3ba8 <unlink>
  if(mkdir("dd") != 0){
    1d1f:	c7 04 24 98 49 00 00 	movl   $0x4998,(%esp)
    1d26:	e8 95 1e 00 00       	call   3bc0 <mkdir>
    1d2b:	83 c4 10             	add    $0x10,%esp
    1d2e:	85 c0                	test   %eax,%eax
    1d30:	0f 85 b3 05 00 00    	jne    22e9 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d36:	83 ec 08             	sub    $0x8,%esp
    1d39:	68 02 02 00 00       	push   $0x202
    1d3e:	68 d1 48 00 00       	push   $0x48d1
    1d43:	e8 50 1e 00 00       	call   3b98 <open>
  if(fd < 0){
    1d48:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d4b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d4d:	85 c0                	test   %eax,%eax
    1d4f:	0f 88 81 05 00 00    	js     22d6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d55:	83 ec 04             	sub    $0x4,%esp
    1d58:	6a 02                	push   $0x2
    1d5a:	68 fb 48 00 00       	push   $0x48fb
    1d5f:	50                   	push   %eax
    1d60:	e8 13 1e 00 00       	call   3b78 <write>
  close(fd);
    1d65:	89 1c 24             	mov    %ebx,(%esp)
    1d68:	e8 13 1e 00 00       	call   3b80 <close>
  if(unlink("dd") >= 0){
    1d6d:	c7 04 24 98 49 00 00 	movl   $0x4998,(%esp)
    1d74:	e8 2f 1e 00 00       	call   3ba8 <unlink>
    1d79:	83 c4 10             	add    $0x10,%esp
    1d7c:	85 c0                	test   %eax,%eax
    1d7e:	0f 89 3f 05 00 00    	jns    22c3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1d84:	83 ec 0c             	sub    $0xc,%esp
    1d87:	68 ac 48 00 00       	push   $0x48ac
    1d8c:	e8 2f 1e 00 00       	call   3bc0 <mkdir>
    1d91:	83 c4 10             	add    $0x10,%esp
    1d94:	85 c0                	test   %eax,%eax
    1d96:	0f 85 14 05 00 00    	jne    22b0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1d9c:	83 ec 08             	sub    $0x8,%esp
    1d9f:	68 02 02 00 00       	push   $0x202
    1da4:	68 ce 48 00 00       	push   $0x48ce
    1da9:	e8 ea 1d 00 00       	call   3b98 <open>
  if(fd < 0){
    1dae:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1db1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1db3:	85 c0                	test   %eax,%eax
    1db5:	0f 88 24 04 00 00    	js     21df <subdir+0x4df>
  write(fd, "FF", 2);
    1dbb:	83 ec 04             	sub    $0x4,%esp
    1dbe:	6a 02                	push   $0x2
    1dc0:	68 ef 48 00 00       	push   $0x48ef
    1dc5:	50                   	push   %eax
    1dc6:	e8 ad 1d 00 00       	call   3b78 <write>
  close(fd);
    1dcb:	89 1c 24             	mov    %ebx,(%esp)
    1dce:	e8 ad 1d 00 00       	call   3b80 <close>
  fd = open("dd/dd/../ff", 0);
    1dd3:	58                   	pop    %eax
    1dd4:	5a                   	pop    %edx
    1dd5:	6a 00                	push   $0x0
    1dd7:	68 f2 48 00 00       	push   $0x48f2
    1ddc:	e8 b7 1d 00 00       	call   3b98 <open>
  if(fd < 0){
    1de1:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1de4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1de6:	85 c0                	test   %eax,%eax
    1de8:	0f 88 de 03 00 00    	js     21cc <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1dee:	83 ec 04             	sub    $0x4,%esp
    1df1:	68 00 20 00 00       	push   $0x2000
    1df6:	68 20 8a 00 00       	push   $0x8a20
    1dfb:	50                   	push   %eax
    1dfc:	e8 6f 1d 00 00       	call   3b70 <read>
  if(cc != 2 || buf[0] != 'f'){
    1e01:	83 c4 10             	add    $0x10,%esp
    1e04:	83 f8 02             	cmp    $0x2,%eax
    1e07:	0f 85 3a 03 00 00    	jne    2147 <subdir+0x447>
    1e0d:	80 3d 20 8a 00 00 66 	cmpb   $0x66,0x8a20
    1e14:	0f 85 2d 03 00 00    	jne    2147 <subdir+0x447>
  close(fd);
    1e1a:	83 ec 0c             	sub    $0xc,%esp
    1e1d:	53                   	push   %ebx
    1e1e:	e8 5d 1d 00 00       	call   3b80 <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e23:	59                   	pop    %ecx
    1e24:	5b                   	pop    %ebx
    1e25:	68 32 49 00 00       	push   $0x4932
    1e2a:	68 ce 48 00 00       	push   $0x48ce
    1e2f:	e8 84 1d 00 00       	call   3bb8 <link>
    1e34:	83 c4 10             	add    $0x10,%esp
    1e37:	85 c0                	test   %eax,%eax
    1e39:	0f 85 c6 03 00 00    	jne    2205 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e3f:	83 ec 0c             	sub    $0xc,%esp
    1e42:	68 ce 48 00 00       	push   $0x48ce
    1e47:	e8 5c 1d 00 00       	call   3ba8 <unlink>
    1e4c:	83 c4 10             	add    $0x10,%esp
    1e4f:	85 c0                	test   %eax,%eax
    1e51:	0f 85 16 03 00 00    	jne    216d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e57:	83 ec 08             	sub    $0x8,%esp
    1e5a:	6a 00                	push   $0x0
    1e5c:	68 ce 48 00 00       	push   $0x48ce
    1e61:	e8 32 1d 00 00       	call   3b98 <open>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	85 c0                	test   %eax,%eax
    1e6b:	0f 89 2c 04 00 00    	jns    229d <subdir+0x59d>
  if(chdir("dd") != 0){
    1e71:	83 ec 0c             	sub    $0xc,%esp
    1e74:	68 98 49 00 00       	push   $0x4998
    1e79:	e8 4a 1d 00 00       	call   3bc8 <chdir>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	85 c0                	test   %eax,%eax
    1e83:	0f 85 01 04 00 00    	jne    228a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1e89:	83 ec 0c             	sub    $0xc,%esp
    1e8c:	68 66 49 00 00       	push   $0x4966
    1e91:	e8 32 1d 00 00       	call   3bc8 <chdir>
    1e96:	83 c4 10             	add    $0x10,%esp
    1e99:	85 c0                	test   %eax,%eax
    1e9b:	0f 85 b9 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1ea1:	83 ec 0c             	sub    $0xc,%esp
    1ea4:	68 8c 49 00 00       	push   $0x498c
    1ea9:	e8 1a 1d 00 00       	call   3bc8 <chdir>
    1eae:	83 c4 10             	add    $0x10,%esp
    1eb1:	85 c0                	test   %eax,%eax
    1eb3:	0f 85 a1 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("./..") != 0){
    1eb9:	83 ec 0c             	sub    $0xc,%esp
    1ebc:	68 9b 49 00 00       	push   $0x499b
    1ec1:	e8 02 1d 00 00       	call   3bc8 <chdir>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	85 c0                	test   %eax,%eax
    1ecb:	0f 85 21 03 00 00    	jne    21f2 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ed1:	83 ec 08             	sub    $0x8,%esp
    1ed4:	6a 00                	push   $0x0
    1ed6:	68 32 49 00 00       	push   $0x4932
    1edb:	e8 b8 1c 00 00       	call   3b98 <open>
  if(fd < 0){
    1ee0:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    1ee3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ee5:	85 c0                	test   %eax,%eax
    1ee7:	0f 88 e0 04 00 00    	js     23cd <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1eed:	83 ec 04             	sub    $0x4,%esp
    1ef0:	68 00 20 00 00       	push   $0x2000
    1ef5:	68 20 8a 00 00       	push   $0x8a20
    1efa:	50                   	push   %eax
    1efb:	e8 70 1c 00 00       	call   3b70 <read>
    1f00:	83 c4 10             	add    $0x10,%esp
    1f03:	83 f8 02             	cmp    $0x2,%eax
    1f06:	0f 85 ae 04 00 00    	jne    23ba <subdir+0x6ba>
  close(fd);
    1f0c:	83 ec 0c             	sub    $0xc,%esp
    1f0f:	53                   	push   %ebx
    1f10:	e8 6b 1c 00 00       	call   3b80 <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f15:	58                   	pop    %eax
    1f16:	5a                   	pop    %edx
    1f17:	6a 00                	push   $0x0
    1f19:	68 ce 48 00 00       	push   $0x48ce
    1f1e:	e8 75 1c 00 00       	call   3b98 <open>
    1f23:	83 c4 10             	add    $0x10,%esp
    1f26:	85 c0                	test   %eax,%eax
    1f28:	0f 89 65 02 00 00    	jns    2193 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f2e:	83 ec 08             	sub    $0x8,%esp
    1f31:	68 02 02 00 00       	push   $0x202
    1f36:	68 e6 49 00 00       	push   $0x49e6
    1f3b:	e8 58 1c 00 00       	call   3b98 <open>
    1f40:	83 c4 10             	add    $0x10,%esp
    1f43:	85 c0                	test   %eax,%eax
    1f45:	0f 89 35 02 00 00    	jns    2180 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f4b:	83 ec 08             	sub    $0x8,%esp
    1f4e:	68 02 02 00 00       	push   $0x202
    1f53:	68 0b 4a 00 00       	push   $0x4a0b
    1f58:	e8 3b 1c 00 00       	call   3b98 <open>
    1f5d:	83 c4 10             	add    $0x10,%esp
    1f60:	85 c0                	test   %eax,%eax
    1f62:	0f 89 0f 03 00 00    	jns    2277 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f68:	83 ec 08             	sub    $0x8,%esp
    1f6b:	68 00 02 00 00       	push   $0x200
    1f70:	68 98 49 00 00       	push   $0x4998
    1f75:	e8 1e 1c 00 00       	call   3b98 <open>
    1f7a:	83 c4 10             	add    $0x10,%esp
    1f7d:	85 c0                	test   %eax,%eax
    1f7f:	0f 89 df 02 00 00    	jns    2264 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1f85:	83 ec 08             	sub    $0x8,%esp
    1f88:	6a 02                	push   $0x2
    1f8a:	68 98 49 00 00       	push   $0x4998
    1f8f:	e8 04 1c 00 00       	call   3b98 <open>
    1f94:	83 c4 10             	add    $0x10,%esp
    1f97:	85 c0                	test   %eax,%eax
    1f99:	0f 89 b2 02 00 00    	jns    2251 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1f9f:	83 ec 08             	sub    $0x8,%esp
    1fa2:	6a 01                	push   $0x1
    1fa4:	68 98 49 00 00       	push   $0x4998
    1fa9:	e8 ea 1b 00 00       	call   3b98 <open>
    1fae:	83 c4 10             	add    $0x10,%esp
    1fb1:	85 c0                	test   %eax,%eax
    1fb3:	0f 89 85 02 00 00    	jns    223e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fb9:	83 ec 08             	sub    $0x8,%esp
    1fbc:	68 7a 4a 00 00       	push   $0x4a7a
    1fc1:	68 e6 49 00 00       	push   $0x49e6
    1fc6:	e8 ed 1b 00 00       	call   3bb8 <link>
    1fcb:	83 c4 10             	add    $0x10,%esp
    1fce:	85 c0                	test   %eax,%eax
    1fd0:	0f 84 55 02 00 00    	je     222b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1fd6:	83 ec 08             	sub    $0x8,%esp
    1fd9:	68 7a 4a 00 00       	push   $0x4a7a
    1fde:	68 0b 4a 00 00       	push   $0x4a0b
    1fe3:	e8 d0 1b 00 00       	call   3bb8 <link>
    1fe8:	83 c4 10             	add    $0x10,%esp
    1feb:	85 c0                	test   %eax,%eax
    1fed:	0f 84 25 02 00 00    	je     2218 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    1ff3:	83 ec 08             	sub    $0x8,%esp
    1ff6:	68 32 49 00 00       	push   $0x4932
    1ffb:	68 d1 48 00 00       	push   $0x48d1
    2000:	e8 b3 1b 00 00       	call   3bb8 <link>
    2005:	83 c4 10             	add    $0x10,%esp
    2008:	85 c0                	test   %eax,%eax
    200a:	0f 84 a9 01 00 00    	je     21b9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2010:	83 ec 0c             	sub    $0xc,%esp
    2013:	68 e6 49 00 00       	push   $0x49e6
    2018:	e8 a3 1b 00 00       	call   3bc0 <mkdir>
    201d:	83 c4 10             	add    $0x10,%esp
    2020:	85 c0                	test   %eax,%eax
    2022:	0f 84 7e 01 00 00    	je     21a6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2028:	83 ec 0c             	sub    $0xc,%esp
    202b:	68 0b 4a 00 00       	push   $0x4a0b
    2030:	e8 8b 1b 00 00       	call   3bc0 <mkdir>
    2035:	83 c4 10             	add    $0x10,%esp
    2038:	85 c0                	test   %eax,%eax
    203a:	0f 84 67 03 00 00    	je     23a7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2040:	83 ec 0c             	sub    $0xc,%esp
    2043:	68 32 49 00 00       	push   $0x4932
    2048:	e8 73 1b 00 00       	call   3bc0 <mkdir>
    204d:	83 c4 10             	add    $0x10,%esp
    2050:	85 c0                	test   %eax,%eax
    2052:	0f 84 3c 03 00 00    	je     2394 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2058:	83 ec 0c             	sub    $0xc,%esp
    205b:	68 0b 4a 00 00       	push   $0x4a0b
    2060:	e8 43 1b 00 00       	call   3ba8 <unlink>
    2065:	83 c4 10             	add    $0x10,%esp
    2068:	85 c0                	test   %eax,%eax
    206a:	0f 84 11 03 00 00    	je     2381 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2070:	83 ec 0c             	sub    $0xc,%esp
    2073:	68 e6 49 00 00       	push   $0x49e6
    2078:	e8 2b 1b 00 00       	call   3ba8 <unlink>
    207d:	83 c4 10             	add    $0x10,%esp
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 84 e6 02 00 00    	je     236e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    2088:	83 ec 0c             	sub    $0xc,%esp
    208b:	68 d1 48 00 00       	push   $0x48d1
    2090:	e8 33 1b 00 00       	call   3bc8 <chdir>
    2095:	83 c4 10             	add    $0x10,%esp
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 84 bb 02 00 00    	je     235b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20a0:	83 ec 0c             	sub    $0xc,%esp
    20a3:	68 7d 4a 00 00       	push   $0x4a7d
    20a8:	e8 1b 1b 00 00       	call   3bc8 <chdir>
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 84 90 02 00 00    	je     2348 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20b8:	83 ec 0c             	sub    $0xc,%esp
    20bb:	68 32 49 00 00       	push   $0x4932
    20c0:	e8 e3 1a 00 00       	call   3ba8 <unlink>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	0f 85 9d 00 00 00    	jne    216d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20d0:	83 ec 0c             	sub    $0xc,%esp
    20d3:	68 d1 48 00 00       	push   $0x48d1
    20d8:	e8 cb 1a 00 00       	call   3ba8 <unlink>
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 85 4d 02 00 00    	jne    2335 <subdir+0x635>
  if(unlink("dd") == 0){
    20e8:	83 ec 0c             	sub    $0xc,%esp
    20eb:	68 98 49 00 00       	push   $0x4998
    20f0:	e8 b3 1a 00 00       	call   3ba8 <unlink>
    20f5:	83 c4 10             	add    $0x10,%esp
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 84 22 02 00 00    	je     2322 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2100:	83 ec 0c             	sub    $0xc,%esp
    2103:	68 ad 48 00 00       	push   $0x48ad
    2108:	e8 9b 1a 00 00       	call   3ba8 <unlink>
    210d:	83 c4 10             	add    $0x10,%esp
    2110:	85 c0                	test   %eax,%eax
    2112:	0f 88 f7 01 00 00    	js     230f <subdir+0x60f>
  if(unlink("dd") < 0){
    2118:	83 ec 0c             	sub    $0xc,%esp
    211b:	68 98 49 00 00       	push   $0x4998
    2120:	e8 83 1a 00 00       	call   3ba8 <unlink>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	0f 88 cc 01 00 00    	js     22fc <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2130:	83 ec 08             	sub    $0x8,%esp
    2133:	68 7a 4b 00 00       	push   $0x4b7a
    2138:	6a 01                	push   $0x1
    213a:	e8 81 1b 00 00       	call   3cc0 <printf>
}
    213f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2142:	83 c4 10             	add    $0x10,%esp
    2145:	c9                   	leave
    2146:	c3                   	ret
    printf(1, "dd/dd/../ff wrong content\n");
    2147:	50                   	push   %eax
    2148:	50                   	push   %eax
    2149:	68 17 49 00 00       	push   $0x4917
    214e:	6a 01                	push   $0x1
    2150:	e8 6b 1b 00 00       	call   3cc0 <printf>
    exit();
    2155:	e8 fe 19 00 00       	call   3b58 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    215a:	50                   	push   %eax
    215b:	50                   	push   %eax
    215c:	68 72 49 00 00       	push   $0x4972
    2161:	6a 01                	push   $0x1
    2163:	e8 58 1b 00 00       	call   3cc0 <printf>
    exit();
    2168:	e8 eb 19 00 00       	call   3b58 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    216d:	50                   	push   %eax
    216e:	50                   	push   %eax
    216f:	68 3d 49 00 00       	push   $0x493d
    2174:	6a 01                	push   $0x1
    2176:	e8 45 1b 00 00       	call   3cc0 <printf>
    exit();
    217b:	e8 d8 19 00 00       	call   3b58 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2180:	51                   	push   %ecx
    2181:	51                   	push   %ecx
    2182:	68 ef 49 00 00       	push   $0x49ef
    2187:	6a 01                	push   $0x1
    2189:	e8 32 1b 00 00       	call   3cc0 <printf>
    exit();
    218e:	e8 c5 19 00 00       	call   3b58 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2193:	53                   	push   %ebx
    2194:	53                   	push   %ebx
    2195:	68 dc 53 00 00       	push   $0x53dc
    219a:	6a 01                	push   $0x1
    219c:	e8 1f 1b 00 00       	call   3cc0 <printf>
    exit();
    21a1:	e8 b2 19 00 00       	call   3b58 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21a6:	51                   	push   %ecx
    21a7:	51                   	push   %ecx
    21a8:	68 83 4a 00 00       	push   $0x4a83
    21ad:	6a 01                	push   $0x1
    21af:	e8 0c 1b 00 00       	call   3cc0 <printf>
    exit();
    21b4:	e8 9f 19 00 00       	call   3b58 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21b9:	53                   	push   %ebx
    21ba:	53                   	push   %ebx
    21bb:	68 4c 54 00 00       	push   $0x544c
    21c0:	6a 01                	push   $0x1
    21c2:	e8 f9 1a 00 00       	call   3cc0 <printf>
    exit();
    21c7:	e8 8c 19 00 00       	call   3b58 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21cc:	50                   	push   %eax
    21cd:	50                   	push   %eax
    21ce:	68 fe 48 00 00       	push   $0x48fe
    21d3:	6a 01                	push   $0x1
    21d5:	e8 e6 1a 00 00       	call   3cc0 <printf>
    exit();
    21da:	e8 79 19 00 00       	call   3b58 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21df:	51                   	push   %ecx
    21e0:	51                   	push   %ecx
    21e1:	68 d7 48 00 00       	push   $0x48d7
    21e6:	6a 01                	push   $0x1
    21e8:	e8 d3 1a 00 00       	call   3cc0 <printf>
    exit();
    21ed:	e8 66 19 00 00       	call   3b58 <exit>
    printf(1, "chdir ./.. failed\n");
    21f2:	50                   	push   %eax
    21f3:	50                   	push   %eax
    21f4:	68 a0 49 00 00       	push   $0x49a0
    21f9:	6a 01                	push   $0x1
    21fb:	e8 c0 1a 00 00       	call   3cc0 <printf>
    exit();
    2200:	e8 53 19 00 00       	call   3b58 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2205:	52                   	push   %edx
    2206:	52                   	push   %edx
    2207:	68 94 53 00 00       	push   $0x5394
    220c:	6a 01                	push   $0x1
    220e:	e8 ad 1a 00 00       	call   3cc0 <printf>
    exit();
    2213:	e8 40 19 00 00       	call   3b58 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2218:	50                   	push   %eax
    2219:	50                   	push   %eax
    221a:	68 28 54 00 00       	push   $0x5428
    221f:	6a 01                	push   $0x1
    2221:	e8 9a 1a 00 00       	call   3cc0 <printf>
    exit();
    2226:	e8 2d 19 00 00       	call   3b58 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    222b:	50                   	push   %eax
    222c:	50                   	push   %eax
    222d:	68 04 54 00 00       	push   $0x5404
    2232:	6a 01                	push   $0x1
    2234:	e8 87 1a 00 00       	call   3cc0 <printf>
    exit();
    2239:	e8 1a 19 00 00       	call   3b58 <exit>
    printf(1, "open dd wronly succeeded!\n");
    223e:	50                   	push   %eax
    223f:	50                   	push   %eax
    2240:	68 5f 4a 00 00       	push   $0x4a5f
    2245:	6a 01                	push   $0x1
    2247:	e8 74 1a 00 00       	call   3cc0 <printf>
    exit();
    224c:	e8 07 19 00 00       	call   3b58 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2251:	50                   	push   %eax
    2252:	50                   	push   %eax
    2253:	68 46 4a 00 00       	push   $0x4a46
    2258:	6a 01                	push   $0x1
    225a:	e8 61 1a 00 00       	call   3cc0 <printf>
    exit();
    225f:	e8 f4 18 00 00       	call   3b58 <exit>
    printf(1, "create dd succeeded!\n");
    2264:	50                   	push   %eax
    2265:	50                   	push   %eax
    2266:	68 30 4a 00 00       	push   $0x4a30
    226b:	6a 01                	push   $0x1
    226d:	e8 4e 1a 00 00       	call   3cc0 <printf>
    exit();
    2272:	e8 e1 18 00 00       	call   3b58 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2277:	52                   	push   %edx
    2278:	52                   	push   %edx
    2279:	68 14 4a 00 00       	push   $0x4a14
    227e:	6a 01                	push   $0x1
    2280:	e8 3b 1a 00 00       	call   3cc0 <printf>
    exit();
    2285:	e8 ce 18 00 00       	call   3b58 <exit>
    printf(1, "chdir dd failed\n");
    228a:	50                   	push   %eax
    228b:	50                   	push   %eax
    228c:	68 55 49 00 00       	push   $0x4955
    2291:	6a 01                	push   $0x1
    2293:	e8 28 1a 00 00       	call   3cc0 <printf>
    exit();
    2298:	e8 bb 18 00 00       	call   3b58 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    229d:	50                   	push   %eax
    229e:	50                   	push   %eax
    229f:	68 b8 53 00 00       	push   $0x53b8
    22a4:	6a 01                	push   $0x1
    22a6:	e8 15 1a 00 00       	call   3cc0 <printf>
    exit();
    22ab:	e8 a8 18 00 00       	call   3b58 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22b0:	53                   	push   %ebx
    22b1:	53                   	push   %ebx
    22b2:	68 b3 48 00 00       	push   $0x48b3
    22b7:	6a 01                	push   $0x1
    22b9:	e8 02 1a 00 00       	call   3cc0 <printf>
    exit();
    22be:	e8 95 18 00 00       	call   3b58 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22c3:	50                   	push   %eax
    22c4:	50                   	push   %eax
    22c5:	68 6c 53 00 00       	push   $0x536c
    22ca:	6a 01                	push   $0x1
    22cc:	e8 ef 19 00 00       	call   3cc0 <printf>
    exit();
    22d1:	e8 82 18 00 00       	call   3b58 <exit>
    printf(1, "create dd/ff failed\n");
    22d6:	50                   	push   %eax
    22d7:	50                   	push   %eax
    22d8:	68 97 48 00 00       	push   $0x4897
    22dd:	6a 01                	push   $0x1
    22df:	e8 dc 19 00 00       	call   3cc0 <printf>
    exit();
    22e4:	e8 6f 18 00 00       	call   3b58 <exit>
    printf(1, "subdir mkdir dd failed\n");
    22e9:	50                   	push   %eax
    22ea:	50                   	push   %eax
    22eb:	68 7f 48 00 00       	push   $0x487f
    22f0:	6a 01                	push   $0x1
    22f2:	e8 c9 19 00 00       	call   3cc0 <printf>
    exit();
    22f7:	e8 5c 18 00 00       	call   3b58 <exit>
    printf(1, "unlink dd failed\n");
    22fc:	50                   	push   %eax
    22fd:	50                   	push   %eax
    22fe:	68 68 4b 00 00       	push   $0x4b68
    2303:	6a 01                	push   $0x1
    2305:	e8 b6 19 00 00       	call   3cc0 <printf>
    exit();
    230a:	e8 49 18 00 00       	call   3b58 <exit>
    printf(1, "unlink dd/dd failed\n");
    230f:	52                   	push   %edx
    2310:	52                   	push   %edx
    2311:	68 53 4b 00 00       	push   $0x4b53
    2316:	6a 01                	push   $0x1
    2318:	e8 a3 19 00 00       	call   3cc0 <printf>
    exit();
    231d:	e8 36 18 00 00       	call   3b58 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2322:	51                   	push   %ecx
    2323:	51                   	push   %ecx
    2324:	68 70 54 00 00       	push   $0x5470
    2329:	6a 01                	push   $0x1
    232b:	e8 90 19 00 00       	call   3cc0 <printf>
    exit();
    2330:	e8 23 18 00 00       	call   3b58 <exit>
    printf(1, "unlink dd/ff failed\n");
    2335:	53                   	push   %ebx
    2336:	53                   	push   %ebx
    2337:	68 3e 4b 00 00       	push   $0x4b3e
    233c:	6a 01                	push   $0x1
    233e:	e8 7d 19 00 00       	call   3cc0 <printf>
    exit();
    2343:	e8 10 18 00 00       	call   3b58 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2348:	50                   	push   %eax
    2349:	50                   	push   %eax
    234a:	68 26 4b 00 00       	push   $0x4b26
    234f:	6a 01                	push   $0x1
    2351:	e8 6a 19 00 00       	call   3cc0 <printf>
    exit();
    2356:	e8 fd 17 00 00       	call   3b58 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    235b:	50                   	push   %eax
    235c:	50                   	push   %eax
    235d:	68 0e 4b 00 00       	push   $0x4b0e
    2362:	6a 01                	push   $0x1
    2364:	e8 57 19 00 00       	call   3cc0 <printf>
    exit();
    2369:	e8 ea 17 00 00       	call   3b58 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    236e:	50                   	push   %eax
    236f:	50                   	push   %eax
    2370:	68 f2 4a 00 00       	push   $0x4af2
    2375:	6a 01                	push   $0x1
    2377:	e8 44 19 00 00       	call   3cc0 <printf>
    exit();
    237c:	e8 d7 17 00 00       	call   3b58 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2381:	50                   	push   %eax
    2382:	50                   	push   %eax
    2383:	68 d6 4a 00 00       	push   $0x4ad6
    2388:	6a 01                	push   $0x1
    238a:	e8 31 19 00 00       	call   3cc0 <printf>
    exit();
    238f:	e8 c4 17 00 00       	call   3b58 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2394:	50                   	push   %eax
    2395:	50                   	push   %eax
    2396:	68 b9 4a 00 00       	push   $0x4ab9
    239b:	6a 01                	push   $0x1
    239d:	e8 1e 19 00 00       	call   3cc0 <printf>
    exit();
    23a2:	e8 b1 17 00 00       	call   3b58 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23a7:	52                   	push   %edx
    23a8:	52                   	push   %edx
    23a9:	68 9e 4a 00 00       	push   $0x4a9e
    23ae:	6a 01                	push   $0x1
    23b0:	e8 0b 19 00 00       	call   3cc0 <printf>
    exit();
    23b5:	e8 9e 17 00 00       	call   3b58 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23ba:	51                   	push   %ecx
    23bb:	51                   	push   %ecx
    23bc:	68 cb 49 00 00       	push   $0x49cb
    23c1:	6a 01                	push   $0x1
    23c3:	e8 f8 18 00 00       	call   3cc0 <printf>
    exit();
    23c8:	e8 8b 17 00 00       	call   3b58 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23cd:	53                   	push   %ebx
    23ce:	53                   	push   %ebx
    23cf:	68 b3 49 00 00       	push   $0x49b3
    23d4:	6a 01                	push   $0x1
    23d6:	e8 e5 18 00 00       	call   3cc0 <printf>
    exit();
    23db:	e8 78 17 00 00       	call   3b58 <exit>

000023e0 <bigwrite>:
{
    23e0:	55                   	push   %ebp
    23e1:	89 e5                	mov    %esp,%ebp
    23e3:	56                   	push   %esi
    23e4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    23e5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    23ea:	83 ec 08             	sub    $0x8,%esp
    23ed:	68 85 4b 00 00       	push   $0x4b85
    23f2:	6a 01                	push   $0x1
    23f4:	e8 c7 18 00 00       	call   3cc0 <printf>
  unlink("bigwrite");
    23f9:	c7 04 24 94 4b 00 00 	movl   $0x4b94,(%esp)
    2400:	e8 a3 17 00 00       	call   3ba8 <unlink>
    2405:	83 c4 10             	add    $0x10,%esp
    2408:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    240f:	00 
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2410:	83 ec 08             	sub    $0x8,%esp
    2413:	68 02 02 00 00       	push   $0x202
    2418:	68 94 4b 00 00       	push   $0x4b94
    241d:	e8 76 17 00 00       	call   3b98 <open>
    if(fd < 0){
    2422:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2425:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2427:	85 c0                	test   %eax,%eax
    2429:	78 7e                	js     24a9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    242b:	83 ec 04             	sub    $0x4,%esp
    242e:	53                   	push   %ebx
    242f:	68 20 8a 00 00       	push   $0x8a20
    2434:	50                   	push   %eax
    2435:	e8 3e 17 00 00       	call   3b78 <write>
      if(cc != sz){
    243a:	83 c4 10             	add    $0x10,%esp
    243d:	39 c3                	cmp    %eax,%ebx
    243f:	75 55                	jne    2496 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    2441:	83 ec 04             	sub    $0x4,%esp
    2444:	53                   	push   %ebx
    2445:	68 20 8a 00 00       	push   $0x8a20
    244a:	56                   	push   %esi
    244b:	e8 28 17 00 00       	call   3b78 <write>
      if(cc != sz){
    2450:	83 c4 10             	add    $0x10,%esp
    2453:	39 c3                	cmp    %eax,%ebx
    2455:	75 3f                	jne    2496 <bigwrite+0xb6>
    close(fd);
    2457:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    245a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2460:	56                   	push   %esi
    2461:	e8 1a 17 00 00       	call   3b80 <close>
    unlink("bigwrite");
    2466:	c7 04 24 94 4b 00 00 	movl   $0x4b94,(%esp)
    246d:	e8 36 17 00 00       	call   3ba8 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2472:	83 c4 10             	add    $0x10,%esp
    2475:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    247b:	75 93                	jne    2410 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    247d:	83 ec 08             	sub    $0x8,%esp
    2480:	68 c7 4b 00 00       	push   $0x4bc7
    2485:	6a 01                	push   $0x1
    2487:	e8 34 18 00 00       	call   3cc0 <printf>
}
    248c:	83 c4 10             	add    $0x10,%esp
    248f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2492:	5b                   	pop    %ebx
    2493:	5e                   	pop    %esi
    2494:	5d                   	pop    %ebp
    2495:	c3                   	ret
        printf(1, "write(%d) ret %d\n", sz, cc);
    2496:	50                   	push   %eax
    2497:	53                   	push   %ebx
    2498:	68 b5 4b 00 00       	push   $0x4bb5
    249d:	6a 01                	push   $0x1
    249f:	e8 1c 18 00 00       	call   3cc0 <printf>
        exit();
    24a4:	e8 af 16 00 00       	call   3b58 <exit>
      printf(1, "cannot create bigwrite\n");
    24a9:	83 ec 08             	sub    $0x8,%esp
    24ac:	68 9d 4b 00 00       	push   $0x4b9d
    24b1:	6a 01                	push   $0x1
    24b3:	e8 08 18 00 00       	call   3cc0 <printf>
      exit();
    24b8:	e8 9b 16 00 00       	call   3b58 <exit>
    24bd:	8d 76 00             	lea    0x0(%esi),%esi

000024c0 <bigfile>:
{
    24c0:	55                   	push   %ebp
    24c1:	89 e5                	mov    %esp,%ebp
    24c3:	57                   	push   %edi
    24c4:	56                   	push   %esi
    24c5:	53                   	push   %ebx
    24c6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24c9:	68 d4 4b 00 00       	push   $0x4bd4
    24ce:	6a 01                	push   $0x1
    24d0:	e8 eb 17 00 00       	call   3cc0 <printf>
  unlink("bigfile");
    24d5:	c7 04 24 f0 4b 00 00 	movl   $0x4bf0,(%esp)
    24dc:	e8 c7 16 00 00       	call   3ba8 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    24e1:	58                   	pop    %eax
    24e2:	5a                   	pop    %edx
    24e3:	68 02 02 00 00       	push   $0x202
    24e8:	68 f0 4b 00 00       	push   $0x4bf0
    24ed:	e8 a6 16 00 00       	call   3b98 <open>
  if(fd < 0){
    24f2:	83 c4 10             	add    $0x10,%esp
    24f5:	85 c0                	test   %eax,%eax
    24f7:	0f 88 6e 01 00 00    	js     266b <bigfile+0x1ab>
    24fd:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    24ff:	31 db                	xor    %ebx,%ebx
    2501:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2508:	00 
    2509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2510:	83 ec 04             	sub    $0x4,%esp
    2513:	68 58 02 00 00       	push   $0x258
    2518:	53                   	push   %ebx
    2519:	68 20 8a 00 00       	push   $0x8a20
    251e:	e8 6d 12 00 00       	call   3790 <memset>
    if(write(fd, buf, 600) != 600){
    2523:	83 c4 0c             	add    $0xc,%esp
    2526:	68 58 02 00 00       	push   $0x258
    252b:	68 20 8a 00 00       	push   $0x8a20
    2530:	56                   	push   %esi
    2531:	e8 42 16 00 00       	call   3b78 <write>
    2536:	83 c4 10             	add    $0x10,%esp
    2539:	3d 58 02 00 00       	cmp    $0x258,%eax
    253e:	0f 85 00 01 00 00    	jne    2644 <bigfile+0x184>
  for(i = 0; i < 20; i++){
    2544:	83 c3 01             	add    $0x1,%ebx
    2547:	83 fb 14             	cmp    $0x14,%ebx
    254a:	75 c4                	jne    2510 <bigfile+0x50>
  close(fd);
    254c:	83 ec 0c             	sub    $0xc,%esp
    254f:	56                   	push   %esi
    2550:	e8 2b 16 00 00       	call   3b80 <close>
  fd = open("bigfile", 0);
    2555:	5e                   	pop    %esi
    2556:	5f                   	pop    %edi
    2557:	6a 00                	push   $0x0
    2559:	68 f0 4b 00 00       	push   $0x4bf0
    255e:	e8 35 16 00 00       	call   3b98 <open>
  if(fd < 0){
    2563:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    2566:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2568:	85 c0                	test   %eax,%eax
    256a:	0f 88 e8 00 00 00    	js     2658 <bigfile+0x198>
  total = 0;
    2570:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    2572:	31 ff                	xor    %edi,%edi
    2574:	eb 38                	jmp    25ae <bigfile+0xee>
    2576:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    257d:	00 
    257e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2580:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2585:	0f 85 91 00 00 00    	jne    261c <bigfile+0x15c>
    if(buf[0] != i/2 || buf[299] != i/2){
    258b:	89 fa                	mov    %edi,%edx
    258d:	0f be 05 20 8a 00 00 	movsbl 0x8a20,%eax
    2594:	d1 fa                	sar    $1,%edx
    2596:	39 d0                	cmp    %edx,%eax
    2598:	75 6e                	jne    2608 <bigfile+0x148>
    259a:	0f be 15 4b 8b 00 00 	movsbl 0x8b4b,%edx
    25a1:	39 d0                	cmp    %edx,%eax
    25a3:	75 63                	jne    2608 <bigfile+0x148>
    total += cc;
    25a5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25ab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25ae:	83 ec 04             	sub    $0x4,%esp
    25b1:	68 2c 01 00 00       	push   $0x12c
    25b6:	68 20 8a 00 00       	push   $0x8a20
    25bb:	56                   	push   %esi
    25bc:	e8 af 15 00 00       	call   3b70 <read>
    if(cc < 0){
    25c1:	83 c4 10             	add    $0x10,%esp
    25c4:	85 c0                	test   %eax,%eax
    25c6:	78 68                	js     2630 <bigfile+0x170>
    if(cc == 0)
    25c8:	75 b6                	jne    2580 <bigfile+0xc0>
  close(fd);
    25ca:	83 ec 0c             	sub    $0xc,%esp
    25cd:	56                   	push   %esi
    25ce:	e8 ad 15 00 00       	call   3b80 <close>
  if(total != 20*600){
    25d3:	83 c4 10             	add    $0x10,%esp
    25d6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25dc:	0f 85 9c 00 00 00    	jne    267e <bigfile+0x1be>
  unlink("bigfile");
    25e2:	83 ec 0c             	sub    $0xc,%esp
    25e5:	68 f0 4b 00 00       	push   $0x4bf0
    25ea:	e8 b9 15 00 00       	call   3ba8 <unlink>
  printf(1, "bigfile test ok\n");
    25ef:	58                   	pop    %eax
    25f0:	5a                   	pop    %edx
    25f1:	68 7f 4c 00 00       	push   $0x4c7f
    25f6:	6a 01                	push   $0x1
    25f8:	e8 c3 16 00 00       	call   3cc0 <printf>
}
    25fd:	83 c4 10             	add    $0x10,%esp
    2600:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2603:	5b                   	pop    %ebx
    2604:	5e                   	pop    %esi
    2605:	5f                   	pop    %edi
    2606:	5d                   	pop    %ebp
    2607:	c3                   	ret
      printf(1, "read bigfile wrong data\n");
    2608:	83 ec 08             	sub    $0x8,%esp
    260b:	68 4c 4c 00 00       	push   $0x4c4c
    2610:	6a 01                	push   $0x1
    2612:	e8 a9 16 00 00       	call   3cc0 <printf>
      exit();
    2617:	e8 3c 15 00 00       	call   3b58 <exit>
      printf(1, "short read bigfile\n");
    261c:	83 ec 08             	sub    $0x8,%esp
    261f:	68 38 4c 00 00       	push   $0x4c38
    2624:	6a 01                	push   $0x1
    2626:	e8 95 16 00 00       	call   3cc0 <printf>
      exit();
    262b:	e8 28 15 00 00       	call   3b58 <exit>
      printf(1, "read bigfile failed\n");
    2630:	83 ec 08             	sub    $0x8,%esp
    2633:	68 23 4c 00 00       	push   $0x4c23
    2638:	6a 01                	push   $0x1
    263a:	e8 81 16 00 00       	call   3cc0 <printf>
      exit();
    263f:	e8 14 15 00 00       	call   3b58 <exit>
      printf(1, "write bigfile failed\n");
    2644:	83 ec 08             	sub    $0x8,%esp
    2647:	68 f8 4b 00 00       	push   $0x4bf8
    264c:	6a 01                	push   $0x1
    264e:	e8 6d 16 00 00       	call   3cc0 <printf>
      exit();
    2653:	e8 00 15 00 00       	call   3b58 <exit>
    printf(1, "cannot open bigfile\n");
    2658:	53                   	push   %ebx
    2659:	53                   	push   %ebx
    265a:	68 0e 4c 00 00       	push   $0x4c0e
    265f:	6a 01                	push   $0x1
    2661:	e8 5a 16 00 00       	call   3cc0 <printf>
    exit();
    2666:	e8 ed 14 00 00       	call   3b58 <exit>
    printf(1, "cannot create bigfile");
    266b:	50                   	push   %eax
    266c:	50                   	push   %eax
    266d:	68 e2 4b 00 00       	push   $0x4be2
    2672:	6a 01                	push   $0x1
    2674:	e8 47 16 00 00       	call   3cc0 <printf>
    exit();
    2679:	e8 da 14 00 00       	call   3b58 <exit>
    printf(1, "read bigfile wrong total\n");
    267e:	51                   	push   %ecx
    267f:	51                   	push   %ecx
    2680:	68 65 4c 00 00       	push   $0x4c65
    2685:	6a 01                	push   $0x1
    2687:	e8 34 16 00 00       	call   3cc0 <printf>
    exit();
    268c:	e8 c7 14 00 00       	call   3b58 <exit>
    2691:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2698:	00 
    2699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000026a0 <fourteen>:
{
    26a0:	55                   	push   %ebp
    26a1:	89 e5                	mov    %esp,%ebp
    26a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26a6:	68 90 4c 00 00       	push   $0x4c90
    26ab:	6a 01                	push   $0x1
    26ad:	e8 0e 16 00 00       	call   3cc0 <printf>
  if(mkdir("12345678901234") != 0){
    26b2:	c7 04 24 cb 4c 00 00 	movl   $0x4ccb,(%esp)
    26b9:	e8 02 15 00 00       	call   3bc0 <mkdir>
    26be:	83 c4 10             	add    $0x10,%esp
    26c1:	85 c0                	test   %eax,%eax
    26c3:	0f 85 97 00 00 00    	jne    2760 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26c9:	83 ec 0c             	sub    $0xc,%esp
    26cc:	68 90 54 00 00       	push   $0x5490
    26d1:	e8 ea 14 00 00       	call   3bc0 <mkdir>
    26d6:	83 c4 10             	add    $0x10,%esp
    26d9:	85 c0                	test   %eax,%eax
    26db:	0f 85 de 00 00 00    	jne    27bf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    26e1:	83 ec 08             	sub    $0x8,%esp
    26e4:	68 00 02 00 00       	push   $0x200
    26e9:	68 e0 54 00 00       	push   $0x54e0
    26ee:	e8 a5 14 00 00       	call   3b98 <open>
  if(fd < 0){
    26f3:	83 c4 10             	add    $0x10,%esp
    26f6:	85 c0                	test   %eax,%eax
    26f8:	0f 88 ae 00 00 00    	js     27ac <fourteen+0x10c>
  close(fd);
    26fe:	83 ec 0c             	sub    $0xc,%esp
    2701:	50                   	push   %eax
    2702:	e8 79 14 00 00       	call   3b80 <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2707:	58                   	pop    %eax
    2708:	5a                   	pop    %edx
    2709:	6a 00                	push   $0x0
    270b:	68 50 55 00 00       	push   $0x5550
    2710:	e8 83 14 00 00       	call   3b98 <open>
  if(fd < 0){
    2715:	83 c4 10             	add    $0x10,%esp
    2718:	85 c0                	test   %eax,%eax
    271a:	78 7d                	js     2799 <fourteen+0xf9>
  close(fd);
    271c:	83 ec 0c             	sub    $0xc,%esp
    271f:	50                   	push   %eax
    2720:	e8 5b 14 00 00       	call   3b80 <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2725:	c7 04 24 bc 4c 00 00 	movl   $0x4cbc,(%esp)
    272c:	e8 8f 14 00 00       	call   3bc0 <mkdir>
    2731:	83 c4 10             	add    $0x10,%esp
    2734:	85 c0                	test   %eax,%eax
    2736:	74 4e                	je     2786 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2738:	83 ec 0c             	sub    $0xc,%esp
    273b:	68 ec 55 00 00       	push   $0x55ec
    2740:	e8 7b 14 00 00       	call   3bc0 <mkdir>
    2745:	83 c4 10             	add    $0x10,%esp
    2748:	85 c0                	test   %eax,%eax
    274a:	74 27                	je     2773 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    274c:	83 ec 08             	sub    $0x8,%esp
    274f:	68 da 4c 00 00       	push   $0x4cda
    2754:	6a 01                	push   $0x1
    2756:	e8 65 15 00 00       	call   3cc0 <printf>
}
    275b:	83 c4 10             	add    $0x10,%esp
    275e:	c9                   	leave
    275f:	c3                   	ret
    printf(1, "mkdir 12345678901234 failed\n");
    2760:	50                   	push   %eax
    2761:	50                   	push   %eax
    2762:	68 9f 4c 00 00       	push   $0x4c9f
    2767:	6a 01                	push   $0x1
    2769:	e8 52 15 00 00       	call   3cc0 <printf>
    exit();
    276e:	e8 e5 13 00 00       	call   3b58 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2773:	50                   	push   %eax
    2774:	50                   	push   %eax
    2775:	68 0c 56 00 00       	push   $0x560c
    277a:	6a 01                	push   $0x1
    277c:	e8 3f 15 00 00       	call   3cc0 <printf>
    exit();
    2781:	e8 d2 13 00 00       	call   3b58 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2786:	52                   	push   %edx
    2787:	52                   	push   %edx
    2788:	68 bc 55 00 00       	push   $0x55bc
    278d:	6a 01                	push   $0x1
    278f:	e8 2c 15 00 00       	call   3cc0 <printf>
    exit();
    2794:	e8 bf 13 00 00       	call   3b58 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2799:	51                   	push   %ecx
    279a:	51                   	push   %ecx
    279b:	68 80 55 00 00       	push   $0x5580
    27a0:	6a 01                	push   $0x1
    27a2:	e8 19 15 00 00       	call   3cc0 <printf>
    exit();
    27a7:	e8 ac 13 00 00       	call   3b58 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27ac:	51                   	push   %ecx
    27ad:	51                   	push   %ecx
    27ae:	68 10 55 00 00       	push   $0x5510
    27b3:	6a 01                	push   $0x1
    27b5:	e8 06 15 00 00       	call   3cc0 <printf>
    exit();
    27ba:	e8 99 13 00 00       	call   3b58 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27bf:	50                   	push   %eax
    27c0:	50                   	push   %eax
    27c1:	68 b0 54 00 00       	push   $0x54b0
    27c6:	6a 01                	push   $0x1
    27c8:	e8 f3 14 00 00       	call   3cc0 <printf>
    exit();
    27cd:	e8 86 13 00 00       	call   3b58 <exit>
    27d2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    27d9:	00 
    27da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000027e0 <rmdot>:
{
    27e0:	55                   	push   %ebp
    27e1:	89 e5                	mov    %esp,%ebp
    27e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    27e6:	68 e7 4c 00 00       	push   $0x4ce7
    27eb:	6a 01                	push   $0x1
    27ed:	e8 ce 14 00 00       	call   3cc0 <printf>
  if(mkdir("dots") != 0){
    27f2:	c7 04 24 f3 4c 00 00 	movl   $0x4cf3,(%esp)
    27f9:	e8 c2 13 00 00       	call   3bc0 <mkdir>
    27fe:	83 c4 10             	add    $0x10,%esp
    2801:	85 c0                	test   %eax,%eax
    2803:	0f 85 b0 00 00 00    	jne    28b9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2809:	83 ec 0c             	sub    $0xc,%esp
    280c:	68 f3 4c 00 00       	push   $0x4cf3
    2811:	e8 b2 13 00 00       	call   3bc8 <chdir>
    2816:	83 c4 10             	add    $0x10,%esp
    2819:	85 c0                	test   %eax,%eax
    281b:	0f 85 1d 01 00 00    	jne    293e <rmdot+0x15e>
  if(unlink(".") == 0){
    2821:	83 ec 0c             	sub    $0xc,%esp
    2824:	68 9e 49 00 00       	push   $0x499e
    2829:	e8 7a 13 00 00       	call   3ba8 <unlink>
    282e:	83 c4 10             	add    $0x10,%esp
    2831:	85 c0                	test   %eax,%eax
    2833:	0f 84 f2 00 00 00    	je     292b <rmdot+0x14b>
  if(unlink("..") == 0){
    2839:	83 ec 0c             	sub    $0xc,%esp
    283c:	68 9d 49 00 00       	push   $0x499d
    2841:	e8 62 13 00 00       	call   3ba8 <unlink>
    2846:	83 c4 10             	add    $0x10,%esp
    2849:	85 c0                	test   %eax,%eax
    284b:	0f 84 c7 00 00 00    	je     2918 <rmdot+0x138>
  if(chdir("/") != 0){
    2851:	83 ec 0c             	sub    $0xc,%esp
    2854:	68 71 41 00 00       	push   $0x4171
    2859:	e8 6a 13 00 00       	call   3bc8 <chdir>
    285e:	83 c4 10             	add    $0x10,%esp
    2861:	85 c0                	test   %eax,%eax
    2863:	0f 85 9c 00 00 00    	jne    2905 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2869:	83 ec 0c             	sub    $0xc,%esp
    286c:	68 3b 4d 00 00       	push   $0x4d3b
    2871:	e8 32 13 00 00       	call   3ba8 <unlink>
    2876:	83 c4 10             	add    $0x10,%esp
    2879:	85 c0                	test   %eax,%eax
    287b:	74 75                	je     28f2 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    287d:	83 ec 0c             	sub    $0xc,%esp
    2880:	68 59 4d 00 00       	push   $0x4d59
    2885:	e8 1e 13 00 00       	call   3ba8 <unlink>
    288a:	83 c4 10             	add    $0x10,%esp
    288d:	85 c0                	test   %eax,%eax
    288f:	74 4e                	je     28df <rmdot+0xff>
  if(unlink("dots") != 0){
    2891:	83 ec 0c             	sub    $0xc,%esp
    2894:	68 f3 4c 00 00       	push   $0x4cf3
    2899:	e8 0a 13 00 00       	call   3ba8 <unlink>
    289e:	83 c4 10             	add    $0x10,%esp
    28a1:	85 c0                	test   %eax,%eax
    28a3:	75 27                	jne    28cc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28a5:	83 ec 08             	sub    $0x8,%esp
    28a8:	68 8e 4d 00 00       	push   $0x4d8e
    28ad:	6a 01                	push   $0x1
    28af:	e8 0c 14 00 00       	call   3cc0 <printf>
}
    28b4:	83 c4 10             	add    $0x10,%esp
    28b7:	c9                   	leave
    28b8:	c3                   	ret
    printf(1, "mkdir dots failed\n");
    28b9:	50                   	push   %eax
    28ba:	50                   	push   %eax
    28bb:	68 f8 4c 00 00       	push   $0x4cf8
    28c0:	6a 01                	push   $0x1
    28c2:	e8 f9 13 00 00       	call   3cc0 <printf>
    exit();
    28c7:	e8 8c 12 00 00       	call   3b58 <exit>
    printf(1, "unlink dots failed!\n");
    28cc:	50                   	push   %eax
    28cd:	50                   	push   %eax
    28ce:	68 79 4d 00 00       	push   $0x4d79
    28d3:	6a 01                	push   $0x1
    28d5:	e8 e6 13 00 00       	call   3cc0 <printf>
    exit();
    28da:	e8 79 12 00 00       	call   3b58 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28df:	52                   	push   %edx
    28e0:	52                   	push   %edx
    28e1:	68 61 4d 00 00       	push   $0x4d61
    28e6:	6a 01                	push   $0x1
    28e8:	e8 d3 13 00 00       	call   3cc0 <printf>
    exit();
    28ed:	e8 66 12 00 00       	call   3b58 <exit>
    printf(1, "unlink dots/. worked!\n");
    28f2:	51                   	push   %ecx
    28f3:	51                   	push   %ecx
    28f4:	68 42 4d 00 00       	push   $0x4d42
    28f9:	6a 01                	push   $0x1
    28fb:	e8 c0 13 00 00       	call   3cc0 <printf>
    exit();
    2900:	e8 53 12 00 00       	call   3b58 <exit>
    printf(1, "chdir / failed\n");
    2905:	50                   	push   %eax
    2906:	50                   	push   %eax
    2907:	68 73 41 00 00       	push   $0x4173
    290c:	6a 01                	push   $0x1
    290e:	e8 ad 13 00 00       	call   3cc0 <printf>
    exit();
    2913:	e8 40 12 00 00       	call   3b58 <exit>
    printf(1, "rm .. worked!\n");
    2918:	50                   	push   %eax
    2919:	50                   	push   %eax
    291a:	68 2c 4d 00 00       	push   $0x4d2c
    291f:	6a 01                	push   $0x1
    2921:	e8 9a 13 00 00       	call   3cc0 <printf>
    exit();
    2926:	e8 2d 12 00 00       	call   3b58 <exit>
    printf(1, "rm . worked!\n");
    292b:	50                   	push   %eax
    292c:	50                   	push   %eax
    292d:	68 1e 4d 00 00       	push   $0x4d1e
    2932:	6a 01                	push   $0x1
    2934:	e8 87 13 00 00       	call   3cc0 <printf>
    exit();
    2939:	e8 1a 12 00 00       	call   3b58 <exit>
    printf(1, "chdir dots failed\n");
    293e:	50                   	push   %eax
    293f:	50                   	push   %eax
    2940:	68 0b 4d 00 00       	push   $0x4d0b
    2945:	6a 01                	push   $0x1
    2947:	e8 74 13 00 00       	call   3cc0 <printf>
    exit();
    294c:	e8 07 12 00 00       	call   3b58 <exit>
    2951:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2958:	00 
    2959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002960 <dirfile>:
{
    2960:	55                   	push   %ebp
    2961:	89 e5                	mov    %esp,%ebp
    2963:	53                   	push   %ebx
    2964:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2967:	68 98 4d 00 00       	push   $0x4d98
    296c:	6a 01                	push   $0x1
    296e:	e8 4d 13 00 00       	call   3cc0 <printf>
  fd = open("dirfile", O_CREATE);
    2973:	5b                   	pop    %ebx
    2974:	58                   	pop    %eax
    2975:	68 00 02 00 00       	push   $0x200
    297a:	68 a5 4d 00 00       	push   $0x4da5
    297f:	e8 14 12 00 00       	call   3b98 <open>
  if(fd < 0){
    2984:	83 c4 10             	add    $0x10,%esp
    2987:	85 c0                	test   %eax,%eax
    2989:	0f 88 43 01 00 00    	js     2ad2 <dirfile+0x172>
  close(fd);
    298f:	83 ec 0c             	sub    $0xc,%esp
    2992:	50                   	push   %eax
    2993:	e8 e8 11 00 00       	call   3b80 <close>
  if(chdir("dirfile") == 0){
    2998:	c7 04 24 a5 4d 00 00 	movl   $0x4da5,(%esp)
    299f:	e8 24 12 00 00       	call   3bc8 <chdir>
    29a4:	83 c4 10             	add    $0x10,%esp
    29a7:	85 c0                	test   %eax,%eax
    29a9:	0f 84 10 01 00 00    	je     2abf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29af:	83 ec 08             	sub    $0x8,%esp
    29b2:	6a 00                	push   $0x0
    29b4:	68 de 4d 00 00       	push   $0x4dde
    29b9:	e8 da 11 00 00       	call   3b98 <open>
  if(fd >= 0){
    29be:	83 c4 10             	add    $0x10,%esp
    29c1:	85 c0                	test   %eax,%eax
    29c3:	0f 89 e3 00 00 00    	jns    2aac <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29c9:	83 ec 08             	sub    $0x8,%esp
    29cc:	68 00 02 00 00       	push   $0x200
    29d1:	68 de 4d 00 00       	push   $0x4dde
    29d6:	e8 bd 11 00 00       	call   3b98 <open>
  if(fd >= 0){
    29db:	83 c4 10             	add    $0x10,%esp
    29de:	85 c0                	test   %eax,%eax
    29e0:	0f 89 c6 00 00 00    	jns    2aac <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    29e6:	83 ec 0c             	sub    $0xc,%esp
    29e9:	68 de 4d 00 00       	push   $0x4dde
    29ee:	e8 cd 11 00 00       	call   3bc0 <mkdir>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	85 c0                	test   %eax,%eax
    29f8:	0f 84 46 01 00 00    	je     2b44 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    29fe:	83 ec 0c             	sub    $0xc,%esp
    2a01:	68 de 4d 00 00       	push   $0x4dde
    2a06:	e8 9d 11 00 00       	call   3ba8 <unlink>
    2a0b:	83 c4 10             	add    $0x10,%esp
    2a0e:	85 c0                	test   %eax,%eax
    2a10:	0f 84 1b 01 00 00    	je     2b31 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a16:	83 ec 08             	sub    $0x8,%esp
    2a19:	68 de 4d 00 00       	push   $0x4dde
    2a1e:	68 42 4e 00 00       	push   $0x4e42
    2a23:	e8 90 11 00 00       	call   3bb8 <link>
    2a28:	83 c4 10             	add    $0x10,%esp
    2a2b:	85 c0                	test   %eax,%eax
    2a2d:	0f 84 eb 00 00 00    	je     2b1e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a33:	83 ec 0c             	sub    $0xc,%esp
    2a36:	68 a5 4d 00 00       	push   $0x4da5
    2a3b:	e8 68 11 00 00       	call   3ba8 <unlink>
    2a40:	83 c4 10             	add    $0x10,%esp
    2a43:	85 c0                	test   %eax,%eax
    2a45:	0f 85 c0 00 00 00    	jne    2b0b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a4b:	83 ec 08             	sub    $0x8,%esp
    2a4e:	6a 02                	push   $0x2
    2a50:	68 9e 49 00 00       	push   $0x499e
    2a55:	e8 3e 11 00 00       	call   3b98 <open>
  if(fd >= 0){
    2a5a:	83 c4 10             	add    $0x10,%esp
    2a5d:	85 c0                	test   %eax,%eax
    2a5f:	0f 89 93 00 00 00    	jns    2af8 <dirfile+0x198>
  fd = open(".", 0);
    2a65:	83 ec 08             	sub    $0x8,%esp
    2a68:	6a 00                	push   $0x0
    2a6a:	68 9e 49 00 00       	push   $0x499e
    2a6f:	e8 24 11 00 00       	call   3b98 <open>
  if(write(fd, "x", 1) > 0){
    2a74:	83 c4 0c             	add    $0xc,%esp
    2a77:	6a 01                	push   $0x1
  fd = open(".", 0);
    2a79:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a7b:	68 81 4a 00 00       	push   $0x4a81
    2a80:	50                   	push   %eax
    2a81:	e8 f2 10 00 00       	call   3b78 <write>
    2a86:	83 c4 10             	add    $0x10,%esp
    2a89:	85 c0                	test   %eax,%eax
    2a8b:	7f 58                	jg     2ae5 <dirfile+0x185>
  close(fd);
    2a8d:	83 ec 0c             	sub    $0xc,%esp
    2a90:	53                   	push   %ebx
    2a91:	e8 ea 10 00 00       	call   3b80 <close>
  printf(1, "dir vs file OK\n");
    2a96:	58                   	pop    %eax
    2a97:	5a                   	pop    %edx
    2a98:	68 75 4e 00 00       	push   $0x4e75
    2a9d:	6a 01                	push   $0x1
    2a9f:	e8 1c 12 00 00       	call   3cc0 <printf>
}
    2aa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2aa7:	83 c4 10             	add    $0x10,%esp
    2aaa:	c9                   	leave
    2aab:	c3                   	ret
    printf(1, "create dirfile/xx succeeded!\n");
    2aac:	50                   	push   %eax
    2aad:	50                   	push   %eax
    2aae:	68 e9 4d 00 00       	push   $0x4de9
    2ab3:	6a 01                	push   $0x1
    2ab5:	e8 06 12 00 00       	call   3cc0 <printf>
    exit();
    2aba:	e8 99 10 00 00       	call   3b58 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2abf:	52                   	push   %edx
    2ac0:	52                   	push   %edx
    2ac1:	68 c4 4d 00 00       	push   $0x4dc4
    2ac6:	6a 01                	push   $0x1
    2ac8:	e8 f3 11 00 00       	call   3cc0 <printf>
    exit();
    2acd:	e8 86 10 00 00       	call   3b58 <exit>
    printf(1, "create dirfile failed\n");
    2ad2:	51                   	push   %ecx
    2ad3:	51                   	push   %ecx
    2ad4:	68 ad 4d 00 00       	push   $0x4dad
    2ad9:	6a 01                	push   $0x1
    2adb:	e8 e0 11 00 00       	call   3cc0 <printf>
    exit();
    2ae0:	e8 73 10 00 00       	call   3b58 <exit>
    printf(1, "write . succeeded!\n");
    2ae5:	51                   	push   %ecx
    2ae6:	51                   	push   %ecx
    2ae7:	68 61 4e 00 00       	push   $0x4e61
    2aec:	6a 01                	push   $0x1
    2aee:	e8 cd 11 00 00       	call   3cc0 <printf>
    exit();
    2af3:	e8 60 10 00 00       	call   3b58 <exit>
    printf(1, "open . for writing succeeded!\n");
    2af8:	53                   	push   %ebx
    2af9:	53                   	push   %ebx
    2afa:	68 60 56 00 00       	push   $0x5660
    2aff:	6a 01                	push   $0x1
    2b01:	e8 ba 11 00 00       	call   3cc0 <printf>
    exit();
    2b06:	e8 4d 10 00 00       	call   3b58 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b0b:	50                   	push   %eax
    2b0c:	50                   	push   %eax
    2b0d:	68 49 4e 00 00       	push   $0x4e49
    2b12:	6a 01                	push   $0x1
    2b14:	e8 a7 11 00 00       	call   3cc0 <printf>
    exit();
    2b19:	e8 3a 10 00 00       	call   3b58 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b1e:	50                   	push   %eax
    2b1f:	50                   	push   %eax
    2b20:	68 40 56 00 00       	push   $0x5640
    2b25:	6a 01                	push   $0x1
    2b27:	e8 94 11 00 00       	call   3cc0 <printf>
    exit();
    2b2c:	e8 27 10 00 00       	call   3b58 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b31:	50                   	push   %eax
    2b32:	50                   	push   %eax
    2b33:	68 24 4e 00 00       	push   $0x4e24
    2b38:	6a 01                	push   $0x1
    2b3a:	e8 81 11 00 00       	call   3cc0 <printf>
    exit();
    2b3f:	e8 14 10 00 00       	call   3b58 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b44:	50                   	push   %eax
    2b45:	50                   	push   %eax
    2b46:	68 07 4e 00 00       	push   $0x4e07
    2b4b:	6a 01                	push   $0x1
    2b4d:	e8 6e 11 00 00       	call   3cc0 <printf>
    exit();
    2b52:	e8 01 10 00 00       	call   3b58 <exit>
    2b57:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2b5e:	00 
    2b5f:	90                   	nop

00002b60 <iref>:
{
    2b60:	55                   	push   %ebp
    2b61:	89 e5                	mov    %esp,%ebp
    2b63:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b64:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b69:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b6c:	68 85 4e 00 00       	push   $0x4e85
    2b71:	6a 01                	push   $0x1
    2b73:	e8 48 11 00 00       	call   3cc0 <printf>
    2b78:	83 c4 10             	add    $0x10,%esp
    2b7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2b80:	83 ec 0c             	sub    $0xc,%esp
    2b83:	68 96 4e 00 00       	push   $0x4e96
    2b88:	e8 33 10 00 00       	call   3bc0 <mkdir>
    2b8d:	83 c4 10             	add    $0x10,%esp
    2b90:	85 c0                	test   %eax,%eax
    2b92:	0f 85 bb 00 00 00    	jne    2c53 <iref+0xf3>
    if(chdir("irefd") != 0){
    2b98:	83 ec 0c             	sub    $0xc,%esp
    2b9b:	68 96 4e 00 00       	push   $0x4e96
    2ba0:	e8 23 10 00 00       	call   3bc8 <chdir>
    2ba5:	83 c4 10             	add    $0x10,%esp
    2ba8:	85 c0                	test   %eax,%eax
    2baa:	0f 85 b7 00 00 00    	jne    2c67 <iref+0x107>
    mkdir("");
    2bb0:	83 ec 0c             	sub    $0xc,%esp
    2bb3:	68 4b 45 00 00       	push   $0x454b
    2bb8:	e8 03 10 00 00       	call   3bc0 <mkdir>
    link("README", "");
    2bbd:	59                   	pop    %ecx
    2bbe:	58                   	pop    %eax
    2bbf:	68 4b 45 00 00       	push   $0x454b
    2bc4:	68 42 4e 00 00       	push   $0x4e42
    2bc9:	e8 ea 0f 00 00       	call   3bb8 <link>
    fd = open("", O_CREATE);
    2bce:	58                   	pop    %eax
    2bcf:	5a                   	pop    %edx
    2bd0:	68 00 02 00 00       	push   $0x200
    2bd5:	68 4b 45 00 00       	push   $0x454b
    2bda:	e8 b9 0f 00 00       	call   3b98 <open>
    if(fd >= 0)
    2bdf:	83 c4 10             	add    $0x10,%esp
    2be2:	85 c0                	test   %eax,%eax
    2be4:	78 0c                	js     2bf2 <iref+0x92>
      close(fd);
    2be6:	83 ec 0c             	sub    $0xc,%esp
    2be9:	50                   	push   %eax
    2bea:	e8 91 0f 00 00       	call   3b80 <close>
    2bef:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2bf2:	83 ec 08             	sub    $0x8,%esp
    2bf5:	68 00 02 00 00       	push   $0x200
    2bfa:	68 80 4a 00 00       	push   $0x4a80
    2bff:	e8 94 0f 00 00       	call   3b98 <open>
    if(fd >= 0)
    2c04:	83 c4 10             	add    $0x10,%esp
    2c07:	85 c0                	test   %eax,%eax
    2c09:	78 0c                	js     2c17 <iref+0xb7>
      close(fd);
    2c0b:	83 ec 0c             	sub    $0xc,%esp
    2c0e:	50                   	push   %eax
    2c0f:	e8 6c 0f 00 00       	call   3b80 <close>
    2c14:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c17:	83 ec 0c             	sub    $0xc,%esp
    2c1a:	68 80 4a 00 00       	push   $0x4a80
    2c1f:	e8 84 0f 00 00       	call   3ba8 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	83 eb 01             	sub    $0x1,%ebx
    2c2a:	0f 85 50 ff ff ff    	jne    2b80 <iref+0x20>
  chdir("/");
    2c30:	83 ec 0c             	sub    $0xc,%esp
    2c33:	68 71 41 00 00       	push   $0x4171
    2c38:	e8 8b 0f 00 00       	call   3bc8 <chdir>
  printf(1, "empty file name OK\n");
    2c3d:	58                   	pop    %eax
    2c3e:	5a                   	pop    %edx
    2c3f:	68 c4 4e 00 00       	push   $0x4ec4
    2c44:	6a 01                	push   $0x1
    2c46:	e8 75 10 00 00       	call   3cc0 <printf>
}
    2c4b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c4e:	83 c4 10             	add    $0x10,%esp
    2c51:	c9                   	leave
    2c52:	c3                   	ret
      printf(1, "mkdir irefd failed\n");
    2c53:	83 ec 08             	sub    $0x8,%esp
    2c56:	68 9c 4e 00 00       	push   $0x4e9c
    2c5b:	6a 01                	push   $0x1
    2c5d:	e8 5e 10 00 00       	call   3cc0 <printf>
      exit();
    2c62:	e8 f1 0e 00 00       	call   3b58 <exit>
      printf(1, "chdir irefd failed\n");
    2c67:	83 ec 08             	sub    $0x8,%esp
    2c6a:	68 b0 4e 00 00       	push   $0x4eb0
    2c6f:	6a 01                	push   $0x1
    2c71:	e8 4a 10 00 00       	call   3cc0 <printf>
      exit();
    2c76:	e8 dd 0e 00 00       	call   3b58 <exit>
    2c7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002c80 <forktest>:
{
    2c80:	55                   	push   %ebp
    2c81:	89 e5                	mov    %esp,%ebp
    2c83:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2c84:	31 db                	xor    %ebx,%ebx
{
    2c86:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2c89:	68 d8 4e 00 00       	push   $0x4ed8
    2c8e:	6a 01                	push   $0x1
    2c90:	e8 2b 10 00 00       	call   3cc0 <printf>
    2c95:	83 c4 10             	add    $0x10,%esp
    2c98:	eb 13                	jmp    2cad <forktest+0x2d>
    2c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2ca0:	74 4a                	je     2cec <forktest+0x6c>
  for(n=0; n<1000; n++){
    2ca2:	83 c3 01             	add    $0x1,%ebx
    2ca5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cab:	74 6b                	je     2d18 <forktest+0x98>
    pid = fork();
    2cad:	e8 9e 0e 00 00       	call   3b50 <fork>
    if(pid < 0)
    2cb2:	85 c0                	test   %eax,%eax
    2cb4:	79 ea                	jns    2ca0 <forktest+0x20>
  for(; n > 0; n--){
    2cb6:	85 db                	test   %ebx,%ebx
    2cb8:	74 14                	je     2cce <forktest+0x4e>
    2cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2cc0:	e8 9b 0e 00 00       	call   3b60 <wait>
    2cc5:	85 c0                	test   %eax,%eax
    2cc7:	78 28                	js     2cf1 <forktest+0x71>
  for(; n > 0; n--){
    2cc9:	83 eb 01             	sub    $0x1,%ebx
    2ccc:	75 f2                	jne    2cc0 <forktest+0x40>
  if(wait() != -1){
    2cce:	e8 8d 0e 00 00       	call   3b60 <wait>
    2cd3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cd6:	75 2d                	jne    2d05 <forktest+0x85>
  printf(1, "fork test OK\n");
    2cd8:	83 ec 08             	sub    $0x8,%esp
    2cdb:	68 0a 4f 00 00       	push   $0x4f0a
    2ce0:	6a 01                	push   $0x1
    2ce2:	e8 d9 0f 00 00       	call   3cc0 <printf>
}
    2ce7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cea:	c9                   	leave
    2ceb:	c3                   	ret
      exit();
    2cec:	e8 67 0e 00 00       	call   3b58 <exit>
      printf(1, "wait stopped early\n");
    2cf1:	83 ec 08             	sub    $0x8,%esp
    2cf4:	68 e3 4e 00 00       	push   $0x4ee3
    2cf9:	6a 01                	push   $0x1
    2cfb:	e8 c0 0f 00 00       	call   3cc0 <printf>
      exit();
    2d00:	e8 53 0e 00 00       	call   3b58 <exit>
    printf(1, "wait got too many\n");
    2d05:	52                   	push   %edx
    2d06:	52                   	push   %edx
    2d07:	68 f7 4e 00 00       	push   $0x4ef7
    2d0c:	6a 01                	push   $0x1
    2d0e:	e8 ad 0f 00 00       	call   3cc0 <printf>
    exit();
    2d13:	e8 40 0e 00 00       	call   3b58 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2d18:	50                   	push   %eax
    2d19:	50                   	push   %eax
    2d1a:	68 80 56 00 00       	push   $0x5680
    2d1f:	6a 01                	push   $0x1
    2d21:	e8 9a 0f 00 00       	call   3cc0 <printf>
    exit();
    2d26:	e8 2d 0e 00 00       	call   3b58 <exit>
    2d2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002d30 <sbrktest>:
{
    2d30:	55                   	push   %ebp
    2d31:	89 e5                	mov    %esp,%ebp
    2d33:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    2d34:	31 ff                	xor    %edi,%edi
{
    2d36:	56                   	push   %esi
    2d37:	53                   	push   %ebx
    2d38:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d3b:	68 18 4f 00 00       	push   $0x4f18
    2d40:	ff 35 cc 62 00 00    	push   0x62cc
    2d46:	e8 75 0f 00 00       	call   3cc0 <printf>
  oldbrk = sbrk(0);
    2d4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d52:	e8 89 0e 00 00       	call   3be0 <sbrk>
    2d57:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    2d5a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d61:	e8 7a 0e 00 00       	call   3be0 <sbrk>
    2d66:	83 c4 10             	add    $0x10,%esp
    2d69:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    2d6b:	eb 05                	jmp    2d72 <sbrktest+0x42>
    2d6d:	8d 76 00             	lea    0x0(%esi),%esi
    2d70:	89 c3                	mov    %eax,%ebx
    b = sbrk(1);
    2d72:	83 ec 0c             	sub    $0xc,%esp
    2d75:	6a 01                	push   $0x1
    2d77:	e8 64 0e 00 00       	call   3be0 <sbrk>
    if(b != a){
    2d7c:	83 c4 10             	add    $0x10,%esp
    2d7f:	39 d8                	cmp    %ebx,%eax
    2d81:	0f 85 aa 02 00 00    	jne    3031 <sbrktest+0x301>
  for(i = 0; i < 5000; i++){
    2d87:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2d8a:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    2d8d:	8d 43 01             	lea    0x1(%ebx),%eax
  for(i = 0; i < 5000; i++){
    2d90:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2d96:	75 d8                	jne    2d70 <sbrktest+0x40>
  pid = fork();
    2d98:	e8 b3 0d 00 00       	call   3b50 <fork>
    2d9d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2d9f:	85 c0                	test   %eax,%eax
    2da1:	0f 88 10 03 00 00    	js     30b7 <sbrktest+0x387>
  c = sbrk(1);
    2da7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2daa:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    2dad:	6a 01                	push   $0x1
    2daf:	e8 2c 0e 00 00       	call   3be0 <sbrk>
  c = sbrk(1);
    2db4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dbb:	e8 20 0e 00 00       	call   3be0 <sbrk>
  if(c != a + 1){
    2dc0:	83 c4 10             	add    $0x10,%esp
    2dc3:	39 c3                	cmp    %eax,%ebx
    2dc5:	0f 85 49 03 00 00    	jne    3114 <sbrktest+0x3e4>
  if(pid == 0)
    2dcb:	85 ff                	test   %edi,%edi
    2dcd:	0f 84 3c 03 00 00    	je     310f <sbrktest+0x3df>
  wait();
    2dd3:	e8 88 0d 00 00       	call   3b60 <wait>
  a = sbrk(0);
    2dd8:	83 ec 0c             	sub    $0xc,%esp
    2ddb:	6a 00                	push   $0x0
    2ddd:	e8 fe 0d 00 00       	call   3be0 <sbrk>
    2de2:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    2de4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2de9:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    2deb:	89 04 24             	mov    %eax,(%esp)
    2dee:	e8 ed 0d 00 00       	call   3be0 <sbrk>
  if (p != a) {
    2df3:	83 c4 10             	add    $0x10,%esp
    2df6:	39 c3                	cmp    %eax,%ebx
    2df8:	0f 85 a2 02 00 00    	jne    30a0 <sbrktest+0x370>
  a = sbrk(0);
    2dfe:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e01:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e08:	6a 00                	push   $0x0
    2e0a:	e8 d1 0d 00 00       	call   3be0 <sbrk>
  c = sbrk(-4096);
    2e0f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e16:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2e18:	e8 c3 0d 00 00       	call   3be0 <sbrk>
  if(c == (char*)0xffffffff){
    2e1d:	83 c4 10             	add    $0x10,%esp
    2e20:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e23:	0f 84 30 03 00 00    	je     3159 <sbrktest+0x429>
  c = sbrk(0);
    2e29:	83 ec 0c             	sub    $0xc,%esp
    2e2c:	6a 00                	push   $0x0
    2e2e:	e8 ad 0d 00 00       	call   3be0 <sbrk>
  if(c != a - 4096){
    2e33:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2e39:	83 c4 10             	add    $0x10,%esp
    2e3c:	39 d0                	cmp    %edx,%eax
    2e3e:	0f 85 fe 02 00 00    	jne    3142 <sbrktest+0x412>
  a = sbrk(0);
    2e44:	83 ec 0c             	sub    $0xc,%esp
    2e47:	6a 00                	push   $0x0
    2e49:	e8 92 0d 00 00       	call   3be0 <sbrk>
  c = sbrk(4096);
    2e4e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2e55:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2e57:	e8 84 0d 00 00       	call   3be0 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e5c:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2e5f:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e61:	39 c3                	cmp    %eax,%ebx
    2e63:	0f 85 c2 02 00 00    	jne    312b <sbrktest+0x3fb>
    2e69:	83 ec 0c             	sub    $0xc,%esp
    2e6c:	6a 00                	push   $0x0
    2e6e:	e8 6d 0d 00 00       	call   3be0 <sbrk>
    2e73:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2e79:	83 c4 10             	add    $0x10,%esp
    2e7c:	39 c2                	cmp    %eax,%edx
    2e7e:	0f 85 a7 02 00 00    	jne    312b <sbrktest+0x3fb>
  if(*lastaddr == 99){
    2e84:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2e8b:	0f 84 3d 02 00 00    	je     30ce <sbrktest+0x39e>
  a = sbrk(0);
    2e91:	83 ec 0c             	sub    $0xc,%esp
    2e94:	6a 00                	push   $0x0
    2e96:	e8 45 0d 00 00       	call   3be0 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2e9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2ea2:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    2ea4:	e8 37 0d 00 00       	call   3be0 <sbrk>
    2ea9:	89 c2                	mov    %eax,%edx
    2eab:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2eae:	29 d0                	sub    %edx,%eax
    2eb0:	89 04 24             	mov    %eax,(%esp)
    2eb3:	e8 28 0d 00 00       	call   3be0 <sbrk>
  if(c != a){
    2eb8:	83 c4 10             	add    $0x10,%esp
    2ebb:	39 c3                	cmp    %eax,%ebx
    2ebd:	0f 85 c6 01 00 00    	jne    3089 <sbrktest+0x359>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ec3:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2ec8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2ecf:	00 
    ppid = getpid();
    2ed0:	e8 03 0d 00 00       	call   3bd8 <getpid>
    2ed5:	89 c7                	mov    %eax,%edi
    pid = fork();
    2ed7:	e8 74 0c 00 00       	call   3b50 <fork>
    if(pid < 0){
    2edc:	85 c0                	test   %eax,%eax
    2ede:	0f 88 6b 01 00 00    	js     304f <sbrktest+0x31f>
    if(pid == 0){
    2ee4:	0f 84 7d 01 00 00    	je     3067 <sbrktest+0x337>
    wait();
    2eea:	e8 71 0c 00 00       	call   3b60 <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2eef:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2ef5:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2efb:	75 d3                	jne    2ed0 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    2efd:	83 ec 0c             	sub    $0xc,%esp
    2f00:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f03:	50                   	push   %eax
    2f04:	e8 5f 0c 00 00       	call   3b68 <pipe>
    2f09:	83 c4 10             	add    $0x10,%esp
    2f0c:	85 c0                	test   %eax,%eax
    2f0e:	0f 85 e8 01 00 00    	jne    30fc <sbrktest+0x3cc>
    2f14:	8d 5d c0             	lea    -0x40(%ebp),%ebx
      read(fds[0], &scratch, 1);
    2f17:	8d 7d b7             	lea    -0x49(%ebp),%edi
  if(pipe(fds) != 0){
    2f1a:	89 de                	mov    %ebx,%esi
    2f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    2f20:	e8 2b 0c 00 00       	call   3b50 <fork>
    2f25:	89 06                	mov    %eax,(%esi)
    2f27:	85 c0                	test   %eax,%eax
    2f29:	0f 84 9c 00 00 00    	je     2fcb <sbrktest+0x29b>
    if(pids[i] != -1)
    2f2f:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f32:	74 11                	je     2f45 <sbrktest+0x215>
      read(fds[0], &scratch, 1);
    2f34:	83 ec 04             	sub    $0x4,%esp
    2f37:	6a 01                	push   $0x1
    2f39:	57                   	push   %edi
    2f3a:	ff 75 b8             	push   -0x48(%ebp)
    2f3d:	e8 2e 0c 00 00       	call   3b70 <read>
    2f42:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f45:	83 c6 04             	add    $0x4,%esi
    2f48:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f4b:	39 c6                	cmp    %eax,%esi
    2f4d:	75 d1                	jne    2f20 <sbrktest+0x1f0>
  c = sbrk(4096);
    2f4f:	83 ec 0c             	sub    $0xc,%esp
    2f52:	68 00 10 00 00       	push   $0x1000
    2f57:	e8 84 0c 00 00       	call   3be0 <sbrk>
    2f5c:	83 c4 10             	add    $0x10,%esp
    2f5f:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2f68:	00 
    2f69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pids[i] == -1)
    2f70:	8b 03                	mov    (%ebx),%eax
    2f72:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f75:	74 11                	je     2f88 <sbrktest+0x258>
    kill(pids[i]);
    2f77:	83 ec 0c             	sub    $0xc,%esp
    2f7a:	50                   	push   %eax
    2f7b:	e8 08 0c 00 00       	call   3b88 <kill>
    wait();
    2f80:	e8 db 0b 00 00       	call   3b60 <wait>
    2f85:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f88:	83 c3 04             	add    $0x4,%ebx
    2f8b:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f8e:	39 c3                	cmp    %eax,%ebx
    2f90:	75 de                	jne    2f70 <sbrktest+0x240>
  if(c == (char*)0xffffffff){
    2f92:	83 ff ff             	cmp    $0xffffffff,%edi
    2f95:	0f 84 4a 01 00 00    	je     30e5 <sbrktest+0x3b5>
  if(sbrk(0) > oldbrk)
    2f9b:	83 ec 0c             	sub    $0xc,%esp
    2f9e:	6a 00                	push   $0x0
    2fa0:	e8 3b 0c 00 00       	call   3be0 <sbrk>
    2fa5:	83 c4 10             	add    $0x10,%esp
    2fa8:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    2fab:	72 65                	jb     3012 <sbrktest+0x2e2>
  printf(stdout, "sbrk test OK\n");
    2fad:	83 ec 08             	sub    $0x8,%esp
    2fb0:	68 c0 4f 00 00       	push   $0x4fc0
    2fb5:	ff 35 cc 62 00 00    	push   0x62cc
    2fbb:	e8 00 0d 00 00       	call   3cc0 <printf>
}
    2fc0:	83 c4 10             	add    $0x10,%esp
    2fc3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fc6:	5b                   	pop    %ebx
    2fc7:	5e                   	pop    %esi
    2fc8:	5f                   	pop    %edi
    2fc9:	5d                   	pop    %ebp
    2fca:	c3                   	ret
      sbrk(BIG - (uint)sbrk(0));
    2fcb:	83 ec 0c             	sub    $0xc,%esp
    2fce:	6a 00                	push   $0x0
    2fd0:	e8 0b 0c 00 00       	call   3be0 <sbrk>
    2fd5:	89 c2                	mov    %eax,%edx
    2fd7:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2fdc:	29 d0                	sub    %edx,%eax
    2fde:	89 04 24             	mov    %eax,(%esp)
    2fe1:	e8 fa 0b 00 00       	call   3be0 <sbrk>
      write(fds[1], "x", 1);
    2fe6:	83 c4 0c             	add    $0xc,%esp
    2fe9:	6a 01                	push   $0x1
    2feb:	68 81 4a 00 00       	push   $0x4a81
    2ff0:	ff 75 bc             	push   -0x44(%ebp)
    2ff3:	e8 80 0b 00 00       	call   3b78 <write>
    2ff8:	83 c4 10             	add    $0x10,%esp
    2ffb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3000:	83 ec 0c             	sub    $0xc,%esp
    3003:	68 e8 03 00 00       	push   $0x3e8
    3008:	e8 db 0b 00 00       	call   3be8 <sleep>
    300d:	83 c4 10             	add    $0x10,%esp
    3010:	eb ee                	jmp    3000 <sbrktest+0x2d0>
    sbrk(-(sbrk(0) - oldbrk));
    3012:	83 ec 0c             	sub    $0xc,%esp
    3015:	6a 00                	push   $0x0
    3017:	e8 c4 0b 00 00       	call   3be0 <sbrk>
    301c:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    301f:	29 c6                	sub    %eax,%esi
    3021:	89 34 24             	mov    %esi,(%esp)
    3024:	e8 b7 0b 00 00       	call   3be0 <sbrk>
    3029:	83 c4 10             	add    $0x10,%esp
    302c:	e9 7c ff ff ff       	jmp    2fad <sbrktest+0x27d>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3031:	83 ec 0c             	sub    $0xc,%esp
    3034:	50                   	push   %eax
    3035:	53                   	push   %ebx
    3036:	57                   	push   %edi
    3037:	68 23 4f 00 00       	push   $0x4f23
    303c:	ff 35 cc 62 00 00    	push   0x62cc
    3042:	e8 79 0c 00 00       	call   3cc0 <printf>
      exit();
    3047:	83 c4 20             	add    $0x20,%esp
    304a:	e8 09 0b 00 00       	call   3b58 <exit>
      printf(stdout, "fork failed\n");
    304f:	83 ec 08             	sub    $0x8,%esp
    3052:	68 69 50 00 00       	push   $0x5069
    3057:	ff 35 cc 62 00 00    	push   0x62cc
    305d:	e8 5e 0c 00 00       	call   3cc0 <printf>
      exit();
    3062:	e8 f1 0a 00 00       	call   3b58 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3067:	0f be 03             	movsbl (%ebx),%eax
    306a:	50                   	push   %eax
    306b:	53                   	push   %ebx
    306c:	68 8c 4f 00 00       	push   $0x4f8c
    3071:	ff 35 cc 62 00 00    	push   0x62cc
    3077:	e8 44 0c 00 00       	call   3cc0 <printf>
      kill(ppid);
    307c:	89 3c 24             	mov    %edi,(%esp)
    307f:	e8 04 0b 00 00       	call   3b88 <kill>
      exit();
    3084:	e8 cf 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3089:	50                   	push   %eax
    308a:	53                   	push   %ebx
    308b:	68 74 57 00 00       	push   $0x5774
    3090:	ff 35 cc 62 00 00    	push   0x62cc
    3096:	e8 25 0c 00 00       	call   3cc0 <printf>
    exit();
    309b:	e8 b8 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    30a0:	56                   	push   %esi
    30a1:	56                   	push   %esi
    30a2:	68 a4 56 00 00       	push   $0x56a4
    30a7:	ff 35 cc 62 00 00    	push   0x62cc
    30ad:	e8 0e 0c 00 00       	call   3cc0 <printf>
    exit();
    30b2:	e8 a1 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk test fork failed\n");
    30b7:	50                   	push   %eax
    30b8:	50                   	push   %eax
    30b9:	68 3e 4f 00 00       	push   $0x4f3e
    30be:	ff 35 cc 62 00 00    	push   0x62cc
    30c4:	e8 f7 0b 00 00       	call   3cc0 <printf>
    exit();
    30c9:	e8 8a 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    30ce:	51                   	push   %ecx
    30cf:	51                   	push   %ecx
    30d0:	68 44 57 00 00       	push   $0x5744
    30d5:	ff 35 cc 62 00 00    	push   0x62cc
    30db:	e8 e0 0b 00 00       	call   3cc0 <printf>
    exit();
    30e0:	e8 73 0a 00 00       	call   3b58 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    30e5:	50                   	push   %eax
    30e6:	50                   	push   %eax
    30e7:	68 a5 4f 00 00       	push   $0x4fa5
    30ec:	ff 35 cc 62 00 00    	push   0x62cc
    30f2:	e8 c9 0b 00 00       	call   3cc0 <printf>
    exit();
    30f7:	e8 5c 0a 00 00       	call   3b58 <exit>
    printf(1, "pipe() failed\n");
    30fc:	52                   	push   %edx
    30fd:	52                   	push   %edx
    30fe:	68 61 44 00 00       	push   $0x4461
    3103:	6a 01                	push   $0x1
    3105:	e8 b6 0b 00 00       	call   3cc0 <printf>
    exit();
    310a:	e8 49 0a 00 00       	call   3b58 <exit>
    exit();
    310f:	e8 44 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3114:	57                   	push   %edi
    3115:	57                   	push   %edi
    3116:	68 55 4f 00 00       	push   $0x4f55
    311b:	ff 35 cc 62 00 00    	push   0x62cc
    3121:	e8 9a 0b 00 00       	call   3cc0 <printf>
    exit();
    3126:	e8 2d 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    312b:	57                   	push   %edi
    312c:	53                   	push   %ebx
    312d:	68 1c 57 00 00       	push   $0x571c
    3132:	ff 35 cc 62 00 00    	push   0x62cc
    3138:	e8 83 0b 00 00       	call   3cc0 <printf>
    exit();
    313d:	e8 16 0a 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3142:	50                   	push   %eax
    3143:	53                   	push   %ebx
    3144:	68 e4 56 00 00       	push   $0x56e4
    3149:	ff 35 cc 62 00 00    	push   0x62cc
    314f:	e8 6c 0b 00 00       	call   3cc0 <printf>
    exit();
    3154:	e8 ff 09 00 00       	call   3b58 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3159:	53                   	push   %ebx
    315a:	53                   	push   %ebx
    315b:	68 71 4f 00 00       	push   $0x4f71
    3160:	ff 35 cc 62 00 00    	push   0x62cc
    3166:	e8 55 0b 00 00       	call   3cc0 <printf>
    exit();
    316b:	e8 e8 09 00 00       	call   3b58 <exit>

00003170 <validateint>:
}
    3170:	c3                   	ret
    3171:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3178:	00 
    3179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003180 <validatetest>:
{
    3180:	55                   	push   %ebp
    3181:	89 e5                	mov    %esp,%ebp
    3183:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    3184:	31 f6                	xor    %esi,%esi
{
    3186:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    3187:	83 ec 08             	sub    $0x8,%esp
    318a:	68 ce 4f 00 00       	push   $0x4fce
    318f:	ff 35 cc 62 00 00    	push   0x62cc
    3195:	e8 26 0b 00 00       	call   3cc0 <printf>
    319a:	83 c4 10             	add    $0x10,%esp
    319d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    31a0:	e8 ab 09 00 00       	call   3b50 <fork>
    31a5:	89 c3                	mov    %eax,%ebx
    31a7:	85 c0                	test   %eax,%eax
    31a9:	74 63                	je     320e <validatetest+0x8e>
    sleep(0);
    31ab:	83 ec 0c             	sub    $0xc,%esp
    31ae:	6a 00                	push   $0x0
    31b0:	e8 33 0a 00 00       	call   3be8 <sleep>
    sleep(0);
    31b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31bc:	e8 27 0a 00 00       	call   3be8 <sleep>
    kill(pid);
    31c1:	89 1c 24             	mov    %ebx,(%esp)
    31c4:	e8 bf 09 00 00       	call   3b88 <kill>
    wait();
    31c9:	e8 92 09 00 00       	call   3b60 <wait>
    if(link("nosuchfile", (char*)p) != -1){
    31ce:	58                   	pop    %eax
    31cf:	5a                   	pop    %edx
    31d0:	56                   	push   %esi
    31d1:	68 dd 4f 00 00       	push   $0x4fdd
    31d6:	e8 dd 09 00 00       	call   3bb8 <link>
    31db:	83 c4 10             	add    $0x10,%esp
    31de:	83 f8 ff             	cmp    $0xffffffff,%eax
    31e1:	75 30                	jne    3213 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    31e3:	81 c6 00 10 00 00    	add    $0x1000,%esi
    31e9:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    31ef:	75 af                	jne    31a0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    31f1:	83 ec 08             	sub    $0x8,%esp
    31f4:	68 01 50 00 00       	push   $0x5001
    31f9:	ff 35 cc 62 00 00    	push   0x62cc
    31ff:	e8 bc 0a 00 00       	call   3cc0 <printf>
}
    3204:	83 c4 10             	add    $0x10,%esp
    3207:	8d 65 f8             	lea    -0x8(%ebp),%esp
    320a:	5b                   	pop    %ebx
    320b:	5e                   	pop    %esi
    320c:	5d                   	pop    %ebp
    320d:	c3                   	ret
      exit();
    320e:	e8 45 09 00 00       	call   3b58 <exit>
      printf(stdout, "link should not succeed\n");
    3213:	83 ec 08             	sub    $0x8,%esp
    3216:	68 e8 4f 00 00       	push   $0x4fe8
    321b:	ff 35 cc 62 00 00    	push   0x62cc
    3221:	e8 9a 0a 00 00       	call   3cc0 <printf>
      exit();
    3226:	e8 2d 09 00 00       	call   3b58 <exit>
    322b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00003230 <bsstest>:
{
    3230:	55                   	push   %ebp
    3231:	89 e5                	mov    %esp,%ebp
    3233:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3236:	68 0e 50 00 00       	push   $0x500e
    323b:	ff 35 cc 62 00 00    	push   0x62cc
    3241:	e8 7a 0a 00 00       	call   3cc0 <printf>
    3246:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3249:	31 c0                	xor    %eax,%eax
    324b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3252:	00 
    3253:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    325a:	00 
    325b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3260:	80 b8 00 63 00 00 00 	cmpb   $0x0,0x6300(%eax)
    3267:	75 22                	jne    328b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3269:	83 c0 01             	add    $0x1,%eax
    326c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3271:	75 ed                	jne    3260 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3273:	83 ec 08             	sub    $0x8,%esp
    3276:	68 29 50 00 00       	push   $0x5029
    327b:	ff 35 cc 62 00 00    	push   0x62cc
    3281:	e8 3a 0a 00 00       	call   3cc0 <printf>
}
    3286:	83 c4 10             	add    $0x10,%esp
    3289:	c9                   	leave
    328a:	c3                   	ret
      printf(stdout, "bss test failed\n");
    328b:	83 ec 08             	sub    $0x8,%esp
    328e:	68 18 50 00 00       	push   $0x5018
    3293:	ff 35 cc 62 00 00    	push   0x62cc
    3299:	e8 22 0a 00 00       	call   3cc0 <printf>
      exit();
    329e:	e8 b5 08 00 00       	call   3b58 <exit>
    32a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    32aa:	00 
    32ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000032b0 <bigargtest>:
{
    32b0:	55                   	push   %ebp
    32b1:	89 e5                	mov    %esp,%ebp
    32b3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    32b6:	68 36 50 00 00       	push   $0x5036
    32bb:	e8 e8 08 00 00       	call   3ba8 <unlink>
  pid = fork();
    32c0:	e8 8b 08 00 00       	call   3b50 <fork>
  if(pid == 0){
    32c5:	83 c4 10             	add    $0x10,%esp
    32c8:	85 c0                	test   %eax,%eax
    32ca:	74 3f                	je     330b <bigargtest+0x5b>
  } else if(pid < 0){
    32cc:	0f 88 d9 00 00 00    	js     33ab <bigargtest+0xfb>
  wait();
    32d2:	e8 89 08 00 00       	call   3b60 <wait>
  fd = open("bigarg-ok", 0);
    32d7:	83 ec 08             	sub    $0x8,%esp
    32da:	6a 00                	push   $0x0
    32dc:	68 36 50 00 00       	push   $0x5036
    32e1:	e8 b2 08 00 00       	call   3b98 <open>
  if(fd < 0){
    32e6:	83 c4 10             	add    $0x10,%esp
    32e9:	85 c0                	test   %eax,%eax
    32eb:	0f 88 a3 00 00 00    	js     3394 <bigargtest+0xe4>
  close(fd);
    32f1:	83 ec 0c             	sub    $0xc,%esp
    32f4:	50                   	push   %eax
    32f5:	e8 86 08 00 00       	call   3b80 <close>
  unlink("bigarg-ok");
    32fa:	c7 04 24 36 50 00 00 	movl   $0x5036,(%esp)
    3301:	e8 a2 08 00 00       	call   3ba8 <unlink>
}
    3306:	83 c4 10             	add    $0x10,%esp
    3309:	c9                   	leave
    330a:	c3                   	ret
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    330b:	c7 04 85 20 aa 00 00 	movl   $0x5798,0xaa20(,%eax,4)
    3312:	98 57 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3316:	b8 01 00 00 00       	mov    $0x1,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    331b:	c7 04 85 20 aa 00 00 	movl   $0x5798,0xaa20(,%eax,4)
    3322:	98 57 00 00 
    3326:	c7 04 85 24 aa 00 00 	movl   $0x5798,0xaa24(,%eax,4)
    332d:	98 57 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3331:	83 c0 02             	add    $0x2,%eax
    3334:	83 f8 1f             	cmp    $0x1f,%eax
    3337:	75 e2                	jne    331b <bigargtest+0x6b>
    printf(stdout, "bigarg test\n");
    3339:	50                   	push   %eax
    args[MAXARG-1] = 0;
    333a:	31 c9                	xor    %ecx,%ecx
    printf(stdout, "bigarg test\n");
    333c:	50                   	push   %eax
    333d:	68 40 50 00 00       	push   $0x5040
    3342:	ff 35 cc 62 00 00    	push   0x62cc
    args[MAXARG-1] = 0;
    3348:	89 0d 9c aa 00 00    	mov    %ecx,0xaa9c
    printf(stdout, "bigarg test\n");
    334e:	e8 6d 09 00 00       	call   3cc0 <printf>
    exec("echo", args);
    3353:	58                   	pop    %eax
    3354:	5a                   	pop    %edx
    3355:	68 20 aa 00 00       	push   $0xaa20
    335a:	68 0d 42 00 00       	push   $0x420d
    335f:	e8 2c 08 00 00       	call   3b90 <exec>
    printf(stdout, "bigarg test ok\n");
    3364:	59                   	pop    %ecx
    3365:	58                   	pop    %eax
    3366:	68 4d 50 00 00       	push   $0x504d
    336b:	ff 35 cc 62 00 00    	push   0x62cc
    3371:	e8 4a 09 00 00       	call   3cc0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3376:	58                   	pop    %eax
    3377:	5a                   	pop    %edx
    3378:	68 00 02 00 00       	push   $0x200
    337d:	68 36 50 00 00       	push   $0x5036
    3382:	e8 11 08 00 00       	call   3b98 <open>
    close(fd);
    3387:	89 04 24             	mov    %eax,(%esp)
    338a:	e8 f1 07 00 00       	call   3b80 <close>
    exit();
    338f:	e8 c4 07 00 00       	call   3b58 <exit>
    printf(stdout, "bigarg test failed!\n");
    3394:	50                   	push   %eax
    3395:	50                   	push   %eax
    3396:	68 76 50 00 00       	push   $0x5076
    339b:	ff 35 cc 62 00 00    	push   0x62cc
    33a1:	e8 1a 09 00 00       	call   3cc0 <printf>
    exit();
    33a6:	e8 ad 07 00 00       	call   3b58 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    33ab:	52                   	push   %edx
    33ac:	52                   	push   %edx
    33ad:	68 5d 50 00 00       	push   $0x505d
    33b2:	ff 35 cc 62 00 00    	push   0x62cc
    33b8:	e8 03 09 00 00       	call   3cc0 <printf>
    exit();
    33bd:	e8 96 07 00 00       	call   3b58 <exit>
    33c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    33c9:	00 
    33ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000033d0 <fsfull>:
{
    33d0:	55                   	push   %ebp
    33d1:	89 e5                	mov    %esp,%ebp
    33d3:	57                   	push   %edi
    33d4:	56                   	push   %esi
    33d5:	8d 7d a8             	lea    -0x58(%ebp),%edi
    33d8:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    33d9:	31 db                	xor    %ebx,%ebx
{
    33db:	83 ec 64             	sub    $0x64,%esp
  printf(1, "fsfull test\n");
    33de:	68 8b 50 00 00       	push   $0x508b
    33e3:	6a 01                	push   $0x1
    33e5:	e8 d6 08 00 00       	call   3cc0 <printf>
    33ea:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    33ed:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    33f2:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    33f7:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    33fa:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    33fe:	f7 e3                	mul    %ebx
    name[5] = '\0';
    3400:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3404:	c1 ea 06             	shr    $0x6,%edx
    3407:	8d 42 30             	lea    0x30(%edx),%eax
    340a:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    340d:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    3413:	89 da                	mov    %ebx,%edx
    3415:	29 c2                	sub    %eax,%edx
    3417:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    341c:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    341e:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3423:	c1 ea 05             	shr    $0x5,%edx
    3426:	83 c2 30             	add    $0x30,%edx
    3429:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    342c:	f7 e3                	mul    %ebx
    342e:	c1 ea 05             	shr    $0x5,%edx
    3431:	6b c2 64             	imul   $0x64,%edx,%eax
    3434:	89 da                	mov    %ebx,%edx
    3436:	29 c2                	sub    %eax,%edx
    3438:	89 d0                	mov    %edx,%eax
    343a:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    343c:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    343e:	c1 ea 03             	shr    $0x3,%edx
    3441:	83 c2 30             	add    $0x30,%edx
    3444:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3447:	f7 e1                	mul    %ecx
    3449:	89 d8                	mov    %ebx,%eax
    344b:	c1 ea 03             	shr    $0x3,%edx
    344e:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3451:	01 d2                	add    %edx,%edx
    3453:	29 d0                	sub    %edx,%eax
    3455:	83 c0 30             	add    $0x30,%eax
    3458:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    345b:	57                   	push   %edi
    345c:	68 98 50 00 00       	push   $0x5098
    3461:	6a 01                	push   $0x1
    3463:	e8 58 08 00 00       	call   3cc0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3468:	58                   	pop    %eax
    3469:	5a                   	pop    %edx
    346a:	68 02 02 00 00       	push   $0x202
    346f:	57                   	push   %edi
    3470:	e8 23 07 00 00       	call   3b98 <open>
    if(fd < 0){
    3475:	83 c4 10             	add    $0x10,%esp
    3478:	85 c0                	test   %eax,%eax
    347a:	0f 89 b8 00 00 00    	jns    3538 <fsfull+0x168>
      printf(1, "open %s failed\n", name);
    3480:	83 ec 04             	sub    $0x4,%esp
    3483:	57                   	push   %edi
    3484:	68 a4 50 00 00       	push   $0x50a4
    3489:	6a 01                	push   $0x1
    348b:	e8 30 08 00 00       	call   3cc0 <printf>
      break;
    3490:	83 c4 10             	add    $0x10,%esp
    name[2] = '0' + (nfiles % 1000) / 100;
    3493:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    3498:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    349f:	00 
    name[1] = '0' + nfiles / 1000;
    34a0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    unlink(name);
    34a5:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    34a8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    34ac:	f7 e3                	mul    %ebx
    name[5] = '\0';
    34ae:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34b2:	c1 ea 06             	shr    $0x6,%edx
    34b5:	8d 42 30             	lea    0x30(%edx),%eax
    34b8:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34bb:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    34c1:	89 da                	mov    %ebx,%edx
    34c3:	29 c2                	sub    %eax,%edx
    34c5:	89 d0                	mov    %edx,%eax
    34c7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    34c9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34cb:	c1 ea 05             	shr    $0x5,%edx
    34ce:	83 c2 30             	add    $0x30,%edx
    34d1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34d4:	f7 e6                	mul    %esi
    34d6:	c1 ea 05             	shr    $0x5,%edx
    34d9:	6b ca 64             	imul   $0x64,%edx,%ecx
    34dc:	89 da                	mov    %ebx,%edx
    34de:	29 ca                	sub    %ecx,%edx
    34e0:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    34e5:	89 d0                	mov    %edx,%eax
    34e7:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    34e9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    34eb:	c1 ea 03             	shr    $0x3,%edx
    34ee:	83 c2 30             	add    $0x30,%edx
    34f1:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    34f4:	f7 e1                	mul    %ecx
    34f6:	89 d8                	mov    %ebx,%eax
    nfiles--;
    34f8:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    34fb:	c1 ea 03             	shr    $0x3,%edx
    34fe:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3501:	01 d2                	add    %edx,%edx
    3503:	29 d0                	sub    %edx,%eax
    3505:	83 c0 30             	add    $0x30,%eax
    3508:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    350b:	57                   	push   %edi
    350c:	e8 97 06 00 00       	call   3ba8 <unlink>
  while(nfiles >= 0){
    3511:	83 c4 10             	add    $0x10,%esp
    3514:	83 fb ff             	cmp    $0xffffffff,%ebx
    3517:	75 87                	jne    34a0 <fsfull+0xd0>
  printf(1, "fsfull test finished\n");
    3519:	83 ec 08             	sub    $0x8,%esp
    351c:	68 c4 50 00 00       	push   $0x50c4
    3521:	6a 01                	push   $0x1
    3523:	e8 98 07 00 00       	call   3cc0 <printf>
}
    3528:	83 c4 10             	add    $0x10,%esp
    352b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    352e:	5b                   	pop    %ebx
    352f:	5e                   	pop    %esi
    3530:	5f                   	pop    %edi
    3531:	5d                   	pop    %ebp
    3532:	c3                   	ret
    3533:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    int total = 0;
    3538:	89 5d a4             	mov    %ebx,-0x5c(%ebp)
    353b:	31 f6                	xor    %esi,%esi
    353d:	89 c3                	mov    %eax,%ebx
    353f:	eb 09                	jmp    354a <fsfull+0x17a>
    3541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      total += cc;
    3548:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    354a:	83 ec 04             	sub    $0x4,%esp
    354d:	68 00 02 00 00       	push   $0x200
    3552:	68 20 8a 00 00       	push   $0x8a20
    3557:	53                   	push   %ebx
    3558:	e8 1b 06 00 00       	call   3b78 <write>
      if(cc < 512)
    355d:	83 c4 10             	add    $0x10,%esp
    3560:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3565:	7f e1                	jg     3548 <fsfull+0x178>
    printf(1, "wrote %d bytes\n", total);
    3567:	83 ec 04             	sub    $0x4,%esp
    356a:	89 5d a0             	mov    %ebx,-0x60(%ebp)
    356d:	8b 5d a4             	mov    -0x5c(%ebp),%ebx
    3570:	56                   	push   %esi
    3571:	68 b4 50 00 00       	push   $0x50b4
    3576:	6a 01                	push   $0x1
    3578:	e8 43 07 00 00       	call   3cc0 <printf>
    close(fd);
    357d:	8b 4d a0             	mov    -0x60(%ebp),%ecx
    3580:	89 0c 24             	mov    %ecx,(%esp)
    3583:	e8 f8 05 00 00       	call   3b80 <close>
    if(total == 0)
    3588:	83 c4 10             	add    $0x10,%esp
    358b:	85 f6                	test   %esi,%esi
    358d:	0f 84 00 ff ff ff    	je     3493 <fsfull+0xc3>
  for(nfiles = 0; ; nfiles++){
    3593:	83 c3 01             	add    $0x1,%ebx
    3596:	e9 52 fe ff ff       	jmp    33ed <fsfull+0x1d>
    359b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000035a0 <uio>:
{
    35a0:	55                   	push   %ebp
    35a1:	89 e5                	mov    %esp,%ebp
    35a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    35a6:	68 da 50 00 00       	push   $0x50da
    35ab:	6a 01                	push   $0x1
    35ad:	e8 0e 07 00 00       	call   3cc0 <printf>
  pid = fork();
    35b2:	e8 99 05 00 00       	call   3b50 <fork>
  if(pid == 0){
    35b7:	83 c4 10             	add    $0x10,%esp
    35ba:	85 c0                	test   %eax,%eax
    35bc:	74 1b                	je     35d9 <uio+0x39>
  } else if(pid < 0){
    35be:	78 3d                	js     35fd <uio+0x5d>
  wait();
    35c0:	e8 9b 05 00 00       	call   3b60 <wait>
  printf(1, "uio test done\n");
    35c5:	83 ec 08             	sub    $0x8,%esp
    35c8:	68 e4 50 00 00       	push   $0x50e4
    35cd:	6a 01                	push   $0x1
    35cf:	e8 ec 06 00 00       	call   3cc0 <printf>
}
    35d4:	83 c4 10             	add    $0x10,%esp
    35d7:	c9                   	leave
    35d8:	c3                   	ret
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    35d9:	b8 09 00 00 00       	mov    $0x9,%eax
    35de:	ba 70 00 00 00       	mov    $0x70,%edx
    35e3:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    35e4:	ba 71 00 00 00       	mov    $0x71,%edx
    35e9:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    35ea:	52                   	push   %edx
    35eb:	52                   	push   %edx
    35ec:	68 78 58 00 00       	push   $0x5878
    35f1:	6a 01                	push   $0x1
    35f3:	e8 c8 06 00 00       	call   3cc0 <printf>
    exit();
    35f8:	e8 5b 05 00 00       	call   3b58 <exit>
    printf (1, "fork failed\n");
    35fd:	50                   	push   %eax
    35fe:	50                   	push   %eax
    35ff:	68 69 50 00 00       	push   $0x5069
    3604:	6a 01                	push   $0x1
    3606:	e8 b5 06 00 00       	call   3cc0 <printf>
    exit();
    360b:	e8 48 05 00 00       	call   3b58 <exit>

00003610 <argptest>:
{
    3610:	55                   	push   %ebp
    3611:	89 e5                	mov    %esp,%ebp
    3613:	53                   	push   %ebx
    3614:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3617:	6a 00                	push   $0x0
    3619:	68 f3 50 00 00       	push   $0x50f3
    361e:	e8 75 05 00 00       	call   3b98 <open>
  if (fd < 0) {
    3623:	83 c4 10             	add    $0x10,%esp
    3626:	85 c0                	test   %eax,%eax
    3628:	78 39                	js     3663 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    362a:	83 ec 0c             	sub    $0xc,%esp
    362d:	89 c3                	mov    %eax,%ebx
    362f:	6a 00                	push   $0x0
    3631:	e8 aa 05 00 00       	call   3be0 <sbrk>
    3636:	83 c4 0c             	add    $0xc,%esp
    3639:	83 e8 01             	sub    $0x1,%eax
    363c:	6a ff                	push   $0xffffffff
    363e:	50                   	push   %eax
    363f:	53                   	push   %ebx
    3640:	e8 2b 05 00 00       	call   3b70 <read>
  close(fd);
    3645:	89 1c 24             	mov    %ebx,(%esp)
    3648:	e8 33 05 00 00       	call   3b80 <close>
  printf(1, "arg test passed\n");
    364d:	58                   	pop    %eax
    364e:	5a                   	pop    %edx
    364f:	68 05 51 00 00       	push   $0x5105
    3654:	6a 01                	push   $0x1
    3656:	e8 65 06 00 00       	call   3cc0 <printf>
}
    365b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    365e:	83 c4 10             	add    $0x10,%esp
    3661:	c9                   	leave
    3662:	c3                   	ret
    printf(2, "open failed\n");
    3663:	51                   	push   %ecx
    3664:	51                   	push   %ecx
    3665:	68 f8 50 00 00       	push   $0x50f8
    366a:	6a 02                	push   $0x2
    366c:	e8 4f 06 00 00       	call   3cc0 <printf>
    exit();
    3671:	e8 e2 04 00 00       	call   3b58 <exit>
    3676:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    367d:	00 
    367e:	66 90                	xchg   %ax,%ax

00003680 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3680:	69 05 c8 62 00 00 0d 	imul   $0x19660d,0x62c8,%eax
    3687:	66 19 00 
    368a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    368f:	a3 c8 62 00 00       	mov    %eax,0x62c8
}
    3694:	c3                   	ret
    3695:	66 90                	xchg   %ax,%ax
    3697:	66 90                	xchg   %ax,%ax
    3699:	66 90                	xchg   %ax,%ax
    369b:	66 90                	xchg   %ax,%ax
    369d:	66 90                	xchg   %ax,%ax
    369f:	66 90                	xchg   %ax,%ax
    36a1:	66 90                	xchg   %ax,%ax
    36a3:	66 90                	xchg   %ax,%ax
    36a5:	66 90                	xchg   %ax,%ax
    36a7:	66 90                	xchg   %ax,%ax
    36a9:	66 90                	xchg   %ax,%ax
    36ab:	66 90                	xchg   %ax,%ax
    36ad:	66 90                	xchg   %ax,%ax
    36af:	66 90                	xchg   %ax,%ax
    36b1:	66 90                	xchg   %ax,%ax
    36b3:	66 90                	xchg   %ax,%ax
    36b5:	66 90                	xchg   %ax,%ax
    36b7:	66 90                	xchg   %ax,%ax
    36b9:	66 90                	xchg   %ax,%ax
    36bb:	66 90                	xchg   %ax,%ax
    36bd:	66 90                	xchg   %ax,%ax
    36bf:	90                   	nop

000036c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    36c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    36c1:	31 c0                	xor    %eax,%eax
{
    36c3:	89 e5                	mov    %esp,%ebp
    36c5:	53                   	push   %ebx
    36c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    36cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    36d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    36d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    36d7:	83 c0 01             	add    $0x1,%eax
    36da:	84 d2                	test   %dl,%dl
    36dc:	75 f2                	jne    36d0 <strcpy+0x10>
    ;
  return os;
}
    36de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36e1:	89 c8                	mov    %ecx,%eax
    36e3:	c9                   	leave
    36e4:	c3                   	ret
    36e5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36ec:	00 
    36ed:	8d 76 00             	lea    0x0(%esi),%esi

000036f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36f0:	55                   	push   %ebp
    36f1:	89 e5                	mov    %esp,%ebp
    36f3:	53                   	push   %ebx
    36f4:	8b 55 08             	mov    0x8(%ebp),%edx
    36f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    36fa:	0f b6 02             	movzbl (%edx),%eax
    36fd:	84 c0                	test   %al,%al
    36ff:	75 2f                	jne    3730 <strcmp+0x40>
    3701:	eb 4a                	jmp    374d <strcmp+0x5d>
    3703:	eb 1b                	jmp    3720 <strcmp+0x30>
    3705:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    370c:	00 
    370d:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3714:	00 
    3715:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    371c:	00 
    371d:	8d 76 00             	lea    0x0(%esi),%esi
    3720:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    3724:	83 c2 01             	add    $0x1,%edx
    3727:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    372a:	84 c0                	test   %al,%al
    372c:	74 12                	je     3740 <strcmp+0x50>
    372e:	89 d9                	mov    %ebx,%ecx
    3730:	0f b6 19             	movzbl (%ecx),%ebx
    3733:	38 c3                	cmp    %al,%bl
    3735:	74 e9                	je     3720 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
    3737:	29 d8                	sub    %ebx,%eax
}
    3739:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    373c:	c9                   	leave
    373d:	c3                   	ret
    373e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
    3740:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3744:	31 c0                	xor    %eax,%eax
    3746:	29 d8                	sub    %ebx,%eax
}
    3748:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    374b:	c9                   	leave
    374c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
    374d:	0f b6 19             	movzbl (%ecx),%ebx
    3750:	31 c0                	xor    %eax,%eax
    3752:	eb e3                	jmp    3737 <strcmp+0x47>
    3754:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    375b:	00 
    375c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003760 <strlen>:

uint
strlen(const char *s)
{
    3760:	55                   	push   %ebp
    3761:	89 e5                	mov    %esp,%ebp
    3763:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3766:	80 3a 00             	cmpb   $0x0,(%edx)
    3769:	74 15                	je     3780 <strlen+0x20>
    376b:	31 c0                	xor    %eax,%eax
    376d:	8d 76 00             	lea    0x0(%esi),%esi
    3770:	83 c0 01             	add    $0x1,%eax
    3773:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3777:	89 c1                	mov    %eax,%ecx
    3779:	75 f5                	jne    3770 <strlen+0x10>
    ;
  return n;
}
    377b:	89 c8                	mov    %ecx,%eax
    377d:	5d                   	pop    %ebp
    377e:	c3                   	ret
    377f:	90                   	nop
  for(n = 0; s[n]; n++)
    3780:	31 c9                	xor    %ecx,%ecx
}
    3782:	5d                   	pop    %ebp
    3783:	89 c8                	mov    %ecx,%eax
    3785:	c3                   	ret
    3786:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    378d:	00 
    378e:	66 90                	xchg   %ax,%ax

00003790 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	57                   	push   %edi
    3794:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3797:	8b 4d 10             	mov    0x10(%ebp),%ecx
    379a:	8b 45 0c             	mov    0xc(%ebp),%eax
    379d:	89 d7                	mov    %edx,%edi
    379f:	fc                   	cld
    37a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    37a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
    37a5:	89 d0                	mov    %edx,%eax
    37a7:	c9                   	leave
    37a8:	c3                   	ret
    37a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000037b0 <strchr>:

char*
strchr(const char *s, char c)
{
    37b0:	55                   	push   %ebp
    37b1:	89 e5                	mov    %esp,%ebp
    37b3:	8b 45 08             	mov    0x8(%ebp),%eax
    37b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    37ba:	0f b6 10             	movzbl (%eax),%edx
    37bd:	84 d2                	test   %dl,%dl
    37bf:	75 1a                	jne    37db <strchr+0x2b>
    37c1:	eb 25                	jmp    37e8 <strchr+0x38>
    37c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    37ca:	00 
    37cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    37d0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    37d4:	83 c0 01             	add    $0x1,%eax
    37d7:	84 d2                	test   %dl,%dl
    37d9:	74 0d                	je     37e8 <strchr+0x38>
    if(*s == c)
    37db:	38 d1                	cmp    %dl,%cl
    37dd:	75 f1                	jne    37d0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    37df:	5d                   	pop    %ebp
    37e0:	c3                   	ret
    37e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    37e8:	31 c0                	xor    %eax,%eax
}
    37ea:	5d                   	pop    %ebp
    37eb:	c3                   	ret
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037f0 <gets>:

char*
gets(char *buf, int max)
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	57                   	push   %edi
    37f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    37f5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
    37f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    37f9:	31 db                	xor    %ebx,%ebx
{
    37fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    37fe:	eb 27                	jmp    3827 <gets+0x37>
    cc = read(0, &c, 1);
    3800:	83 ec 04             	sub    $0x4,%esp
    3803:	6a 01                	push   $0x1
    3805:	56                   	push   %esi
    3806:	6a 00                	push   $0x0
    3808:	e8 63 03 00 00       	call   3b70 <read>
    if(cc < 1)
    380d:	83 c4 10             	add    $0x10,%esp
    3810:	85 c0                	test   %eax,%eax
    3812:	7e 1d                	jle    3831 <gets+0x41>
      break;
    buf[i++] = c;
    3814:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3818:	8b 55 08             	mov    0x8(%ebp),%edx
    381b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    381f:	3c 0a                	cmp    $0xa,%al
    3821:	74 10                	je     3833 <gets+0x43>
    3823:	3c 0d                	cmp    $0xd,%al
    3825:	74 0c                	je     3833 <gets+0x43>
  for(i=0; i+1 < max; ){
    3827:	89 df                	mov    %ebx,%edi
    3829:	83 c3 01             	add    $0x1,%ebx
    382c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    382f:	7c cf                	jl     3800 <gets+0x10>
    3831:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
    3833:	8b 45 08             	mov    0x8(%ebp),%eax
    3836:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
    383a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    383d:	5b                   	pop    %ebx
    383e:	5e                   	pop    %esi
    383f:	5f                   	pop    %edi
    3840:	5d                   	pop    %ebp
    3841:	c3                   	ret
    3842:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3849:	00 
    384a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003850 <stat>:

int
stat(const char *n, struct stat *st)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	56                   	push   %esi
    3854:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3855:	83 ec 08             	sub    $0x8,%esp
    3858:	6a 00                	push   $0x0
    385a:	ff 75 08             	push   0x8(%ebp)
    385d:	e8 36 03 00 00       	call   3b98 <open>
  if(fd < 0)
    3862:	83 c4 10             	add    $0x10,%esp
    3865:	85 c0                	test   %eax,%eax
    3867:	78 27                	js     3890 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3869:	83 ec 08             	sub    $0x8,%esp
    386c:	ff 75 0c             	push   0xc(%ebp)
    386f:	89 c3                	mov    %eax,%ebx
    3871:	50                   	push   %eax
    3872:	e8 39 03 00 00       	call   3bb0 <fstat>
  close(fd);
    3877:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    387a:	89 c6                	mov    %eax,%esi
  close(fd);
    387c:	e8 ff 02 00 00       	call   3b80 <close>
  return r;
    3881:	83 c4 10             	add    $0x10,%esp
}
    3884:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3887:	89 f0                	mov    %esi,%eax
    3889:	5b                   	pop    %ebx
    388a:	5e                   	pop    %esi
    388b:	5d                   	pop    %ebp
    388c:	c3                   	ret
    388d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3890:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3895:	eb ed                	jmp    3884 <stat+0x34>
    3897:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    389e:	00 
    389f:	90                   	nop

000038a0 <atoi>:

int
atoi(const char *s)
{
    38a0:	55                   	push   %ebp
    38a1:	b8 01 00 00 00       	mov    $0x1,%eax
    38a6:	89 e5                	mov    %esp,%ebp
    38a8:	56                   	push   %esi
    38a9:	8b 75 08             	mov    0x8(%ebp),%esi
    38ac:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
    38ad:	0f be 16             	movsbl (%esi),%edx
    38b0:	80 fa 2d             	cmp    $0x2d,%dl
    38b3:	75 0c                	jne    38c1 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
    38b5:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
    38b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
    38be:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
    38c1:	8d 4a d0             	lea    -0x30(%edx),%ecx
    38c4:	80 f9 09             	cmp    $0x9,%cl
    38c7:	77 37                	ja     3900 <atoi+0x60>
  n = 0;
    38c9:	31 c9                	xor    %ecx,%ecx
    38cb:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38d2:	00 
    38d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38da:	00 
    38db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
    38e0:	83 c6 01             	add    $0x1,%esi
    38e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    38e6:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
    38ea:	0f be 16             	movsbl (%esi),%edx
    38ed:	8d 5a d0             	lea    -0x30(%edx),%ebx
    38f0:	80 fb 09             	cmp    $0x9,%bl
    38f3:	76 eb                	jbe    38e0 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
    38f5:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
    38f6:	0f af c1             	imul   %ecx,%eax
}
    38f9:	5e                   	pop    %esi
    38fa:	5d                   	pop    %ebp
    38fb:	c3                   	ret
    38fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3900:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
    3901:	31 c0                	xor    %eax,%eax
}
    3903:	5e                   	pop    %esi
    3904:	5d                   	pop    %ebp
    3905:	c3                   	ret
    3906:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    390d:	00 
    390e:	66 90                	xchg   %ax,%ax

00003910 <atof>:

double atof(const char *s){
    3910:	55                   	push   %ebp
    3911:	89 e5                	mov    %esp,%ebp
    3913:	57                   	push   %edi
    3914:	56                   	push   %esi
    3915:	53                   	push   %ebx
    3916:	83 ec 0c             	sub    $0xc,%esp
    3919:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
    391c:	0f b6 0a             	movzbl (%edx),%ecx
    391f:	80 f9 2d             	cmp    $0x2d,%cl
    3922:	0f 84 28 01 00 00    	je     3a50 <atof+0x140>
  const char *integerPart = s;
    3928:	89 d3                	mov    %edx,%ebx
    392a:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
    392d:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
    3934:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
    3936:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
    393b:	84 c9                	test   %cl,%cl
    393d:	75 2f                	jne    396e <atof+0x5e>
    393f:	eb 7b                	jmp    39bc <atof+0xac>
    3941:	eb 1d                	jmp    3960 <atof+0x50>
    3943:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    394a:	00 
    394b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3952:	00 
    3953:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    395a:	00 
    395b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    3960:	0f b6 08             	movzbl (%eax),%ecx
    3963:	84 c9                	test   %cl,%cl
    3965:	0f 84 d5 00 00 00    	je     3a40 <atof+0x130>
    396b:	83 c0 01             	add    $0x1,%eax
    396e:	89 c2                	mov    %eax,%edx
    if(*s == c)
    3970:	80 f9 2e             	cmp    $0x2e,%cl
    3973:	75 eb                	jne    3960 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
    3975:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
    3978:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
    397a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    397d:	80 f9 09             	cmp    $0x9,%cl
    3980:	77 3a                	ja     39bc <atof+0xac>
    3982:	eb 1c                	jmp    39a0 <atof+0x90>
    3984:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    398b:	00 
    398c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3993:	00 
    3994:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    399b:	00 
    399c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
    39a0:	83 e8 30             	sub    $0x30,%eax
    39a3:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
    39a6:	83 c3 01             	add    $0x1,%ebx
    39a9:	0f be c0             	movsbl %al,%eax
    39ac:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
    39af:	0f b6 03             	movzbl (%ebx),%eax
    39b2:	8d 70 d0             	lea    -0x30(%eax),%esi
    39b5:	89 f1                	mov    %esi,%ecx
    39b7:	80 f9 09             	cmp    $0x9,%cl
    39ba:	76 e4                	jbe    39a0 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
    39bc:	0f b6 02             	movzbl (%edx),%eax
    39bf:	8d 58 d0             	lea    -0x30(%eax),%ebx
    39c2:	80 fb 09             	cmp    $0x9,%bl
    39c5:	0f 87 9d 00 00 00    	ja     3a68 <atof+0x158>
  double divisor = 10.0;   
    39cb:	d9 05 c8 58 00 00    	flds   0x58c8
  double fraction = 0.0;  
    39d1:	d9 ee                	fldz
    39d3:	eb 2d                	jmp    3a02 <atof+0xf2>
    39d5:	eb 29                	jmp    3a00 <atof+0xf0>
    39d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39de:	00 
    39df:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39e6:	00 
    39e7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39ee:	00 
    39ef:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39f6:	00 
    39f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39fe:	00 
    39ff:	90                   	nop
    3a00:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
    3a02:	83 e8 30             	sub    $0x30,%eax
    3a05:	83 c2 01             	add    $0x1,%edx
    3a08:	66 98                	cbtw
    3a0a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    3a0e:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
    3a11:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
    3a14:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
    3a16:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
    3a19:	de c1                	faddp  %st,%st(1)
    3a1b:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
    3a1d:	d8 0d c8 58 00 00    	fmuls  0x58c8
  while('0' <= *fractionPart && *fractionPart <= '9'){
    3a23:	80 fb 09             	cmp    $0x9,%bl
    3a26:	76 d8                	jbe    3a00 <atof+0xf0>
    3a28:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
    3a2a:	89 7d ec             	mov    %edi,-0x14(%ebp)
    3a2d:	db 45 ec             	fildl  -0x14(%ebp)
    3a30:	de c1                	faddp  %st,%st(1)
  return sign*answer;
    3a32:	db 45 e8             	fildl  -0x18(%ebp)
}
    3a35:	83 c4 0c             	add    $0xc,%esp
    3a38:	5b                   	pop    %ebx
    3a39:	5e                   	pop    %esi
    3a3a:	5f                   	pop    %edi
    3a3b:	5d                   	pop    %ebp
  return sign*answer;
    3a3c:	de c9                	fmulp  %st,%st(1)
}
    3a3e:	c3                   	ret
    3a3f:	90                   	nop
    3a40:	ba 01 00 00 00       	mov    $0x1,%edx
    3a45:	e9 2b ff ff ff       	jmp    3975 <atof+0x65>
    3a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
    3a50:	8d 42 01             	lea    0x1(%edx),%eax
    3a53:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
    3a5a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
    3a5c:	e9 0d ff ff ff       	jmp    396e <atof+0x5e>
    3a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
    3a68:	d9 ee                	fldz
    3a6a:	eb be                	jmp    3a2a <atof+0x11a>
    3a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003a70 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
    3a70:	55                   	push   %ebp
    3a71:	89 e5                	mov    %esp,%ebp
    3a73:	57                   	push   %edi
    3a74:	8b 45 10             	mov    0x10(%ebp),%eax
    3a77:	8b 55 08             	mov    0x8(%ebp),%edx
    3a7a:	56                   	push   %esi
    3a7b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3a7e:	85 c0                	test   %eax,%eax
    3a80:	7e 13                	jle    3a95 <memmove+0x25>
    3a82:	01 d0                	add    %edx,%eax
  dst = vdst;
    3a84:	89 d7                	mov    %edx,%edi
    3a86:	66 90                	xchg   %ax,%ax
    3a88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a8f:	00 
    *dst++ = *src++;
    3a90:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3a91:	39 f8                	cmp    %edi,%eax
    3a93:	75 fb                	jne    3a90 <memmove+0x20>
  return vdst;
}
    3a95:	5e                   	pop    %esi
    3a96:	89 d0                	mov    %edx,%eax
    3a98:	5f                   	pop    %edi
    3a99:	5d                   	pop    %ebp
    3a9a:	c3                   	ret
    3a9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00003aa0 <fsqrt>:

double fsqrt(double n) {
    3aa0:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
    3aa1:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
    3aa6:	89 e5                	mov    %esp,%ebp
    3aa8:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
    3aab:	d9 c0                	fld    %st(0)
    3aad:	d8 0d cc 58 00 00    	fmuls  0x58cc
    for (int i = 0; i < 20; i++) {
    3ab3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3aba:	00 
    3abb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
    3ac0:	d9 c1                	fld    %st(1)
    3ac2:	d8 f1                	fdiv   %st(1),%st
    3ac4:	de c1                	faddp  %st,%st(1)
    3ac6:	d8 0d cc 58 00 00    	fmuls  0x58cc
    for (int i = 0; i < 20; i++) {
    3acc:	83 e8 01             	sub    $0x1,%eax
    3acf:	75 ef                	jne    3ac0 <fsqrt+0x20>
    3ad1:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
    3ad3:	5d                   	pop    %ebp
    3ad4:	c3                   	ret
    3ad5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3adc:	00 
    3add:	8d 76 00             	lea    0x0(%esi),%esi

00003ae0 <insertionSort>:

void insertionSort(double arr[], int n)
{
    3ae0:	55                   	push   %ebp
    3ae1:	89 e5                	mov    %esp,%ebp
    3ae3:	57                   	push   %edi
    3ae4:	8b 7d 0c             	mov    0xc(%ebp),%edi
    3ae7:	56                   	push   %esi
    3ae8:	8b 75 08             	mov    0x8(%ebp),%esi
    3aeb:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
    3aec:	83 ff 01             	cmp    $0x1,%edi
    3aef:	7e 5a                	jle    3b4b <insertionSort+0x6b>
    3af1:	bb 01 00 00 00       	mov    $0x1,%ebx
    3af6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3afd:	00 
    3afe:	66 90                	xchg   %ax,%ax
        double key = arr[i];
    3b00:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
    3b03:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
    3b06:	8d 04 de             	lea    (%esi,%ebx,8),%eax
    3b09:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3b10:	00 
    3b11:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3b18:	00 
    3b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b20:	dd 40 f8             	fldl   -0x8(%eax)
    3b23:	89 c1                	mov    %eax,%ecx
    3b25:	db f1                	fcomi  %st(1),%st
    3b27:	76 17                	jbe    3b40 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
    3b29:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
    3b2c:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
    3b2e:	8d 41 f8             	lea    -0x8(%ecx),%eax
    3b31:	83 fa ff             	cmp    $0xffffffff,%edx
    3b34:	75 ea                	jne    3b20 <insertionSort+0x40>
    3b36:	89 f1                	mov    %esi,%ecx
    3b38:	eb 08                	jmp    3b42 <insertionSort+0x62>
    3b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3b40:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
    3b42:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
    3b45:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
    3b47:	39 df                	cmp    %ebx,%edi
    3b49:	75 b5                	jne    3b00 <insertionSort+0x20>
    }
    
    3b4b:	5b                   	pop    %ebx
    3b4c:	5e                   	pop    %esi
    3b4d:	5f                   	pop    %edi
    3b4e:	5d                   	pop    %ebp
    3b4f:	c3                   	ret

00003b50 <fork>:
    3b50:	b8 01 00 00 00       	mov    $0x1,%eax
    3b55:	cd 40                	int    $0x40
    3b57:	c3                   	ret

00003b58 <exit>:
    3b58:	b8 02 00 00 00       	mov    $0x2,%eax
    3b5d:	cd 40                	int    $0x40
    3b5f:	c3                   	ret

00003b60 <wait>:
    3b60:	b8 03 00 00 00       	mov    $0x3,%eax
    3b65:	cd 40                	int    $0x40
    3b67:	c3                   	ret

00003b68 <pipe>:
    3b68:	b8 04 00 00 00       	mov    $0x4,%eax
    3b6d:	cd 40                	int    $0x40
    3b6f:	c3                   	ret

00003b70 <read>:
    3b70:	b8 05 00 00 00       	mov    $0x5,%eax
    3b75:	cd 40                	int    $0x40
    3b77:	c3                   	ret

00003b78 <write>:
    3b78:	b8 10 00 00 00       	mov    $0x10,%eax
    3b7d:	cd 40                	int    $0x40
    3b7f:	c3                   	ret

00003b80 <close>:
    3b80:	b8 15 00 00 00       	mov    $0x15,%eax
    3b85:	cd 40                	int    $0x40
    3b87:	c3                   	ret

00003b88 <kill>:
    3b88:	b8 06 00 00 00       	mov    $0x6,%eax
    3b8d:	cd 40                	int    $0x40
    3b8f:	c3                   	ret

00003b90 <exec>:
    3b90:	b8 07 00 00 00       	mov    $0x7,%eax
    3b95:	cd 40                	int    $0x40
    3b97:	c3                   	ret

00003b98 <open>:
    3b98:	b8 0f 00 00 00       	mov    $0xf,%eax
    3b9d:	cd 40                	int    $0x40
    3b9f:	c3                   	ret

00003ba0 <mknod>:
    3ba0:	b8 11 00 00 00       	mov    $0x11,%eax
    3ba5:	cd 40                	int    $0x40
    3ba7:	c3                   	ret

00003ba8 <unlink>:
    3ba8:	b8 12 00 00 00       	mov    $0x12,%eax
    3bad:	cd 40                	int    $0x40
    3baf:	c3                   	ret

00003bb0 <fstat>:
    3bb0:	b8 08 00 00 00       	mov    $0x8,%eax
    3bb5:	cd 40                	int    $0x40
    3bb7:	c3                   	ret

00003bb8 <link>:
    3bb8:	b8 13 00 00 00       	mov    $0x13,%eax
    3bbd:	cd 40                	int    $0x40
    3bbf:	c3                   	ret

00003bc0 <mkdir>:
    3bc0:	b8 14 00 00 00       	mov    $0x14,%eax
    3bc5:	cd 40                	int    $0x40
    3bc7:	c3                   	ret

00003bc8 <chdir>:
    3bc8:	b8 09 00 00 00       	mov    $0x9,%eax
    3bcd:	cd 40                	int    $0x40
    3bcf:	c3                   	ret

00003bd0 <dup>:
    3bd0:	b8 0a 00 00 00       	mov    $0xa,%eax
    3bd5:	cd 40                	int    $0x40
    3bd7:	c3                   	ret

00003bd8 <getpid>:
    3bd8:	b8 0b 00 00 00       	mov    $0xb,%eax
    3bdd:	cd 40                	int    $0x40
    3bdf:	c3                   	ret

00003be0 <sbrk>:
    3be0:	b8 0c 00 00 00       	mov    $0xc,%eax
    3be5:	cd 40                	int    $0x40
    3be7:	c3                   	ret

00003be8 <sleep>:
    3be8:	b8 0d 00 00 00       	mov    $0xd,%eax
    3bed:	cd 40                	int    $0x40
    3bef:	c3                   	ret

00003bf0 <uptime>:
    3bf0:	b8 0e 00 00 00       	mov    $0xe,%eax
    3bf5:	cd 40                	int    $0x40
    3bf7:	c3                   	ret
    3bf8:	66 90                	xchg   %ax,%ax
    3bfa:	66 90                	xchg   %ax,%ax
    3bfc:	66 90                	xchg   %ax,%ax
    3bfe:	66 90                	xchg   %ax,%ax

00003c00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3c00:	55                   	push   %ebp
    3c01:	89 e5                	mov    %esp,%ebp
    3c03:	57                   	push   %edi
    3c04:	56                   	push   %esi
    3c05:	53                   	push   %ebx
    3c06:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3c08:	89 d1                	mov    %edx,%ecx
{
    3c0a:	83 ec 3c             	sub    $0x3c,%esp
    3c0d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
    3c10:	85 d2                	test   %edx,%edx
    3c12:	0f 89 98 00 00 00    	jns    3cb0 <printint+0xb0>
    3c18:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3c1c:	0f 84 8e 00 00 00    	je     3cb0 <printint+0xb0>
    x = -xx;
    3c22:	f7 d9                	neg    %ecx
    neg = 1;
    3c24:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
    3c29:	89 45 c0             	mov    %eax,-0x40(%ebp)
    3c2c:	31 f6                	xor    %esi,%esi
    3c2e:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c35:	00 
    3c36:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c3d:	00 
    3c3e:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
    3c40:	89 c8                	mov    %ecx,%eax
    3c42:	31 d2                	xor    %edx,%edx
    3c44:	89 f7                	mov    %esi,%edi
    3c46:	f7 f3                	div    %ebx
    3c48:	8d 76 01             	lea    0x1(%esi),%esi
    3c4b:	0f b6 92 28 59 00 00 	movzbl 0x5928(%edx),%edx
    3c52:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    3c56:	89 ca                	mov    %ecx,%edx
    3c58:	89 c1                	mov    %eax,%ecx
    3c5a:	39 da                	cmp    %ebx,%edx
    3c5c:	73 e2                	jae    3c40 <printint+0x40>
  if(neg)
    3c5e:	8b 45 c0             	mov    -0x40(%ebp),%eax
    3c61:	85 c0                	test   %eax,%eax
    3c63:	74 07                	je     3c6c <printint+0x6c>
    buf[i++] = '-';
    3c65:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    3c6a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
    3c6c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
    3c6f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
    3c72:	01 df                	add    %ebx,%edi
    3c74:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c7b:	00 
    3c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
    3c80:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
    3c83:	83 ec 04             	sub    $0x4,%esp
    3c86:	88 45 d7             	mov    %al,-0x29(%ebp)
    3c89:	8d 45 d7             	lea    -0x29(%ebp),%eax
    3c8c:	6a 01                	push   $0x1
    3c8e:	50                   	push   %eax
    3c8f:	56                   	push   %esi
    3c90:	e8 e3 fe ff ff       	call   3b78 <write>
  while(--i >= 0)
    3c95:	89 f8                	mov    %edi,%eax
    3c97:	83 c4 10             	add    $0x10,%esp
    3c9a:	83 ef 01             	sub    $0x1,%edi
    3c9d:	39 d8                	cmp    %ebx,%eax
    3c9f:	75 df                	jne    3c80 <printint+0x80>
}
    3ca1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ca4:	5b                   	pop    %ebx
    3ca5:	5e                   	pop    %esi
    3ca6:	5f                   	pop    %edi
    3ca7:	5d                   	pop    %ebp
    3ca8:	c3                   	ret
    3ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3cb0:	31 c0                	xor    %eax,%eax
    3cb2:	e9 72 ff ff ff       	jmp    3c29 <printint+0x29>
    3cb7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3cbe:	00 
    3cbf:	90                   	nop

00003cc0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
    3cc0:	55                   	push   %ebp
    3cc1:	89 e5                	mov    %esp,%ebp
    3cc3:	57                   	push   %edi
    3cc4:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    3cc5:	8d 7d 10             	lea    0x10(%ebp),%edi
{
    3cc8:	53                   	push   %ebx
    3cc9:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
    3ccc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
    3ccf:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    3cd2:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
    3cd5:	0f b6 01             	movzbl (%ecx),%eax
    3cd8:	84 c0                	test   %al,%al
    3cda:	74 2f                	je     3d0b <printf+0x4b>
    3cdc:	31 db                	xor    %ebx,%ebx
    3cde:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    3ce0:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
    3ce3:	83 fa 25             	cmp    $0x25,%edx
    3ce6:	74 30                	je     3d18 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
    3ce8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3ceb:	83 ec 04             	sub    $0x4,%esp
    3cee:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3cf1:	6a 01                	push   $0x1
    3cf3:	50                   	push   %eax
    3cf4:	56                   	push   %esi
    3cf5:	e8 7e fe ff ff       	call   3b78 <write>
        putc(fd, c);
    3cfa:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3cfd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3d00:	83 c3 01             	add    $0x1,%ebx
    3d03:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    3d07:	84 c0                	test   %al,%al
    3d09:	75 d5                	jne    3ce0 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3d0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d0e:	5b                   	pop    %ebx
    3d0f:	5e                   	pop    %esi
    3d10:	5f                   	pop    %edi
    3d11:	5d                   	pop    %ebp
    3d12:	c3                   	ret
    3d13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
    3d18:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
    3d1d:	8d 7b 01             	lea    0x1(%ebx),%edi
    3d20:	84 d2                	test   %dl,%dl
    3d22:	74 e7                	je     3d0b <printf+0x4b>
    c = fmt[i] & 0xff;
    3d24:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
    3d27:	80 fa 25             	cmp    $0x25,%dl
    3d2a:	0f 84 10 02 00 00    	je     3f40 <printf+0x280>
    3d30:	83 e8 63             	sub    $0x63,%eax
    3d33:	83 f8 15             	cmp    $0x15,%eax
    3d36:	77 08                	ja     3d40 <printf+0x80>
    3d38:	ff 24 85 d0 58 00 00 	jmp    *0x58d0(,%eax,4)
    3d3f:	90                   	nop
  write(fd, &c, 1);
    3d40:	83 ec 04             	sub    $0x4,%esp
    3d43:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3d46:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
    3d49:	89 fb                	mov    %edi,%ebx
    3d4b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    3d4f:	6a 01                	push   $0x1
    3d51:	51                   	push   %ecx
    3d52:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    3d55:	56                   	push   %esi
    3d56:	e8 1d fe ff ff       	call   3b78 <write>
        putc(fd, c);
    3d5b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
    3d5f:	83 c4 0c             	add    $0xc,%esp
    3d62:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3d65:	6a 01                	push   $0x1
    3d67:	8b 4d c8             	mov    -0x38(%ebp),%ecx
    3d6a:	51                   	push   %ecx
    3d6b:	56                   	push   %esi
    3d6c:	e8 07 fe ff ff       	call   3b78 <write>
        putc(fd, c);
    3d71:	83 c4 10             	add    $0x10,%esp
    3d74:	eb 87                	jmp    3cfd <printf+0x3d>
    3d76:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3d7d:	00 
    3d7e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    3d80:	8b 7d d0             	mov    -0x30(%ebp),%edi
    3d83:	83 ec 0c             	sub    $0xc,%esp
    3d86:	b9 10 00 00 00       	mov    $0x10,%ecx
    3d8b:	8b 17                	mov    (%edi),%edx
    3d8d:	6a 00                	push   $0x0
    3d8f:	89 f0                	mov    %esi,%eax
    3d91:	e8 6a fe ff ff       	call   3c00 <printint>
        ap++;
    3d96:	83 c7 04             	add    $0x4,%edi
    3d99:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
    3d9c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3d9f:	83 c3 02             	add    $0x2,%ebx
    3da2:	83 c4 10             	add    $0x10,%esp
    3da5:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    3da9:	84 c0                	test   %al,%al
    3dab:	0f 85 2f ff ff ff    	jne    3ce0 <printf+0x20>
}
    3db1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3db4:	5b                   	pop    %ebx
    3db5:	5e                   	pop    %esi
    3db6:	5f                   	pop    %edi
    3db7:	5d                   	pop    %ebp
    3db8:	c3                   	ret
    3db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
    3dc0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3dc3:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
    3dc5:	d9 7d d6             	fnstcw -0x2a(%ebp)
    3dc8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
    3dcc:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
    3dcf:	80 cc 0c             	or     $0xc,%ah
    3dd2:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
    3dd6:	d9 6d d4             	fldcw  -0x2c(%ebp)
    3dd9:	db 55 c0             	fistl  -0x40(%ebp)
    3ddc:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
    3ddf:	db 45 c0             	fildl  -0x40(%ebp)
    3de2:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
    3de4:	d9 ee                	fldz
    3de6:	df f1                	fcomip %st(1),%st
    3de8:	0f 87 82 01 00 00    	ja     3f70 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
    3dee:	83 ec 0c             	sub    $0xc,%esp
    3df1:	dd 5d b0             	fstpl  -0x50(%ebp)
    3df4:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3df9:	89 f0                	mov    %esi,%eax
    3dfb:	6a 01                	push   $0x1
    3dfd:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
    3e00:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
    3e05:	e8 f6 fd ff ff       	call   3c00 <printint>
  write(fd, &c, 1);
    3e0a:	83 c4 0c             	add    $0xc,%esp
    3e0d:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3e10:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
    3e14:	6a 01                	push   $0x1
    3e16:	51                   	push   %ecx
    3e17:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    3e1a:	56                   	push   %esi
    3e1b:	e8 58 fd ff ff       	call   3b78 <write>
        putc(fd, '.'); //adds the decimal point
    3e20:	8b 4d c8             	mov    -0x38(%ebp),%ecx
    3e23:	83 c4 10             	add    $0x10,%esp
    3e26:	dd 45 b0             	fldl   -0x50(%ebp)
    3e29:	89 5d b8             	mov    %ebx,-0x48(%ebp)
    3e2c:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
    3e2f:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
    3e32:	d8 0d c8 58 00 00    	fmuls  0x58c8
          int digit = (int) fraction_part;
    3e38:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
    3e3c:	80 cc 0c             	or     $0xc,%ah
    3e3f:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
    3e43:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
    3e48:	d9 6d d4             	fldcw  -0x2c(%ebp)
    3e4b:	db 55 c8             	fistl  -0x38(%ebp)
    3e4e:	d9 6d d6             	fldcw  -0x2a(%ebp)
    3e51:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
    3e54:	39 c3                	cmp    %eax,%ebx
    3e56:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
    3e59:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
    3e5c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
    3e5f:	8d 43 30             	lea    0x30(%ebx),%eax
    3e62:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3e65:	6a 01                	push   $0x1
    3e67:	ff 75 bc             	push   -0x44(%ebp)
    3e6a:	56                   	push   %esi
    3e6b:	e8 08 fd ff ff       	call   3b78 <write>
          fraction_part -= digit;
    3e70:	89 5d c8             	mov    %ebx,-0x38(%ebp)
    3e73:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
    3e76:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
    3e79:	dd 45 c0             	fldl   -0x40(%ebp)
    3e7c:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
    3e7e:	83 ef 01             	sub    $0x1,%edi
    3e81:	75 ac                	jne    3e2f <printf+0x16f>
    3e83:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
    3e85:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3e88:	8b 5d b8             	mov    -0x48(%ebp),%ebx
    3e8b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
    3e8e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3e91:	83 c3 02             	add    $0x2,%ebx
    3e94:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    3e98:	84 c0                	test   %al,%al
    3e9a:	0f 85 40 fe ff ff    	jne    3ce0 <printf+0x20>
}
    3ea0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ea3:	5b                   	pop    %ebx
    3ea4:	5e                   	pop    %esi
    3ea5:	5f                   	pop    %edi
    3ea6:	5d                   	pop    %ebp
    3ea7:	c3                   	ret
    3ea8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3eaf:	00 
        s = (char*)*ap;
    3eb0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3eb3:	8b 38                	mov    (%eax),%edi
        ap++;
    3eb5:	83 c0 04             	add    $0x4,%eax
    3eb8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3ebb:	85 ff                	test   %edi,%edi
    3ebd:	0f 84 9d 00 00 00    	je     3f60 <printf+0x2a0>
        while(*s != 0){
    3ec3:	0f b6 07             	movzbl (%edi),%eax
    3ec6:	84 c0                	test   %al,%al
    3ec8:	0f 84 a9 00 00 00    	je     3f77 <printf+0x2b7>
    3ece:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3ed1:	89 5d c8             	mov    %ebx,-0x38(%ebp)
    3ed4:	89 fb                	mov    %edi,%ebx
    3ed6:	89 cf                	mov    %ecx,%edi
    3ed8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3edf:	00 
  write(fd, &c, 1);
    3ee0:	83 ec 04             	sub    $0x4,%esp
    3ee3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    3ee6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3ee9:	6a 01                	push   $0x1
    3eeb:	57                   	push   %edi
    3eec:	56                   	push   %esi
    3eed:	e8 86 fc ff ff       	call   3b78 <write>
        while(*s != 0){
    3ef2:	0f b6 03             	movzbl (%ebx),%eax
    3ef5:	83 c4 10             	add    $0x10,%esp
    3ef8:	84 c0                	test   %al,%al
    3efa:	75 e4                	jne    3ee0 <printf+0x220>
    3efc:	8b 5d c8             	mov    -0x38(%ebp),%ebx
    3eff:	eb 8d                	jmp    3e8e <printf+0x1ce>
    3f01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
    3f08:	8b 7d d0             	mov    -0x30(%ebp),%edi
    3f0b:	83 ec 0c             	sub    $0xc,%esp
    3f0e:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3f13:	8b 17                	mov    (%edi),%edx
    3f15:	6a 01                	push   $0x1
    3f17:	e9 73 fe ff ff       	jmp    3d8f <printf+0xcf>
    3f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    3f20:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
    3f23:	83 ec 04             	sub    $0x4,%esp
    3f26:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
    3f29:	8b 07                	mov    (%edi),%eax
    3f2b:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3f2e:	6a 01                	push   $0x1
    3f30:	51                   	push   %ecx
    3f31:	56                   	push   %esi
    3f32:	e8 41 fc ff ff       	call   3b78 <write>
    3f37:	e9 5a fe ff ff       	jmp    3d96 <printf+0xd6>
    3f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3f40:	83 ec 04             	sub    $0x4,%esp
    3f43:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3f46:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3f49:	6a 01                	push   $0x1
    3f4b:	51                   	push   %ecx
    3f4c:	56                   	push   %esi
    3f4d:	e8 26 fc ff ff       	call   3b78 <write>
    3f52:	e9 45 fe ff ff       	jmp    3d9c <printf+0xdc>
    3f57:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3f5e:	00 
    3f5f:	90                   	nop
    3f60:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    3f65:	bf 49 51 00 00       	mov    $0x5149,%edi
    3f6a:	e9 5f ff ff ff       	jmp    3ece <printf+0x20e>
    3f6f:	90                   	nop
          fraction_part = -fraction_part;
    3f70:	d9 e0                	fchs
    3f72:	e9 77 fe ff ff       	jmp    3dee <printf+0x12e>
  for(i = 0; fmt[i]; i++){
    3f77:	83 c3 02             	add    $0x2,%ebx
    3f7a:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
    3f7e:	84 c0                	test   %al,%al
    3f80:	0f 85 5a fd ff ff    	jne    3ce0 <printf+0x20>
    3f86:	e9 80 fd ff ff       	jmp    3d0b <printf+0x4b>
    3f8b:	66 90                	xchg   %ax,%ax
    3f8d:	66 90                	xchg   %ax,%ax
    3f8f:	66 90                	xchg   %ax,%ax
    3f91:	66 90                	xchg   %ax,%ax
    3f93:	66 90                	xchg   %ax,%ax
    3f95:	66 90                	xchg   %ax,%ax
    3f97:	66 90                	xchg   %ax,%ax
    3f99:	66 90                	xchg   %ax,%ax
    3f9b:	66 90                	xchg   %ax,%ax
    3f9d:	66 90                	xchg   %ax,%ax
    3f9f:	90                   	nop

00003fa0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3fa0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3fa1:	a1 a0 aa 00 00       	mov    0xaaa0,%eax
{
    3fa6:	89 e5                	mov    %esp,%ebp
    3fa8:	57                   	push   %edi
    3fa9:	56                   	push   %esi
    3faa:	53                   	push   %ebx
    3fab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3fae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3fb1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3fb8:	00 
    3fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3fc0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3fc2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3fc4:	39 ca                	cmp    %ecx,%edx
    3fc6:	73 30                	jae    3ff8 <free+0x58>
    3fc8:	39 c1                	cmp    %eax,%ecx
    3fca:	72 04                	jb     3fd0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3fcc:	39 c2                	cmp    %eax,%edx
    3fce:	72 f0                	jb     3fc0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3fd0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3fd3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3fd6:	39 f8                	cmp    %edi,%eax
    3fd8:	74 36                	je     4010 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3fda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3fdd:	8b 42 04             	mov    0x4(%edx),%eax
    3fe0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3fe3:	39 f1                	cmp    %esi,%ecx
    3fe5:	74 40                	je     4027 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    3fe7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3fe9:	5b                   	pop    %ebx
  freep = p;
    3fea:	89 15 a0 aa 00 00    	mov    %edx,0xaaa0
}
    3ff0:	5e                   	pop    %esi
    3ff1:	5f                   	pop    %edi
    3ff2:	5d                   	pop    %ebp
    3ff3:	c3                   	ret
    3ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3ff8:	39 c2                	cmp    %eax,%edx
    3ffa:	72 c4                	jb     3fc0 <free+0x20>
    3ffc:	39 c1                	cmp    %eax,%ecx
    3ffe:	73 c0                	jae    3fc0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    4000:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4003:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4006:	39 f8                	cmp    %edi,%eax
    4008:	75 d0                	jne    3fda <free+0x3a>
    400a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    4010:	03 70 04             	add    0x4(%eax),%esi
    4013:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4016:	8b 02                	mov    (%edx),%eax
    4018:	8b 00                	mov    (%eax),%eax
    401a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    401d:	8b 42 04             	mov    0x4(%edx),%eax
    4020:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    4023:	39 f1                	cmp    %esi,%ecx
    4025:	75 c0                	jne    3fe7 <free+0x47>
    p->s.size += bp->s.size;
    4027:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    402a:	89 15 a0 aa 00 00    	mov    %edx,0xaaa0
    p->s.size += bp->s.size;
    4030:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    4033:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    4036:	89 0a                	mov    %ecx,(%edx)
}
    4038:	5b                   	pop    %ebx
    4039:	5e                   	pop    %esi
    403a:	5f                   	pop    %edi
    403b:	5d                   	pop    %ebp
    403c:	c3                   	ret
    403d:	8d 76 00             	lea    0x0(%esi),%esi

00004040 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4040:	55                   	push   %ebp
    4041:	89 e5                	mov    %esp,%ebp
    4043:	57                   	push   %edi
    4044:	56                   	push   %esi
    4045:	53                   	push   %ebx
    4046:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4049:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    404c:	8b 15 a0 aa 00 00    	mov    0xaaa0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4052:	8d 78 07             	lea    0x7(%eax),%edi
    4055:	c1 ef 03             	shr    $0x3,%edi
    4058:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    405b:	85 d2                	test   %edx,%edx
    405d:	0f 84 8d 00 00 00    	je     40f0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4063:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4065:	8b 48 04             	mov    0x4(%eax),%ecx
    4068:	39 f9                	cmp    %edi,%ecx
    406a:	73 64                	jae    40d0 <malloc+0x90>
  if(nu < 4096)
    406c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    4071:	39 df                	cmp    %ebx,%edi
    4073:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    4076:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    407d:	eb 0a                	jmp    4089 <malloc+0x49>
    407f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4080:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4082:	8b 48 04             	mov    0x4(%eax),%ecx
    4085:	39 f9                	cmp    %edi,%ecx
    4087:	73 47                	jae    40d0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4089:	89 c2                	mov    %eax,%edx
    408b:	39 05 a0 aa 00 00    	cmp    %eax,0xaaa0
    4091:	75 ed                	jne    4080 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    4093:	83 ec 0c             	sub    $0xc,%esp
    4096:	56                   	push   %esi
    4097:	e8 44 fb ff ff       	call   3be0 <sbrk>
  if(p == (char*)-1)
    409c:	83 c4 10             	add    $0x10,%esp
    409f:	83 f8 ff             	cmp    $0xffffffff,%eax
    40a2:	74 1c                	je     40c0 <malloc+0x80>
  hp->s.size = nu;
    40a4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    40a7:	83 ec 0c             	sub    $0xc,%esp
    40aa:	83 c0 08             	add    $0x8,%eax
    40ad:	50                   	push   %eax
    40ae:	e8 ed fe ff ff       	call   3fa0 <free>
  return freep;
    40b3:	8b 15 a0 aa 00 00    	mov    0xaaa0,%edx
      if((p = morecore(nunits)) == 0)
    40b9:	83 c4 10             	add    $0x10,%esp
    40bc:	85 d2                	test   %edx,%edx
    40be:	75 c0                	jne    4080 <malloc+0x40>
        return 0;
  }
}
    40c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    40c3:	31 c0                	xor    %eax,%eax
}
    40c5:	5b                   	pop    %ebx
    40c6:	5e                   	pop    %esi
    40c7:	5f                   	pop    %edi
    40c8:	5d                   	pop    %ebp
    40c9:	c3                   	ret
    40ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    40d0:	39 cf                	cmp    %ecx,%edi
    40d2:	74 4c                	je     4120 <malloc+0xe0>
        p->s.size -= nunits;
    40d4:	29 f9                	sub    %edi,%ecx
    40d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    40d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    40dc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    40df:	89 15 a0 aa 00 00    	mov    %edx,0xaaa0
}
    40e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    40e8:	83 c0 08             	add    $0x8,%eax
}
    40eb:	5b                   	pop    %ebx
    40ec:	5e                   	pop    %esi
    40ed:	5f                   	pop    %edi
    40ee:	5d                   	pop    %ebp
    40ef:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    40f0:	c7 05 a0 aa 00 00 a4 	movl   $0xaaa4,0xaaa0
    40f7:	aa 00 00 
    base.s.size = 0;
    40fa:	b8 a4 aa 00 00       	mov    $0xaaa4,%eax
    base.s.ptr = freep = prevp = &base;
    40ff:	c7 05 a4 aa 00 00 a4 	movl   $0xaaa4,0xaaa4
    4106:	aa 00 00 
    base.s.size = 0;
    4109:	c7 05 a8 aa 00 00 00 	movl   $0x0,0xaaa8
    4110:	00 00 00 
    if(p->s.size >= nunits){
    4113:	e9 54 ff ff ff       	jmp    406c <malloc+0x2c>
    4118:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    411f:	00 
        prevp->s.ptr = p->s.ptr;
    4120:	8b 08                	mov    (%eax),%ecx
    4122:	89 0a                	mov    %ecx,(%edx)
    4124:	eb b9                	jmp    40df <malloc+0x9f>
