
_printstats:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    }
    return 1;

}

int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
  14:	8b 11                	mov    (%ecx),%edx
  16:	8b 49 04             	mov    0x4(%ecx),%ecx
    double numbers[argc - 1];
  19:	89 e6                	mov    %esp,%esi
  1b:	8d 42 ff             	lea    -0x1(%edx),%eax
  1e:	89 45 d0             	mov    %eax,-0x30(%ebp)
  21:	c1 e0 03             	shl    $0x3,%eax
  24:	89 45 cc             	mov    %eax,-0x34(%ebp)
  27:	83 c0 13             	add    $0x13,%eax
  2a:	89 c3                	mov    %eax,%ebx
  2c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  31:	29 c6                	sub    %eax,%esi
  33:	83 e3 f0             	and    $0xfffffff0,%ebx
  36:	39 f4                	cmp    %esi,%esp
  38:	74 12                	je     4c <main+0x4c>
  3a:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  40:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  47:	00 
  48:	39 f4                	cmp    %esi,%esp
  4a:	75 ee                	jne    3a <main+0x3a>
  4c:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
  52:	29 dc                	sub    %ebx,%esp
  54:	85 db                	test   %ebx,%ebx
  56:	0f 85 04 01 00 00    	jne    160 <main+0x160>
  5c:	8d 7c 24 07          	lea    0x7(%esp),%edi
  60:	83 e7 f8             	and    $0xfffffff8,%edi
    if (argc == 1) {
  63:	83 fa 01             	cmp    $0x1,%edx
  66:	0f 84 26 01 00 00    	je     192 <main+0x192>
        printf(1, "No arguments provided.\n");
        exit();
    }
    for (int i = 1; i < argc; i++){
  6c:	bb 01 00 00 00       	mov    $0x1,%ebx
  71:	0f 8e f3 00 00 00    	jle    16a <main+0x16a>
  77:	89 55 d8             	mov    %edx,-0x28(%ebp)
  7a:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  7d:	8d 76 00             	lea    0x0(%esi),%esi
        if (validNumber(argv[i]) == -1){
  80:	8b 45 e0             	mov    -0x20(%ebp),%eax
  83:	83 ec 0c             	sub    $0xc,%esp
  86:	8b 34 98             	mov    (%eax,%ebx,4),%esi
  89:	56                   	push   %esi
  8a:	e8 61 02 00 00       	call   2f0 <validNumber>
  8f:	83 c4 10             	add    $0x10,%esp
  92:	83 f8 ff             	cmp    $0xffffffff,%eax
  95:	0f 84 e4 00 00 00    	je     17f <main+0x17f>
            printf(1, "wrong value at %s\n", argv[i]);
            exit();
        }
        numbers[i - 1] = atof(argv[i]); 
  9b:	83 ec 0c             	sub    $0xc,%esp
  9e:	56                   	push   %esi
  9f:	e8 2c 05 00 00       	call   5d0 <atof>
    for (int i = 1; i < argc; i++){
  a4:	83 c4 10             	add    $0x10,%esp
        numbers[i - 1] = atof(argv[i]); 
  a7:	dd 5c df f8          	fstpl  -0x8(%edi,%ebx,8)
    for (int i = 1; i < argc; i++){
  ab:	83 c3 01             	add    $0x1,%ebx
  ae:	39 5d d8             	cmp    %ebx,-0x28(%ebp)
  b1:	75 cd                	jne    80 <main+0x80>
    }

    insertionSort(numbers, argc - 1);
  b3:	83 ec 08             	sub    $0x8,%esp
  b6:	ff 75 d0             	push   -0x30(%ebp)
  b9:	57                   	push   %edi
  ba:	e8 e1 06 00 00       	call   7a0 <insertionSort>
    for (int i = 0; i < n; i++) {
  bf:	8b 4d cc             	mov    -0x34(%ebp),%ecx
  c2:	83 c4 10             	add    $0x10,%esp
  c5:	89 f8                	mov    %edi,%eax
    double totalSum = 0.0;
  c7:	d9 ee                	fldz
  c9:	8d 14 0f             	lea    (%edi,%ecx,1),%edx
  cc:	83 e1 08             	and    $0x8,%ecx
  cf:	74 0f                	je     e0 <main+0xe0>
        totalSum += arr[i];
  d1:	dc 07                	faddl  (%edi)
    for (int i = 0; i < n; i++) {
  d3:	8d 47 08             	lea    0x8(%edi),%eax
  d6:	39 d0                	cmp    %edx,%eax
  d8:	74 12                	je     ec <main+0xec>
  da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        totalSum += arr[i];
  e0:	dc 00                	faddl  (%eax)
    for (int i = 0; i < n; i++) {
  e2:	83 c0 10             	add    $0x10,%eax
        totalSum += arr[i];
  e5:	dc 40 f8             	faddl  -0x8(%eax)
    for (int i = 0; i < n; i++) {
  e8:	39 d0                	cmp    %edx,%eax
  ea:	75 f4                	jne    e0 <main+0xe0>
    return (double)(totalSum/n);
  ec:	8b 75 d0             	mov    -0x30(%ebp),%esi
    double meanValue = mean(numbers, argc - 1);
    double medianValue = median(numbers, argc - 1);
  ef:	83 ec 08             	sub    $0x8,%esp
    return (double)(totalSum/n);
  f2:	89 75 e0             	mov    %esi,-0x20(%ebp)
  f5:	db 45 e0             	fildl  -0x20(%ebp)
  f8:	de f9                	fdivrp %st,%st(1)
  fa:	dd 5d d0             	fstpl  -0x30(%ebp)
    double medianValue = median(numbers, argc - 1);
  fd:	56                   	push   %esi
  fe:	57                   	push   %edi
  ff:	e8 1c 01 00 00       	call   220 <median>
 104:	58                   	pop    %eax
 105:	5a                   	pop    %edx
 106:	dd 5d d8             	fstpl  -0x28(%ebp)
    double standardDeviationValue = standardDeviation(numbers, argc - 1);
 109:	56                   	push   %esi
 10a:	57                   	push   %edi
 10b:	e8 50 01 00 00       	call   260 <standardDeviation>

    // print each value on its own line
    printf(1, "Mean: %f\n", meanValue);
 110:	83 ec 08             	sub    $0x8,%esp
    double standardDeviationValue = standardDeviation(numbers, argc - 1);
 113:	dd 5d e0             	fstpl  -0x20(%ebp)
    printf(1, "Mean: %f\n", meanValue);
 116:	dd 45 d0             	fldl   -0x30(%ebp)
 119:	dd 1c 24             	fstpl  (%esp)
 11c:	68 13 0e 00 00       	push   $0xe13
 121:	6a 01                	push   $0x1
 123:	e8 58 08 00 00       	call   980 <printf>
    printf(1, "Median: %f\n", medianValue);
 128:	dd 45 d8             	fldl   -0x28(%ebp)
 12b:	83 c4 18             	add    $0x18,%esp
 12e:	dd 1c 24             	fstpl  (%esp)
 131:	68 1d 0e 00 00       	push   $0xe1d
 136:	6a 01                	push   $0x1
 138:	e8 43 08 00 00       	call   980 <printf>
    printf(1, "Standard Deviation: %f\n", standardDeviationValue);
 13d:	dd 45 e0             	fldl   -0x20(%ebp)
 140:	83 ec 08             	sub    $0x8,%esp
 143:	dd 1c 24             	fstpl  (%esp)
 146:	68 29 0e 00 00       	push   $0xe29
 14b:	6a 01                	push   $0x1
 14d:	e8 2e 08 00 00       	call   980 <printf>
    return 0;
}
 152:	8d 65 f0             	lea    -0x10(%ebp),%esp
 155:	31 c0                	xor    %eax,%eax
 157:	59                   	pop    %ecx
 158:	5b                   	pop    %ebx
 159:	5e                   	pop    %esi
 15a:	5f                   	pop    %edi
 15b:	5d                   	pop    %ebp
 15c:	8d 61 fc             	lea    -0x4(%ecx),%esp
 15f:	c3                   	ret
    double numbers[argc - 1];
 160:	83 4c 1c fc 00       	orl    $0x0,-0x4(%esp,%ebx,1)
 165:	e9 f2 fe ff ff       	jmp    5c <main+0x5c>
    insertionSort(numbers, argc - 1);
 16a:	51                   	push   %ecx
 16b:	51                   	push   %ecx
 16c:	ff 75 d0             	push   -0x30(%ebp)
 16f:	57                   	push   %edi
 170:	e8 2b 06 00 00       	call   7a0 <insertionSort>
 175:	83 c4 10             	add    $0x10,%esp
    double totalSum = 0.0;
 178:	d9 ee                	fldz
 17a:	e9 6d ff ff ff       	jmp    ec <main+0xec>
            printf(1, "wrong value at %s\n", argv[i]);
 17f:	53                   	push   %ebx
 180:	56                   	push   %esi
 181:	68 00 0e 00 00       	push   $0xe00
 186:	6a 01                	push   $0x1
 188:	e8 f3 07 00 00       	call   980 <printf>
            exit();
 18d:	e8 86 06 00 00       	call   818 <exit>
        printf(1, "No arguments provided.\n");
 192:	56                   	push   %esi
 193:	56                   	push   %esi
 194:	68 e8 0d 00 00       	push   $0xde8
 199:	6a 01                	push   $0x1
 19b:	e8 e0 07 00 00       	call   980 <printf>
        exit();
 1a0:	e8 73 06 00 00       	call   818 <exit>
 1a5:	66 90                	xchg   %ax,%ax
 1a7:	66 90                	xchg   %ax,%ax
 1a9:	66 90                	xchg   %ax,%ax
 1ab:	66 90                	xchg   %ax,%ax
 1ad:	66 90                	xchg   %ax,%ax
 1af:	66 90                	xchg   %ax,%ax
 1b1:	66 90                	xchg   %ax,%ax
 1b3:	66 90                	xchg   %ax,%ax
 1b5:	66 90                	xchg   %ax,%ax
 1b7:	66 90                	xchg   %ax,%ax
 1b9:	66 90                	xchg   %ax,%ax
 1bb:	66 90                	xchg   %ax,%ax
 1bd:	66 90                	xchg   %ax,%ax
 1bf:	90                   	nop

000001c0 <mean>:
double mean(double arr[], int n){
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	83 ec 08             	sub    $0x8,%esp
 1c6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    for (int i = 0; i < n; i++) {
 1c9:	85 c9                	test   %ecx,%ecx
 1cb:	7e 43                	jle    210 <mean+0x50>
 1cd:	8b 45 08             	mov    0x8(%ebp),%eax
    double totalSum = 0.0;
 1d0:	d9 ee                	fldz
 1d2:	8d 14 c8             	lea    (%eax,%ecx,8),%edx
 1d5:	f6 c1 01             	test   $0x1,%cl
 1d8:	74 16                	je     1f0 <mean+0x30>
        totalSum += arr[i];
 1da:	dc 00                	faddl  (%eax)
    for (int i = 0; i < n; i++) {
 1dc:	83 c0 08             	add    $0x8,%eax
 1df:	39 d0                	cmp    %edx,%eax
 1e1:	74 19                	je     1fc <mean+0x3c>
 1e3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ea:	00 
 1eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        totalSum += arr[i];
 1f0:	dc 00                	faddl  (%eax)
    for (int i = 0; i < n; i++) {
 1f2:	83 c0 10             	add    $0x10,%eax
        totalSum += arr[i];
 1f5:	dc 40 f8             	faddl  -0x8(%eax)
    for (int i = 0; i < n; i++) {
 1f8:	39 d0                	cmp    %edx,%eax
 1fa:	75 f4                	jne    1f0 <mean+0x30>
    return (double)(totalSum/n);
 1fc:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 1ff:	db 45 fc             	fildl  -0x4(%ebp)
}
 202:	c9                   	leave
    return (double)(totalSum/n);
 203:	de f9                	fdivrp %st,%st(1)
}
 205:	c3                   	ret
 206:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20d:	00 
 20e:	66 90                	xchg   %ax,%ax
    return (double)(totalSum/n);
 210:	89 4d fc             	mov    %ecx,-0x4(%ebp)
    double totalSum = 0.0;
 213:	d9 ee                	fldz
    return (double)(totalSum/n);
 215:	db 45 fc             	fildl  -0x4(%ebp)
}
 218:	c9                   	leave
    return (double)(totalSum/n);
 219:	de f9                	fdivrp %st,%st(1)
}
 21b:	c3                   	ret
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <median>:
double median(double arr[], int n){
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	53                   	push   %ebx
 224:	8b 55 0c             	mov    0xc(%ebp),%edx
 227:	8b 4d 08             	mov    0x8(%ebp),%ecx
        median = (double) ( (arr[ (int) (n / 2) - 1 ] + arr[ (int)(n / 2)]) / 2.0 );
 22a:	89 d0                	mov    %edx,%eax
 22c:	c1 e8 1f             	shr    $0x1f,%eax
 22f:	01 d0                	add    %edx,%eax
 231:	d1 f8                	sar    $1,%eax
    if ((n - 1) % 2){
 233:	83 e2 01             	and    $0x1,%edx
        median = (double) ( (arr[ (int) (n / 2) - 1 ] + arr[ (int)(n / 2)]) / 2.0 );
 236:	dd 04 c1             	fldl   (%ecx,%eax,8)
    if ((n - 1) % 2){
 239:	75 11                	jne    24c <median+0x2c>
 23b:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
        median = (double) ( (arr[ (int) (n / 2) - 1 ] + arr[ (int)(n / 2)]) / 2.0 );
 242:	dc 44 19 f8          	faddl  -0x8(%ecx,%ebx,1)
 246:	d8 0d 48 0e 00 00    	fmuls  0xe48
}
 24c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 24f:	c9                   	leave
 250:	c3                   	ret
 251:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 258:	00 
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000260 <standardDeviation>:
double standardDeviation(double arr[], int n) {
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	83 ec 14             	sub    $0x14,%esp
 267:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 26a:	8b 45 08             	mov    0x8(%ebp),%eax
    for (int i = 0; i < n; i++) {
 26d:	85 db                	test   %ebx,%ebx
 26f:	7e 67                	jle    2d8 <standardDeviation+0x78>
 271:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
    double totalSum = 0.0;
 274:	d9 ee                	fldz
    for (int i = 0; i < n; i++) {
 276:	89 c2                	mov    %eax,%edx
 278:	f6 c3 01             	test   $0x1,%bl
 27b:	74 13                	je     290 <standardDeviation+0x30>
        totalSum += arr[i];
 27d:	dc 00                	faddl  (%eax)
    for (int i = 0; i < n; i++) {
 27f:	8d 50 08             	lea    0x8(%eax),%edx
 282:	39 ca                	cmp    %ecx,%edx
 284:	74 16                	je     29c <standardDeviation+0x3c>
 286:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28d:	00 
 28e:	66 90                	xchg   %ax,%ax
        totalSum += arr[i];
 290:	dc 02                	faddl  (%edx)
    for (int i = 0; i < n; i++) {
 292:	83 c2 10             	add    $0x10,%edx
        totalSum += arr[i];
 295:	dc 42 f8             	faddl  -0x8(%edx)
    for (int i = 0; i < n; i++) {
 298:	39 ca                	cmp    %ecx,%edx
 29a:	75 f4                	jne    290 <standardDeviation+0x30>
    return (double)(totalSum/n);
 29c:	89 5d f4             	mov    %ebx,-0xc(%ebp)
 29f:	db 45 f4             	fildl  -0xc(%ebp)
 2a2:	dc f9                	fdivr  %st,%st(1)
    double variance = 0;
 2a4:	d9 ee                	fldz
 2a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ad:	00 
 2ae:	66 90                	xchg   %ax,%ax
        variance += (arr[i] - m) * (arr[i] - m);
 2b0:	dd 00                	fldl   (%eax)
    for (int i = 0; i < n; i++) {
 2b2:	83 c0 08             	add    $0x8,%eax
        variance += (arr[i] - m) * (arr[i] - m);
 2b5:	d8 e3                	fsub   %st(3),%st
 2b7:	d8 c8                	fmul   %st(0),%st
 2b9:	de c1                	faddp  %st,%st(1)
    for (int i = 0; i < n; i++) {
 2bb:	39 c8                	cmp    %ecx,%eax
 2bd:	75 f1                	jne    2b0 <standardDeviation+0x50>
 2bf:	dd da                	fstp   %st(2)
 2c1:	d9 c9                	fxch   %st(1)
    variance /= n;  
 2c3:	de f1                	fdivp  %st,%st(1)
}
 2c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    return fsqrt(variance);
 2c8:	dd 5d 08             	fstpl  0x8(%ebp)
}
 2cb:	c9                   	leave
    return fsqrt(variance);
 2cc:	e9 8f 04 00 00       	jmp    760 <fsqrt>
 2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return (double)(totalSum/n);
 2d8:	89 5d f4             	mov    %ebx,-0xc(%ebp)
 2db:	db 45 f4             	fildl  -0xc(%ebp)
}
 2de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    double variance = 0;
 2e1:	d9 ee                	fldz
    variance /= n;  
 2e3:	de f1                	fdivp  %st,%st(1)
    return fsqrt(variance);
 2e5:	dd 5d 08             	fstpl  0x8(%ebp)
}
 2e8:	c9                   	leave
    return fsqrt(variance);
 2e9:	e9 72 04 00 00       	jmp    760 <fsqrt>
 2ee:	66 90                	xchg   %ax,%ax

000002f0 <validNumber>:
int validNumber(const char *s){
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
    if (*s == '-'){
 2f7:	0f b6 02             	movzbl (%edx),%eax
 2fa:	3c 2d                	cmp    $0x2d,%al
 2fc:	75 07                	jne    305 <validNumber+0x15>
    while (*startPointer =='.' || (*startPointer >= '0' && *startPointer <= '9') ){
 2fe:	0f b6 42 01          	movzbl 0x1(%edx),%eax
        startPointer++;
 302:	83 c2 01             	add    $0x1,%edx
    while (*startPointer =='.' || (*startPointer >= '0' && *startPointer <= '9') ){
 305:	8d 48 d0             	lea    -0x30(%eax),%ecx
 308:	80 f9 09             	cmp    $0x9,%cl
 30b:	0f 96 c1             	setbe  %cl
 30e:	3c 2e                	cmp    $0x2e,%al
 310:	0f 94 c3             	sete   %bl
 313:	08 d9                	or     %bl,%cl
 315:	74 2b                	je     342 <validNumber+0x52>
 317:	31 c9                	xor    %ecx,%ecx
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dots +=1;
 320:	3c 2e                	cmp    $0x2e,%al
 322:	0f 94 c0             	sete   %al
    startPointer++;
 325:	83 c2 01             	add    $0x1,%edx
        dots +=1;
 328:	0f b6 c0             	movzbl %al,%eax
 32b:	01 c1                	add    %eax,%ecx
    while (*startPointer =='.' || (*startPointer >= '0' && *startPointer <= '9') ){
 32d:	0f b6 02             	movzbl (%edx),%eax
 330:	8d 58 d0             	lea    -0x30(%eax),%ebx
 333:	80 fb 09             	cmp    $0x9,%bl
 336:	76 e8                	jbe    320 <validNumber+0x30>
 338:	3c 2e                	cmp    $0x2e,%al
 33a:	74 e4                	je     320 <validNumber+0x30>
    if ( *startPointer != '\0'  || dots > 1){
 33c:	83 f9 01             	cmp    $0x1,%ecx
 33f:	0f 9f c1             	setg   %cl
 342:	84 c0                	test   %al,%al
 344:	75 12                	jne    358 <validNumber+0x68>
    return 1;
 346:	b8 01 00 00 00       	mov    $0x1,%eax
    if ( *startPointer != '\0'  || dots > 1){
 34b:	84 c9                	test   %cl,%cl
 34d:	75 09                	jne    358 <validNumber+0x68>
}
 34f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 352:	c9                   	leave
 353:	c3                   	ret
 354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 358:	8b 5d fc             	mov    -0x4(%ebp),%ebx
        return -1;
 35b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 360:	c9                   	leave
 361:	c3                   	ret
 362:	66 90                	xchg   %ax,%ax
 364:	66 90                	xchg   %ax,%ax
 366:	66 90                	xchg   %ax,%ax
 368:	66 90                	xchg   %ax,%ax
 36a:	66 90                	xchg   %ax,%ax
 36c:	66 90                	xchg   %ax,%ax
 36e:	66 90                	xchg   %ax,%ax
 370:	66 90                	xchg   %ax,%ax
 372:	66 90                	xchg   %ax,%ax
 374:	66 90                	xchg   %ax,%ax
 376:	66 90                	xchg   %ax,%ax
 378:	66 90                	xchg   %ax,%ax
 37a:	66 90                	xchg   %ax,%ax
 37c:	66 90                	xchg   %ax,%ax
 37e:	66 90                	xchg   %ax,%ax

00000380 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 380:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 381:	31 c0                	xor    %eax,%eax
{
 383:	89 e5                	mov    %esp,%ebp
 385:	53                   	push   %ebx
 386:	8b 4d 08             	mov    0x8(%ebp),%ecx
 389:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 390:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 394:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 397:	83 c0 01             	add    $0x1,%eax
 39a:	84 d2                	test   %dl,%dl
 39c:	75 f2                	jne    390 <strcpy+0x10>
    ;
  return os;
}
 39e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a1:	89 c8                	mov    %ecx,%eax
 3a3:	c9                   	leave
 3a4:	c3                   	ret
 3a5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ac:	00 
 3ad:	8d 76 00             	lea    0x0(%esi),%esi

000003b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	53                   	push   %ebx
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
 3b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3ba:	0f b6 02             	movzbl (%edx),%eax
 3bd:	84 c0                	test   %al,%al
 3bf:	75 2f                	jne    3f0 <strcmp+0x40>
 3c1:	eb 4a                	jmp    40d <strcmp+0x5d>
 3c3:	eb 1b                	jmp    3e0 <strcmp+0x30>
 3c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cc:	00 
 3cd:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3d4:	00 
 3d5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3dc:	00 
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
 3e0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3e4:	83 c2 01             	add    $0x1,%edx
 3e7:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3ea:	84 c0                	test   %al,%al
 3ec:	74 12                	je     400 <strcmp+0x50>
 3ee:	89 d9                	mov    %ebx,%ecx
 3f0:	0f b6 19             	movzbl (%ecx),%ebx
 3f3:	38 c3                	cmp    %al,%bl
 3f5:	74 e9                	je     3e0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 3f7:	29 d8                	sub    %ebx,%eax
}
 3f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3fc:	c9                   	leave
 3fd:	c3                   	ret
 3fe:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 400:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 404:	31 c0                	xor    %eax,%eax
 406:	29 d8                	sub    %ebx,%eax
}
 408:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 40b:	c9                   	leave
 40c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 40d:	0f b6 19             	movzbl (%ecx),%ebx
 410:	31 c0                	xor    %eax,%eax
 412:	eb e3                	jmp    3f7 <strcmp+0x47>
 414:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 41b:	00 
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000420 <strlen>:

uint
strlen(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 426:	80 3a 00             	cmpb   $0x0,(%edx)
 429:	74 15                	je     440 <strlen+0x20>
 42b:	31 c0                	xor    %eax,%eax
 42d:	8d 76 00             	lea    0x0(%esi),%esi
 430:	83 c0 01             	add    $0x1,%eax
 433:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 437:	89 c1                	mov    %eax,%ecx
 439:	75 f5                	jne    430 <strlen+0x10>
    ;
  return n;
}
 43b:	89 c8                	mov    %ecx,%eax
 43d:	5d                   	pop    %ebp
 43e:	c3                   	ret
 43f:	90                   	nop
  for(n = 0; s[n]; n++)
 440:	31 c9                	xor    %ecx,%ecx
}
 442:	5d                   	pop    %ebp
 443:	89 c8                	mov    %ecx,%eax
 445:	c3                   	ret
 446:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 44d:	00 
 44e:	66 90                	xchg   %ax,%ax

00000450 <memset>:

void*
memset(void *dst, int c, uint n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 457:	8b 4d 10             	mov    0x10(%ebp),%ecx
 45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 45d:	89 d7                	mov    %edx,%edi
 45f:	fc                   	cld
 460:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 462:	8b 7d fc             	mov    -0x4(%ebp),%edi
 465:	89 d0                	mov    %edx,%eax
 467:	c9                   	leave
 468:	c3                   	ret
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000470 <strchr>:

char*
strchr(const char *s, char c)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 47a:	0f b6 10             	movzbl (%eax),%edx
 47d:	84 d2                	test   %dl,%dl
 47f:	75 1a                	jne    49b <strchr+0x2b>
 481:	eb 25                	jmp    4a8 <strchr+0x38>
 483:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 48a:	00 
 48b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 490:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 494:	83 c0 01             	add    $0x1,%eax
 497:	84 d2                	test   %dl,%dl
 499:	74 0d                	je     4a8 <strchr+0x38>
    if(*s == c)
 49b:	38 d1                	cmp    %dl,%cl
 49d:	75 f1                	jne    490 <strchr+0x20>
      return (char*)s;
  return 0;
}
 49f:	5d                   	pop    %ebp
 4a0:	c3                   	ret
 4a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4a8:	31 c0                	xor    %eax,%eax
}
 4aa:	5d                   	pop    %ebp
 4ab:	c3                   	ret
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <gets>:

char*
gets(char *buf, int max)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4b5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 4b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4b9:	31 db                	xor    %ebx,%ebx
{
 4bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4be:	eb 27                	jmp    4e7 <gets+0x37>
    cc = read(0, &c, 1);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	6a 01                	push   $0x1
 4c5:	56                   	push   %esi
 4c6:	6a 00                	push   $0x0
 4c8:	e8 63 03 00 00       	call   830 <read>
    if(cc < 1)
 4cd:	83 c4 10             	add    $0x10,%esp
 4d0:	85 c0                	test   %eax,%eax
 4d2:	7e 1d                	jle    4f1 <gets+0x41>
      break;
    buf[i++] = c;
 4d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4d8:	8b 55 08             	mov    0x8(%ebp),%edx
 4db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4df:	3c 0a                	cmp    $0xa,%al
 4e1:	74 10                	je     4f3 <gets+0x43>
 4e3:	3c 0d                	cmp    $0xd,%al
 4e5:	74 0c                	je     4f3 <gets+0x43>
  for(i=0; i+1 < max; ){
 4e7:	89 df                	mov    %ebx,%edi
 4e9:	83 c3 01             	add    $0x1,%ebx
 4ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ef:	7c cf                	jl     4c0 <gets+0x10>
 4f1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 4fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4fd:	5b                   	pop    %ebx
 4fe:	5e                   	pop    %esi
 4ff:	5f                   	pop    %edi
 500:	5d                   	pop    %ebp
 501:	c3                   	ret
 502:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 509:	00 
 50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000510 <stat>:

int
stat(const char *n, struct stat *st)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 515:	83 ec 08             	sub    $0x8,%esp
 518:	6a 00                	push   $0x0
 51a:	ff 75 08             	push   0x8(%ebp)
 51d:	e8 36 03 00 00       	call   858 <open>
  if(fd < 0)
 522:	83 c4 10             	add    $0x10,%esp
 525:	85 c0                	test   %eax,%eax
 527:	78 27                	js     550 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 529:	83 ec 08             	sub    $0x8,%esp
 52c:	ff 75 0c             	push   0xc(%ebp)
 52f:	89 c3                	mov    %eax,%ebx
 531:	50                   	push   %eax
 532:	e8 39 03 00 00       	call   870 <fstat>
  close(fd);
 537:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 53a:	89 c6                	mov    %eax,%esi
  close(fd);
 53c:	e8 ff 02 00 00       	call   840 <close>
  return r;
 541:	83 c4 10             	add    $0x10,%esp
}
 544:	8d 65 f8             	lea    -0x8(%ebp),%esp
 547:	89 f0                	mov    %esi,%eax
 549:	5b                   	pop    %ebx
 54a:	5e                   	pop    %esi
 54b:	5d                   	pop    %ebp
 54c:	c3                   	ret
 54d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 550:	be ff ff ff ff       	mov    $0xffffffff,%esi
 555:	eb ed                	jmp    544 <stat+0x34>
 557:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 55e:	00 
 55f:	90                   	nop

00000560 <atoi>:

int
atoi(const char *s)
{
 560:	55                   	push   %ebp
 561:	b8 01 00 00 00       	mov    $0x1,%eax
 566:	89 e5                	mov    %esp,%ebp
 568:	56                   	push   %esi
 569:	8b 75 08             	mov    0x8(%ebp),%esi
 56c:	53                   	push   %ebx
  int n;
  // this does not support negative numbers, lets make it support negative numbers.
  int sign = 1;
  const char *startPointer = s;
  if (*s == '-'){
 56d:	0f be 16             	movsbl (%esi),%edx
 570:	80 fa 2d             	cmp    $0x2d,%dl
 573:	75 0c                	jne    581 <atoi+0x21>
    sign = -1;
    startPointer++;
  }
  n = 0;
  while('0' <= *startPointer && *startPointer <= '9')
 575:	0f be 56 01          	movsbl 0x1(%esi),%edx
    sign = -1;
 579:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    startPointer++;
 57e:	83 c6 01             	add    $0x1,%esi
  while('0' <= *startPointer && *startPointer <= '9')
 581:	8d 4a d0             	lea    -0x30(%edx),%ecx
 584:	80 f9 09             	cmp    $0x9,%cl
 587:	77 37                	ja     5c0 <atoi+0x60>
  n = 0;
 589:	31 c9                	xor    %ecx,%ecx
 58b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 592:	00 
 593:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 59a:	00 
 59b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    n = n*10 + *startPointer++ - '0';
 5a0:	83 c6 01             	add    $0x1,%esi
 5a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5a6:	8d 4c 4a d0          	lea    -0x30(%edx,%ecx,2),%ecx
  while('0' <= *startPointer && *startPointer <= '9')
 5aa:	0f be 16             	movsbl (%esi),%edx
 5ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5b0:	80 fb 09             	cmp    $0x9,%bl
 5b3:	76 eb                	jbe    5a0 <atoi+0x40>
  return sign*n; //this will support negative numbers.
}
 5b5:	5b                   	pop    %ebx
  return sign*n; //this will support negative numbers.
 5b6:	0f af c1             	imul   %ecx,%eax
}
 5b9:	5e                   	pop    %esi
 5ba:	5d                   	pop    %ebp
 5bb:	c3                   	ret
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5c0:	5b                   	pop    %ebx
  while('0' <= *startPointer && *startPointer <= '9')
 5c1:	31 c0                	xor    %eax,%eax
}
 5c3:	5e                   	pop    %esi
 5c4:	5d                   	pop    %ebp
 5c5:	c3                   	ret
 5c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5cd:	00 
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <atof>:

double atof(const char *s){
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 0c             	sub    $0xc,%esp
 5d9:	8b 55 08             	mov    0x8(%ebp),%edx
  int sign = 1;
  const char *integerPart = s;
  if (*s == '-'){
 5dc:	0f b6 0a             	movzbl (%edx),%ecx
 5df:	80 f9 2d             	cmp    $0x2d,%cl
 5e2:	0f 84 28 01 00 00    	je     710 <atof+0x140>
  const char *integerPart = s;
 5e8:	89 d3                	mov    %edx,%ebx
 5ea:	8d 42 01             	lea    0x1(%edx),%eax
  int sign = 1;
 5ed:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  }

  char *p = strchr(s, '.');

  const char *fractionPart = (p + 1);
  int integer = 0;
 5f4:	31 ff                	xor    %edi,%edi
  const char *fractionPart = (p + 1);
 5f6:	ba 01 00 00 00       	mov    $0x1,%edx
  for(; *s; s++)
 5fb:	84 c9                	test   %cl,%cl
 5fd:	75 2f                	jne    62e <atof+0x5e>
 5ff:	eb 7b                	jmp    67c <atof+0xac>
 601:	eb 1d                	jmp    620 <atof+0x50>
 603:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 60a:	00 
 60b:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 612:	00 
 613:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 61a:	00 
 61b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 620:	0f b6 08             	movzbl (%eax),%ecx
 623:	84 c9                	test   %cl,%cl
 625:	0f 84 d5 00 00 00    	je     700 <atof+0x130>
 62b:	83 c0 01             	add    $0x1,%eax
 62e:	89 c2                	mov    %eax,%edx
    if(*s == c)
 630:	80 f9 2e             	cmp    $0x2e,%cl
 633:	75 eb                	jne    620 <atof+0x50>
  double fraction = 0.0;  
  double answer = 0.0;    

  while('0' <= *integerPart && *integerPart <= '9'){
 635:	0f b6 03             	movzbl (%ebx),%eax
  int integer = 0;
 638:	31 ff                	xor    %edi,%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 63a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 63d:	80 f9 09             	cmp    $0x9,%cl
 640:	77 3a                	ja     67c <atof+0xac>
 642:	eb 1c                	jmp    660 <atof+0x90>
 644:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 64b:	00 
 64c:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 653:	00 
 654:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 65b:	00 
 65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    integer = integer*10 + (*integerPart++ - '0');
 660:	83 e8 30             	sub    $0x30,%eax
 663:	8d 0c bf             	lea    (%edi,%edi,4),%ecx
 666:	83 c3 01             	add    $0x1,%ebx
 669:	0f be c0             	movsbl %al,%eax
 66c:	8d 3c 48             	lea    (%eax,%ecx,2),%edi
  while('0' <= *integerPart && *integerPart <= '9'){
 66f:	0f b6 03             	movzbl (%ebx),%eax
 672:	8d 70 d0             	lea    -0x30(%eax),%esi
 675:	89 f1                	mov    %esi,%ecx
 677:	80 f9 09             	cmp    $0x9,%cl
 67a:	76 e4                	jbe    660 <atof+0x90>
  }
  

  
  double divisor = 10.0;   
  while('0' <= *fractionPart && *fractionPart <= '9'){
 67c:	0f b6 02             	movzbl (%edx),%eax
 67f:	8d 58 d0             	lea    -0x30(%eax),%ebx
 682:	80 fb 09             	cmp    $0x9,%bl
 685:	0f 87 9d 00 00 00    	ja     728 <atof+0x158>
  double divisor = 10.0;   
 68b:	d9 05 4c 0e 00 00    	flds   0xe4c
  double fraction = 0.0;  
 691:	d9 ee                	fldz
 693:	eb 2d                	jmp    6c2 <atof+0xf2>
 695:	eb 29                	jmp    6c0 <atof+0xf0>
 697:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 69e:	00 
 69f:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6a6:	00 
 6a7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ae:	00 
 6af:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6b6:	00 
 6b7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6be:	00 
 6bf:	90                   	nop
 6c0:	d9 c9                	fxch   %st(1)
    fraction += (*fractionPart++ - '0') / divisor;
 6c2:	83 e8 30             	sub    $0x30,%eax
 6c5:	83 c2 01             	add    $0x1,%edx
 6c8:	66 98                	cbtw
 6ca:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 6ce:	df 45 ec             	filds  -0x14(%ebp)
  while('0' <= *fractionPart && *fractionPart <= '9'){
 6d1:	0f b6 02             	movzbl (%edx),%eax
    fraction += (*fractionPart++ - '0') / divisor;
 6d4:	d8 f2                	fdiv   %st(2),%st
  while('0' <= *fractionPart && *fractionPart <= '9'){
 6d6:	8d 58 d0             	lea    -0x30(%eax),%ebx
    fraction += (*fractionPart++ - '0') / divisor;
 6d9:	de c1                	faddp  %st,%st(1)
 6db:	d9 c9                	fxch   %st(1)
    divisor *= 10.0;
 6dd:	d8 0d 4c 0e 00 00    	fmuls  0xe4c
  while('0' <= *fractionPart && *fractionPart <= '9'){
 6e3:	80 fb 09             	cmp    $0x9,%bl
 6e6:	76 d8                	jbe    6c0 <atof+0xf0>
 6e8:	dd d8                	fstp   %st(0)
  }

  answer = (double)integer + fraction;
 6ea:	89 7d ec             	mov    %edi,-0x14(%ebp)
 6ed:	db 45 ec             	fildl  -0x14(%ebp)
 6f0:	de c1                	faddp  %st,%st(1)
  return sign*answer;
 6f2:	db 45 e8             	fildl  -0x18(%ebp)
}
 6f5:	83 c4 0c             	add    $0xc,%esp
 6f8:	5b                   	pop    %ebx
 6f9:	5e                   	pop    %esi
 6fa:	5f                   	pop    %edi
 6fb:	5d                   	pop    %ebp
  return sign*answer;
 6fc:	de c9                	fmulp  %st,%st(1)
}
 6fe:	c3                   	ret
 6ff:	90                   	nop
 700:	ba 01 00 00 00       	mov    $0x1,%edx
 705:	e9 2b ff ff ff       	jmp    635 <atof+0x65>
 70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    integerPart++;
 710:	8d 42 01             	lea    0x1(%edx),%eax
 713:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 71a:	89 c3                	mov    %eax,%ebx
  for(; *s; s++)
 71c:	e9 0d ff ff ff       	jmp    62e <atof+0x5e>
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  double fraction = 0.0;  
 728:	d9 ee                	fldz
 72a:	eb be                	jmp    6ea <atof+0x11a>
 72c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000730 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	8b 45 10             	mov    0x10(%ebp),%eax
 737:	8b 55 08             	mov    0x8(%ebp),%edx
 73a:	56                   	push   %esi
 73b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 73e:	85 c0                	test   %eax,%eax
 740:	7e 13                	jle    755 <memmove+0x25>
 742:	01 d0                	add    %edx,%eax
  dst = vdst;
 744:	89 d7                	mov    %edx,%edi
 746:	66 90                	xchg   %ax,%ax
 748:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 74f:	00 
    *dst++ = *src++;
 750:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 751:	39 f8                	cmp    %edi,%eax
 753:	75 fb                	jne    750 <memmove+0x20>
  return vdst;
}
 755:	5e                   	pop    %esi
 756:	89 d0                	mov    %edx,%eax
 758:	5f                   	pop    %edi
 759:	5d                   	pop    %ebp
 75a:	c3                   	ret
 75b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000760 <fsqrt>:

double fsqrt(double n) {
 760:	55                   	push   %ebp
    double x = n;
    double newtonianGuess = n / 2.0;
 761:	b8 14 00 00 00       	mov    $0x14,%eax
double fsqrt(double n) {
 766:	89 e5                	mov    %esp,%ebp
 768:	dd 45 08             	fldl   0x8(%ebp)
    double newtonianGuess = n / 2.0;
 76b:	d9 c0                	fld    %st(0)
 76d:	d8 0d 48 0e 00 00    	fmuls  0xe48
    for (int i = 0; i < 20; i++) {
 773:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 77a:	00 
 77b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        newtonianGuess = 0.5 *(newtonianGuess + x / newtonianGuess);
 780:	d9 c1                	fld    %st(1)
 782:	d8 f1                	fdiv   %st(1),%st
 784:	de c1                	faddp  %st,%st(1)
 786:	d8 0d 48 0e 00 00    	fmuls  0xe48
    for (int i = 0; i < 20; i++) {
 78c:	83 e8 01             	sub    $0x1,%eax
 78f:	75 ef                	jne    780 <fsqrt+0x20>
 791:	dd d9                	fstp   %st(1)
    }
    return newtonianGuess;
}
 793:	5d                   	pop    %ebp
 794:	c3                   	ret
 795:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 79c:	00 
 79d:	8d 76 00             	lea    0x0(%esi),%esi

000007a0 <insertionSort>:

void insertionSort(double arr[], int n)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	8b 7d 0c             	mov    0xc(%ebp),%edi
 7a7:	56                   	push   %esi
 7a8:	8b 75 08             	mov    0x8(%ebp),%esi
 7ab:	53                   	push   %ebx
    for (int i = 1; i < n; ++i) {
 7ac:	83 ff 01             	cmp    $0x1,%edi
 7af:	7e 5a                	jle    80b <insertionSort+0x6b>
 7b1:	bb 01 00 00 00       	mov    $0x1,%ebx
 7b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7bd:	00 
 7be:	66 90                	xchg   %ax,%ax
        double key = arr[i];
 7c0:	dd 04 de             	fldl   (%esi,%ebx,8)
        int j = i - 1;
 7c3:	8d 53 ff             	lea    -0x1(%ebx),%edx

        while (j >= 0 && arr[j] > key) {
 7c6:	8d 04 de             	lea    (%esi,%ebx,8),%eax
 7c9:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7d0:	00 
 7d1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7d8:	00 
 7d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7e0:	dd 40 f8             	fldl   -0x8(%eax)
 7e3:	89 c1                	mov    %eax,%ecx
 7e5:	db f1                	fcomi  %st(1),%st
 7e7:	76 17                	jbe    800 <insertionSort+0x60>
            arr[j + 1] = arr[j];
            j = j - 1;
 7e9:	83 ea 01             	sub    $0x1,%edx
            arr[j + 1] = arr[j];
 7ec:	dd 18                	fstpl  (%eax)
        while (j >= 0 && arr[j] > key) {
 7ee:	8d 41 f8             	lea    -0x8(%ecx),%eax
 7f1:	83 fa ff             	cmp    $0xffffffff,%edx
 7f4:	75 ea                	jne    7e0 <insertionSort+0x40>
 7f6:	89 f1                	mov    %esi,%ecx
 7f8:	eb 08                	jmp    802 <insertionSort+0x62>
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 800:	dd d8                	fstp   %st(0)
    for (int i = 1; i < n; ++i) {
 802:	83 c3 01             	add    $0x1,%ebx
        }
        arr[j + 1] = key;
 805:	dd 19                	fstpl  (%ecx)
    for (int i = 1; i < n; ++i) {
 807:	39 df                	cmp    %ebx,%edi
 809:	75 b5                	jne    7c0 <insertionSort+0x20>
    }
    
 80b:	5b                   	pop    %ebx
 80c:	5e                   	pop    %esi
 80d:	5f                   	pop    %edi
 80e:	5d                   	pop    %ebp
 80f:	c3                   	ret

00000810 <fork>:
 810:	b8 01 00 00 00       	mov    $0x1,%eax
 815:	cd 40                	int    $0x40
 817:	c3                   	ret

00000818 <exit>:
 818:	b8 02 00 00 00       	mov    $0x2,%eax
 81d:	cd 40                	int    $0x40
 81f:	c3                   	ret

00000820 <wait>:
 820:	b8 03 00 00 00       	mov    $0x3,%eax
 825:	cd 40                	int    $0x40
 827:	c3                   	ret

00000828 <pipe>:
 828:	b8 04 00 00 00       	mov    $0x4,%eax
 82d:	cd 40                	int    $0x40
 82f:	c3                   	ret

00000830 <read>:
 830:	b8 05 00 00 00       	mov    $0x5,%eax
 835:	cd 40                	int    $0x40
 837:	c3                   	ret

00000838 <write>:
 838:	b8 10 00 00 00       	mov    $0x10,%eax
 83d:	cd 40                	int    $0x40
 83f:	c3                   	ret

00000840 <close>:
 840:	b8 15 00 00 00       	mov    $0x15,%eax
 845:	cd 40                	int    $0x40
 847:	c3                   	ret

00000848 <kill>:
 848:	b8 06 00 00 00       	mov    $0x6,%eax
 84d:	cd 40                	int    $0x40
 84f:	c3                   	ret

00000850 <exec>:
 850:	b8 07 00 00 00       	mov    $0x7,%eax
 855:	cd 40                	int    $0x40
 857:	c3                   	ret

00000858 <open>:
 858:	b8 0f 00 00 00       	mov    $0xf,%eax
 85d:	cd 40                	int    $0x40
 85f:	c3                   	ret

00000860 <mknod>:
 860:	b8 11 00 00 00       	mov    $0x11,%eax
 865:	cd 40                	int    $0x40
 867:	c3                   	ret

00000868 <unlink>:
 868:	b8 12 00 00 00       	mov    $0x12,%eax
 86d:	cd 40                	int    $0x40
 86f:	c3                   	ret

00000870 <fstat>:
 870:	b8 08 00 00 00       	mov    $0x8,%eax
 875:	cd 40                	int    $0x40
 877:	c3                   	ret

00000878 <link>:
 878:	b8 13 00 00 00       	mov    $0x13,%eax
 87d:	cd 40                	int    $0x40
 87f:	c3                   	ret

00000880 <mkdir>:
 880:	b8 14 00 00 00       	mov    $0x14,%eax
 885:	cd 40                	int    $0x40
 887:	c3                   	ret

00000888 <chdir>:
 888:	b8 09 00 00 00       	mov    $0x9,%eax
 88d:	cd 40                	int    $0x40
 88f:	c3                   	ret

00000890 <dup>:
 890:	b8 0a 00 00 00       	mov    $0xa,%eax
 895:	cd 40                	int    $0x40
 897:	c3                   	ret

00000898 <getpid>:
 898:	b8 0b 00 00 00       	mov    $0xb,%eax
 89d:	cd 40                	int    $0x40
 89f:	c3                   	ret

000008a0 <sbrk>:
 8a0:	b8 0c 00 00 00       	mov    $0xc,%eax
 8a5:	cd 40                	int    $0x40
 8a7:	c3                   	ret

000008a8 <sleep>:
 8a8:	b8 0d 00 00 00       	mov    $0xd,%eax
 8ad:	cd 40                	int    $0x40
 8af:	c3                   	ret

000008b0 <uptime>:
 8b0:	b8 0e 00 00 00       	mov    $0xe,%eax
 8b5:	cd 40                	int    $0x40
 8b7:	c3                   	ret
 8b8:	66 90                	xchg   %ax,%ax
 8ba:	66 90                	xchg   %ax,%ax
 8bc:	66 90                	xchg   %ax,%ax
 8be:	66 90                	xchg   %ax,%ax

000008c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 8c8:	89 d1                	mov    %edx,%ecx
{
 8ca:	83 ec 3c             	sub    $0x3c,%esp
 8cd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  if(sgn && xx < 0){
 8d0:	85 d2                	test   %edx,%edx
 8d2:	0f 89 98 00 00 00    	jns    970 <printint+0xb0>
 8d8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 8dc:	0f 84 8e 00 00 00    	je     970 <printint+0xb0>
    x = -xx;
 8e2:	f7 d9                	neg    %ecx
    neg = 1;
 8e4:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 8e9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 8ec:	31 f6                	xor    %esi,%esi
 8ee:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8f5:	00 
 8f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8fd:	00 
 8fe:	66 90                	xchg   %ax,%ax
  do{
    buf[i++] = digits[x % base];
 900:	89 c8                	mov    %ecx,%eax
 902:	31 d2                	xor    %edx,%edx
 904:	89 f7                	mov    %esi,%edi
 906:	f7 f3                	div    %ebx
 908:	8d 76 01             	lea    0x1(%esi),%esi
 90b:	0f b6 92 a8 0e 00 00 	movzbl 0xea8(%edx),%edx
 912:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 916:	89 ca                	mov    %ecx,%edx
 918:	89 c1                	mov    %eax,%ecx
 91a:	39 da                	cmp    %ebx,%edx
 91c:	73 e2                	jae    900 <printint+0x40>
  if(neg)
 91e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 921:	85 c0                	test   %eax,%eax
 923:	74 07                	je     92c <printint+0x6c>
    buf[i++] = '-';
 925:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 92a:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 92c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 92f:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 932:	01 df                	add    %ebx,%edi
 934:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 93b:	00 
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 940:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 943:	83 ec 04             	sub    $0x4,%esp
 946:	88 45 d7             	mov    %al,-0x29(%ebp)
 949:	8d 45 d7             	lea    -0x29(%ebp),%eax
 94c:	6a 01                	push   $0x1
 94e:	50                   	push   %eax
 94f:	56                   	push   %esi
 950:	e8 e3 fe ff ff       	call   838 <write>
  while(--i >= 0)
 955:	89 f8                	mov    %edi,%eax
 957:	83 c4 10             	add    $0x10,%esp
 95a:	83 ef 01             	sub    $0x1,%edi
 95d:	39 d8                	cmp    %ebx,%eax
 95f:	75 df                	jne    940 <printint+0x80>
}
 961:	8d 65 f4             	lea    -0xc(%ebp),%esp
 964:	5b                   	pop    %ebx
 965:	5e                   	pop    %esi
 966:	5f                   	pop    %edi
 967:	5d                   	pop    %ebp
 968:	c3                   	ret
 969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 970:	31 c0                	xor    %eax,%eax
 972:	e9 72 ff ff ff       	jmp    8e9 <printint+0x29>
 977:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 97e:	00 
 97f:	90                   	nop

00000980 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s, %f.
void
printf(int fd, const char *fmt, ...)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 985:	8d 7d 10             	lea    0x10(%ebp),%edi
{
 988:	53                   	push   %ebx
 989:	83 ec 4c             	sub    $0x4c,%esp
  for(i = 0; fmt[i]; i++){
 98c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
 98f:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
 992:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 995:	0f b6 01             	movzbl (%ecx),%eax
 998:	84 c0                	test   %al,%al
 99a:	74 2f                	je     9cb <printf+0x4b>
 99c:	31 db                	xor    %ebx,%ebx
 99e:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
 9a0:	0f b6 d0             	movzbl %al,%edx
    if(state == 0){
      if(c == '%'){
 9a3:	83 fa 25             	cmp    $0x25,%edx
 9a6:	74 30                	je     9d8 <printf+0x58>
        state = '%';
      } else {
        putc(fd, c);
 9a8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9ab:	83 ec 04             	sub    $0x4,%esp
 9ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 9b1:	6a 01                	push   $0x1
 9b3:	50                   	push   %eax
 9b4:	56                   	push   %esi
 9b5:	e8 7e fe ff ff       	call   838 <write>
        putc(fd, c);
 9ba:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 9bd:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 9c0:	83 c3 01             	add    $0x1,%ebx
 9c3:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 9c7:	84 c0                	test   %al,%al
 9c9:	75 d5                	jne    9a0 <printf+0x20>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 9cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9ce:	5b                   	pop    %ebx
 9cf:	5e                   	pop    %esi
 9d0:	5f                   	pop    %edi
 9d1:	5d                   	pop    %ebp
 9d2:	c3                   	ret
 9d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; fmt[i]; i++){
 9d8:	0f b6 54 19 01       	movzbl 0x1(%ecx,%ebx,1),%edx
 9dd:	8d 7b 01             	lea    0x1(%ebx),%edi
 9e0:	84 d2                	test   %dl,%dl
 9e2:	74 e7                	je     9cb <printf+0x4b>
    c = fmt[i] & 0xff;
 9e4:	0f b6 c2             	movzbl %dl,%eax
      if(c == 'd'){
 9e7:	80 fa 25             	cmp    $0x25,%dl
 9ea:	0f 84 10 02 00 00    	je     c00 <printf+0x280>
 9f0:	83 e8 63             	sub    $0x63,%eax
 9f3:	83 f8 15             	cmp    $0x15,%eax
 9f6:	77 08                	ja     a00 <printf+0x80>
 9f8:	ff 24 85 50 0e 00 00 	jmp    *0xe50(,%eax,4)
 9ff:	90                   	nop
  write(fd, &c, 1);
 a00:	83 ec 04             	sub    $0x4,%esp
 a03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 a06:	88 55 c0             	mov    %dl,-0x40(%ebp)
        putc(fd, c);
 a09:	89 fb                	mov    %edi,%ebx
 a0b:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 a0f:	6a 01                	push   $0x1
 a11:	51                   	push   %ecx
 a12:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 a15:	56                   	push   %esi
 a16:	e8 1d fe ff ff       	call   838 <write>
        putc(fd, c);
 a1b:	0f b6 55 c0          	movzbl -0x40(%ebp),%edx
  write(fd, &c, 1);
 a1f:	83 c4 0c             	add    $0xc,%esp
 a22:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a25:	6a 01                	push   $0x1
 a27:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 a2a:	51                   	push   %ecx
 a2b:	56                   	push   %esi
 a2c:	e8 07 fe ff ff       	call   838 <write>
        putc(fd, c);
 a31:	83 c4 10             	add    $0x10,%esp
 a34:	eb 87                	jmp    9bd <printf+0x3d>
 a36:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 a3d:	00 
 a3e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 a40:	8b 7d d0             	mov    -0x30(%ebp),%edi
 a43:	83 ec 0c             	sub    $0xc,%esp
 a46:	b9 10 00 00 00       	mov    $0x10,%ecx
 a4b:	8b 17                	mov    (%edi),%edx
 a4d:	6a 00                	push   $0x0
 a4f:	89 f0                	mov    %esi,%eax
 a51:	e8 6a fe ff ff       	call   8c0 <printint>
        ap++;
 a56:	83 c7 04             	add    $0x4,%edi
 a59:	89 7d d0             	mov    %edi,-0x30(%ebp)
  for(i = 0; fmt[i]; i++){
 a5c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 a5f:	83 c3 02             	add    $0x2,%ebx
 a62:	83 c4 10             	add    $0x10,%esp
 a65:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 a69:	84 c0                	test   %al,%al
 a6b:	0f 85 2f ff ff ff    	jne    9a0 <printf+0x20>
}
 a71:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a74:	5b                   	pop    %ebx
 a75:	5e                   	pop    %esi
 a76:	5f                   	pop    %edi
 a77:	5d                   	pop    %ebp
 a78:	c3                   	ret
 a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        double value = *fp;
 a80:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a83:	dd 00                	fldl   (%eax)
        int integer_part = (int) value;
 a85:	d9 7d d6             	fnstcw -0x2a(%ebp)
 a88:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
        double value = *fp;
 a8c:	dd 55 c8             	fstl   -0x38(%ebp)
        int integer_part = (int) value;
 a8f:	80 cc 0c             	or     $0xc,%ah
 a92:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
 a96:	d9 6d d4             	fldcw  -0x2c(%ebp)
 a99:	db 55 c0             	fistl  -0x40(%ebp)
 a9c:	d9 6d d6             	fldcw  -0x2a(%ebp)
        double fraction_part = value - integer_part; //was originally int (due to the idea of combining two ints), but it failed to function properly
 a9f:	db 45 c0             	fildl  -0x40(%ebp)
 aa2:	de e9                	fsubrp %st,%st(1)
        if (fraction_part < 0) //if number is negative (without this output will make no
 aa4:	d9 ee                	fldz
 aa6:	df f1                	fcomip %st(1),%st
 aa8:	0f 87 82 01 00 00    	ja     c30 <printf+0x2b0>
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 aae:	83 ec 0c             	sub    $0xc,%esp
 ab1:	dd 5d b0             	fstpl  -0x50(%ebp)
 ab4:	b9 0a 00 00 00       	mov    $0xa,%ecx
 ab9:	89 f0                	mov    %esi,%eax
 abb:	6a 01                	push   $0x1
 abd:	8b 55 c0             	mov    -0x40(%ebp),%edx
        putc(fd, '.'); //adds the decimal point
 ac0:	bf 04 00 00 00       	mov    $0x4,%edi
        printint(fd,integer_part,10,1); //handles the integer part (with a potential negative sign)
 ac5:	e8 f6 fd ff ff       	call   8c0 <printint>
  write(fd, &c, 1);
 aca:	83 c4 0c             	add    $0xc,%esp
 acd:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 ad0:	c6 45 e7 2e          	movb   $0x2e,-0x19(%ebp)
 ad4:	6a 01                	push   $0x1
 ad6:	51                   	push   %ecx
 ad7:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 ada:	56                   	push   %esi
 adb:	e8 58 fd ff ff       	call   838 <write>
        putc(fd, '.'); //adds the decimal point
 ae0:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 ae3:	83 c4 10             	add    $0x10,%esp
 ae6:	dd 45 b0             	fldl   -0x50(%ebp)
 ae9:	89 5d b8             	mov    %ebx,-0x48(%ebp)
 aec:	89 4d bc             	mov    %ecx,-0x44(%ebp)
          int digit = (int) fraction_part;
 aef:	d9 7d d6             	fnstcw -0x2a(%ebp)
          fraction_part *= 10;
 af2:	d8 0d 4c 0e 00 00    	fmuls  0xe4c
          int digit = (int) fraction_part;
 af8:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
 afc:	80 cc 0c             	or     $0xc,%ah
 aff:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
          if (digit > 9) digit = 9;   // prevent ':' bug
 b03:	b8 09 00 00 00       	mov    $0x9,%eax
          int digit = (int) fraction_part;
 b08:	d9 6d d4             	fldcw  -0x2c(%ebp)
 b0b:	db 55 c8             	fistl  -0x38(%ebp)
 b0e:	d9 6d d6             	fldcw  -0x2a(%ebp)
 b11:	8b 5d c8             	mov    -0x38(%ebp),%ebx
          if (digit > 9) digit = 9;   // prevent ':' bug
 b14:	39 c3                	cmp    %eax,%ebx
 b16:	0f 4f d8             	cmovg  %eax,%ebx
  write(fd, &c, 1);
 b19:	83 ec 04             	sub    $0x4,%esp
          int digit = (int) fraction_part;
 b1c:	dd 5d c0             	fstpl  -0x40(%ebp)
          putc(fd, '0' + digit);
 b1f:	8d 43 30             	lea    0x30(%ebx),%eax
 b22:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b25:	6a 01                	push   $0x1
 b27:	ff 75 bc             	push   -0x44(%ebp)
 b2a:	56                   	push   %esi
 b2b:	e8 08 fd ff ff       	call   838 <write>
          fraction_part -= digit;
 b30:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 b33:	db 45 c8             	fildl  -0x38(%ebp)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 b36:	83 c4 10             	add    $0x10,%esp
          fraction_part -= digit;
 b39:	dd 45 c0             	fldl   -0x40(%ebp)
 b3c:	de e1                	fsubp  %st,%st(1)
        for(int i = 0; i < 4; i++){ //To print the decimal part (4 is a manually set limit for the max decimal places)
 b3e:	83 ef 01             	sub    $0x1,%edi
 b41:	75 ac                	jne    aef <printf+0x16f>
 b43:	dd d8                	fstp   %st(0)
        *ap+=2; //move pointer by 2 instead of 1 (since double is 2 times larger than int)
 b45:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b48:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 b4b:	83 00 02             	addl   $0x2,(%eax)
  for(i = 0; fmt[i]; i++){
 b4e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b51:	83 c3 02             	add    $0x2,%ebx
 b54:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 b58:	84 c0                	test   %al,%al
 b5a:	0f 85 40 fe ff ff    	jne    9a0 <printf+0x20>
}
 b60:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b63:	5b                   	pop    %ebx
 b64:	5e                   	pop    %esi
 b65:	5f                   	pop    %edi
 b66:	5d                   	pop    %ebp
 b67:	c3                   	ret
 b68:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b6f:	00 
        s = (char*)*ap;
 b70:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b73:	8b 38                	mov    (%eax),%edi
        ap++;
 b75:	83 c0 04             	add    $0x4,%eax
 b78:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 b7b:	85 ff                	test   %edi,%edi
 b7d:	0f 84 9d 00 00 00    	je     c20 <printf+0x2a0>
        while(*s != 0){
 b83:	0f b6 07             	movzbl (%edi),%eax
 b86:	84 c0                	test   %al,%al
 b88:	0f 84 a9 00 00 00    	je     c37 <printf+0x2b7>
 b8e:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 b91:	89 5d c8             	mov    %ebx,-0x38(%ebp)
 b94:	89 fb                	mov    %edi,%ebx
 b96:	89 cf                	mov    %ecx,%edi
 b98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b9f:	00 
  write(fd, &c, 1);
 ba0:	83 ec 04             	sub    $0x4,%esp
 ba3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 ba6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 ba9:	6a 01                	push   $0x1
 bab:	57                   	push   %edi
 bac:	56                   	push   %esi
 bad:	e8 86 fc ff ff       	call   838 <write>
        while(*s != 0){
 bb2:	0f b6 03             	movzbl (%ebx),%eax
 bb5:	83 c4 10             	add    $0x10,%esp
 bb8:	84 c0                	test   %al,%al
 bba:	75 e4                	jne    ba0 <printf+0x220>
 bbc:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 bbf:	eb 8d                	jmp    b4e <printf+0x1ce>
 bc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1); 
 bc8:	8b 7d d0             	mov    -0x30(%ebp),%edi
 bcb:	83 ec 0c             	sub    $0xc,%esp
 bce:	b9 0a 00 00 00       	mov    $0xa,%ecx
 bd3:	8b 17                	mov    (%edi),%edx
 bd5:	6a 01                	push   $0x1
 bd7:	e9 73 fe ff ff       	jmp    a4f <printf+0xcf>
 bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 be0:	8b 7d d0             	mov    -0x30(%ebp),%edi
  write(fd, &c, 1);
 be3:	83 ec 04             	sub    $0x4,%esp
 be6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 be9:	8b 07                	mov    (%edi),%eax
 beb:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 bee:	6a 01                	push   $0x1
 bf0:	51                   	push   %ecx
 bf1:	56                   	push   %esi
 bf2:	e8 41 fc ff ff       	call   838 <write>
 bf7:	e9 5a fe ff ff       	jmp    a56 <printf+0xd6>
 bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 c00:	83 ec 04             	sub    $0x4,%esp
 c03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 c06:	88 55 e7             	mov    %dl,-0x19(%ebp)
 c09:	6a 01                	push   $0x1
 c0b:	51                   	push   %ecx
 c0c:	56                   	push   %esi
 c0d:	e8 26 fc ff ff       	call   838 <write>
 c12:	e9 45 fe ff ff       	jmp    a5c <printf+0xdc>
 c17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 c1e:	00 
 c1f:	90                   	nop
 c20:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 c25:	bf 41 0e 00 00       	mov    $0xe41,%edi
 c2a:	e9 5f ff ff ff       	jmp    b8e <printf+0x20e>
 c2f:	90                   	nop
          fraction_part = -fraction_part;
 c30:	d9 e0                	fchs
 c32:	e9 77 fe ff ff       	jmp    aae <printf+0x12e>
  for(i = 0; fmt[i]; i++){
 c37:	83 c3 02             	add    $0x2,%ebx
 c3a:	0f b6 04 19          	movzbl (%ecx,%ebx,1),%eax
 c3e:	84 c0                	test   %al,%al
 c40:	0f 85 5a fd ff ff    	jne    9a0 <printf+0x20>
 c46:	e9 80 fd ff ff       	jmp    9cb <printf+0x4b>
 c4b:	66 90                	xchg   %ax,%ax
 c4d:	66 90                	xchg   %ax,%ax
 c4f:	66 90                	xchg   %ax,%ax
 c51:	66 90                	xchg   %ax,%ax
 c53:	66 90                	xchg   %ax,%ax
 c55:	66 90                	xchg   %ax,%ax
 c57:	66 90                	xchg   %ax,%ax
 c59:	66 90                	xchg   %ax,%ax
 c5b:	66 90                	xchg   %ax,%ax
 c5d:	66 90                	xchg   %ax,%ax
 c5f:	90                   	nop

00000c60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 c60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c61:	a1 c0 12 00 00       	mov    0x12c0,%eax
{
 c66:	89 e5                	mov    %esp,%ebp
 c68:	57                   	push   %edi
 c69:	56                   	push   %esi
 c6a:	53                   	push   %ebx
 c6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 c6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c71:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 c78:	00 
 c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 c80:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c82:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c84:	39 ca                	cmp    %ecx,%edx
 c86:	73 30                	jae    cb8 <free+0x58>
 c88:	39 c1                	cmp    %eax,%ecx
 c8a:	72 04                	jb     c90 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c8c:	39 c2                	cmp    %eax,%edx
 c8e:	72 f0                	jb     c80 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 c90:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c93:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c96:	39 f8                	cmp    %edi,%eax
 c98:	74 36                	je     cd0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 c9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 c9d:	8b 42 04             	mov    0x4(%edx),%eax
 ca0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ca3:	39 f1                	cmp    %esi,%ecx
 ca5:	74 40                	je     ce7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 ca7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ca9:	5b                   	pop    %ebx
  freep = p;
 caa:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 cb0:	5e                   	pop    %esi
 cb1:	5f                   	pop    %edi
 cb2:	5d                   	pop    %ebp
 cb3:	c3                   	ret
 cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 cb8:	39 c2                	cmp    %eax,%edx
 cba:	72 c4                	jb     c80 <free+0x20>
 cbc:	39 c1                	cmp    %eax,%ecx
 cbe:	73 c0                	jae    c80 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 cc0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 cc3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 cc6:	39 f8                	cmp    %edi,%eax
 cc8:	75 d0                	jne    c9a <free+0x3a>
 cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 cd0:	03 70 04             	add    0x4(%eax),%esi
 cd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 cd6:	8b 02                	mov    (%edx),%eax
 cd8:	8b 00                	mov    (%eax),%eax
 cda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 cdd:	8b 42 04             	mov    0x4(%edx),%eax
 ce0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ce3:	39 f1                	cmp    %esi,%ecx
 ce5:	75 c0                	jne    ca7 <free+0x47>
    p->s.size += bp->s.size;
 ce7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 cea:	89 15 c0 12 00 00    	mov    %edx,0x12c0
    p->s.size += bp->s.size;
 cf0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 cf3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 cf6:	89 0a                	mov    %ecx,(%edx)
}
 cf8:	5b                   	pop    %ebx
 cf9:	5e                   	pop    %esi
 cfa:	5f                   	pop    %edi
 cfb:	5d                   	pop    %ebp
 cfc:	c3                   	ret
 cfd:	8d 76 00             	lea    0x0(%esi),%esi

00000d00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 d00:	55                   	push   %ebp
 d01:	89 e5                	mov    %esp,%ebp
 d03:	57                   	push   %edi
 d04:	56                   	push   %esi
 d05:	53                   	push   %ebx
 d06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 d09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 d0c:	8b 15 c0 12 00 00    	mov    0x12c0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 d12:	8d 78 07             	lea    0x7(%eax),%edi
 d15:	c1 ef 03             	shr    $0x3,%edi
 d18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 d1b:	85 d2                	test   %edx,%edx
 d1d:	0f 84 8d 00 00 00    	je     db0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 d25:	8b 48 04             	mov    0x4(%eax),%ecx
 d28:	39 f9                	cmp    %edi,%ecx
 d2a:	73 64                	jae    d90 <malloc+0x90>
  if(nu < 4096)
 d2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 d31:	39 df                	cmp    %ebx,%edi
 d33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 d36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 d3d:	eb 0a                	jmp    d49 <malloc+0x49>
 d3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 d42:	8b 48 04             	mov    0x4(%eax),%ecx
 d45:	39 f9                	cmp    %edi,%ecx
 d47:	73 47                	jae    d90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 d49:	89 c2                	mov    %eax,%edx
 d4b:	39 05 c0 12 00 00    	cmp    %eax,0x12c0
 d51:	75 ed                	jne    d40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 d53:	83 ec 0c             	sub    $0xc,%esp
 d56:	56                   	push   %esi
 d57:	e8 44 fb ff ff       	call   8a0 <sbrk>
  if(p == (char*)-1)
 d5c:	83 c4 10             	add    $0x10,%esp
 d5f:	83 f8 ff             	cmp    $0xffffffff,%eax
 d62:	74 1c                	je     d80 <malloc+0x80>
  hp->s.size = nu;
 d64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 d67:	83 ec 0c             	sub    $0xc,%esp
 d6a:	83 c0 08             	add    $0x8,%eax
 d6d:	50                   	push   %eax
 d6e:	e8 ed fe ff ff       	call   c60 <free>
  return freep;
 d73:	8b 15 c0 12 00 00    	mov    0x12c0,%edx
      if((p = morecore(nunits)) == 0)
 d79:	83 c4 10             	add    $0x10,%esp
 d7c:	85 d2                	test   %edx,%edx
 d7e:	75 c0                	jne    d40 <malloc+0x40>
        return 0;
  }
}
 d80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 d83:	31 c0                	xor    %eax,%eax
}
 d85:	5b                   	pop    %ebx
 d86:	5e                   	pop    %esi
 d87:	5f                   	pop    %edi
 d88:	5d                   	pop    %ebp
 d89:	c3                   	ret
 d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 d90:	39 cf                	cmp    %ecx,%edi
 d92:	74 4c                	je     de0 <malloc+0xe0>
        p->s.size -= nunits;
 d94:	29 f9                	sub    %edi,%ecx
 d96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 d99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 d9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 d9f:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 da5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 da8:	83 c0 08             	add    $0x8,%eax
}
 dab:	5b                   	pop    %ebx
 dac:	5e                   	pop    %esi
 dad:	5f                   	pop    %edi
 dae:	5d                   	pop    %ebp
 daf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 db0:	c7 05 c0 12 00 00 c4 	movl   $0x12c4,0x12c0
 db7:	12 00 00 
    base.s.size = 0;
 dba:	b8 c4 12 00 00       	mov    $0x12c4,%eax
    base.s.ptr = freep = prevp = &base;
 dbf:	c7 05 c4 12 00 00 c4 	movl   $0x12c4,0x12c4
 dc6:	12 00 00 
    base.s.size = 0;
 dc9:	c7 05 c8 12 00 00 00 	movl   $0x0,0x12c8
 dd0:	00 00 00 
    if(p->s.size >= nunits){
 dd3:	e9 54 ff ff ff       	jmp    d2c <malloc+0x2c>
 dd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 ddf:	00 
        prevp->s.ptr = p->s.ptr;
 de0:	8b 08                	mov    (%eax),%ecx
 de2:	89 0a                	mov    %ecx,(%edx)
 de4:	eb b9                	jmp    d9f <malloc+0x9f>
