
reversing1:     file format elf64-x86-64


Disassembly of section .init:

0000000000400400 <_init>:
  400400:	48 83 ec 08          	sub    $0x8,%rsp
  400404:	e8 83 00 00 00       	callq  40048c <call_gmon_start>
  400409:	e8 12 01 00 00       	callq  400520 <frame_dummy>
  40040e:	e8 3d 02 00 00       	callq  400650 <__do_global_ctors_aux>
  400413:	48 83 c4 08          	add    $0x8,%rsp
  400417:	c3                   	retq   

Disassembly of section .plt:

0000000000400420 <puts@plt-0x10>:
  400420:	ff 35 ca 0b 20 00    	pushq  0x200bca(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400426:	ff 25 cc 0b 20 00    	jmpq   *0x200bcc(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40042c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400430 <puts@plt>:
  400430:	ff 25 ca 0b 20 00    	jmpq   *0x200bca(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400436:	68 00 00 00 00       	pushq  $0x0
  40043b:	e9 e0 ff ff ff       	jmpq   400420 <_init+0x20>

0000000000400440 <__libc_start_main@plt>:
  400440:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400446:	68 01 00 00 00       	pushq  $0x1
  40044b:	e9 d0 ff ff ff       	jmpq   400420 <_init+0x20>

0000000000400450 <strtol@plt>:
  400450:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400456:	68 02 00 00 00       	pushq  $0x2
  40045b:	e9 c0 ff ff ff       	jmpq   400420 <_init+0x20>

Disassembly of section .text:

0000000000400460 <_start>:
  400460:	31 ed                	xor    %ebp,%ebp
  400462:	49 89 d1             	mov    %rdx,%r9
  400465:	5e                   	pop    %rsi
  400466:	48 89 e2             	mov    %rsp,%rdx
  400469:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40046d:	50                   	push   %rax
  40046e:	54                   	push   %rsp
  40046f:	49 c7 c0 40 06 40 00 	mov    $0x400640,%r8
  400476:	48 c7 c1 b0 05 40 00 	mov    $0x4005b0,%rcx
  40047d:	48 c7 c7 44 05 40 00 	mov    $0x400544,%rdi
  400484:	e8 b7 ff ff ff       	callq  400440 <__libc_start_main@plt>
  400489:	f4                   	hlt    
  40048a:	90                   	nop
  40048b:	90                   	nop

000000000040048c <call_gmon_start>:
  40048c:	48 83 ec 08          	sub    $0x8,%rsp
  400490:	48 8b 05 49 0b 20 00 	mov    0x200b49(%rip),%rax        # 600fe0 <_DYNAMIC+0x190>
  400497:	48 85 c0             	test   %rax,%rax
  40049a:	74 02                	je     40049e <call_gmon_start+0x12>
  40049c:	ff d0                	callq  *%rax
  40049e:	48 83 c4 08          	add    $0x8,%rsp
  4004a2:	c3                   	retq   
  4004a3:	90                   	nop
  4004a4:	90                   	nop
  4004a5:	90                   	nop
  4004a6:	90                   	nop
  4004a7:	90                   	nop
  4004a8:	90                   	nop
  4004a9:	90                   	nop
  4004aa:	90                   	nop
  4004ab:	90                   	nop
  4004ac:	90                   	nop
  4004ad:	90                   	nop
  4004ae:	90                   	nop
  4004af:	90                   	nop

00000000004004b0 <__do_global_dtors_aux>:
  4004b0:	55                   	push   %rbp
  4004b1:	48 89 e5             	mov    %rsp,%rbp
  4004b4:	53                   	push   %rbx
  4004b5:	48 83 ec 08          	sub    $0x8,%rsp
  4004b9:	80 3d 68 0b 20 00 00 	cmpb   $0x0,0x200b68(%rip)        # 601028 <__bss_start>
  4004c0:	75 4b                	jne    40050d <__do_global_dtors_aux+0x5d>
  4004c2:	bb 40 0e 60 00       	mov    $0x600e40,%ebx
  4004c7:	48 8b 05 62 0b 20 00 	mov    0x200b62(%rip),%rax        # 601030 <dtor_idx.6533>
  4004ce:	48 81 eb 38 0e 60 00 	sub    $0x600e38,%rbx
  4004d5:	48 c1 fb 03          	sar    $0x3,%rbx
  4004d9:	48 83 eb 01          	sub    $0x1,%rbx
  4004dd:	48 39 d8             	cmp    %rbx,%rax
  4004e0:	73 24                	jae    400506 <__do_global_dtors_aux+0x56>
  4004e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4004e8:	48 83 c0 01          	add    $0x1,%rax
  4004ec:	48 89 05 3d 0b 20 00 	mov    %rax,0x200b3d(%rip)        # 601030 <dtor_idx.6533>
  4004f3:	ff 14 c5 38 0e 60 00 	callq  *0x600e38(,%rax,8)
  4004fa:	48 8b 05 2f 0b 20 00 	mov    0x200b2f(%rip),%rax        # 601030 <dtor_idx.6533>
  400501:	48 39 d8             	cmp    %rbx,%rax
  400504:	72 e2                	jb     4004e8 <__do_global_dtors_aux+0x38>
  400506:	c6 05 1b 0b 20 00 01 	movb   $0x1,0x200b1b(%rip)        # 601028 <__bss_start>
  40050d:	48 83 c4 08          	add    $0x8,%rsp
  400511:	5b                   	pop    %rbx
  400512:	5d                   	pop    %rbp
  400513:	c3                   	retq   
  400514:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40051b:	00 00 00 00 00 

0000000000400520 <frame_dummy>:
  400520:	48 83 3d 20 09 20 00 	cmpq   $0x0,0x200920(%rip)        # 600e48 <__JCR_END__>
  400527:	00 
  400528:	55                   	push   %rbp
  400529:	48 89 e5             	mov    %rsp,%rbp
  40052c:	74 12                	je     400540 <frame_dummy+0x20>
  40052e:	b8 00 00 00 00       	mov    $0x0,%eax
  400533:	48 85 c0             	test   %rax,%rax
  400536:	74 08                	je     400540 <frame_dummy+0x20>
  400538:	5d                   	pop    %rbp
  400539:	bf 48 0e 60 00       	mov    $0x600e48,%edi
  40053e:	ff e0                	jmpq   *%rax
  400540:	5d                   	pop    %rbp
  400541:	c3                   	retq   
  400542:	90                   	nop
  400543:	90                   	nop

0000000000400544 <main>:
  400544:	55                   	push   %rbp
  400545:	48 89 e5             	mov    %rsp,%rbp
  400548:	48 83 ec 20          	sub    $0x20,%rsp
  40054c:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40054f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400553:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  400557:	74 11                	je     40056a <main+0x26>
  400559:	bf 9c 06 40 00       	mov    $0x40069c,%edi
  40055e:	e8 cd fe ff ff       	callq  400430 <puts@plt>
  400563:	b8 01 00 00 00       	mov    $0x1,%eax
  400568:	eb 44                	jmp    4005ae <main+0x6a>
  40056a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40056e:	48 83 c0 08          	add    $0x8,%rax
  400572:	48 8b 00             	mov    (%rax),%rax
  400575:	ba 0a 00 00 00       	mov    $0xa,%edx
  40057a:	be 00 00 00 00       	mov    $0x0,%esi
  40057f:	48 89 c7             	mov    %rax,%rdi
  400582:	e8 c9 fe ff ff       	callq  400450 <strtol@plt>
  400587:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40058a:	81 7d fc 87 96 98 00 	cmpl   $0x989687,-0x4(%rbp)
  400591:	75 0c                	jne    40059f <main+0x5b>
  400593:	bf ba 06 40 00       	mov    $0x4006ba,%edi
  400598:	e8 93 fe ff ff       	callq  400430 <puts@plt>
  40059d:	eb 0a                	jmp    4005a9 <main+0x65>
  40059f:	bf c9 06 40 00       	mov    $0x4006c9,%edi
  4005a4:	e8 87 fe ff ff       	callq  400430 <puts@plt>
  4005a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ae:	c9                   	leaveq 
  4005af:	c3                   	retq   

00000000004005b0 <__libc_csu_init>:
  4005b0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005b5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005ba:	48 8d 2d 63 08 20 00 	lea    0x200863(%rip),%rbp        # 600e24 <__init_array_end>
  4005c1:	4c 8d 25 5c 08 20 00 	lea    0x20085c(%rip),%r12        # 600e24 <__init_array_end>
  4005c8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005cd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005d2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005d7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005dc:	48 83 ec 38          	sub    $0x38,%rsp
  4005e0:	4c 29 e5             	sub    %r12,%rbp
  4005e3:	41 89 fd             	mov    %edi,%r13d
  4005e6:	49 89 f6             	mov    %rsi,%r14
  4005e9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ed:	49 89 d7             	mov    %rdx,%r15
  4005f0:	e8 0b fe ff ff       	callq  400400 <_init>
  4005f5:	48 85 ed             	test   %rbp,%rbp
  4005f8:	74 1c                	je     400616 <__libc_csu_init+0x66>
  4005fa:	31 db                	xor    %ebx,%ebx
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400600:	4c 89 fa             	mov    %r15,%rdx
  400603:	4c 89 f6             	mov    %r14,%rsi
  400606:	44 89 ef             	mov    %r13d,%edi
  400609:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40060d:	48 83 c3 01          	add    $0x1,%rbx
  400611:	48 39 eb             	cmp    %rbp,%rbx
  400614:	75 ea                	jne    400600 <__libc_csu_init+0x50>
  400616:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40061b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400620:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400625:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40062a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40062f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400634:	48 83 c4 38          	add    $0x38,%rsp
  400638:	c3                   	retq   
  400639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400640 <__libc_csu_fini>:
  400640:	f3 c3                	repz retq 
  400642:	90                   	nop
  400643:	90                   	nop
  400644:	90                   	nop
  400645:	90                   	nop
  400646:	90                   	nop
  400647:	90                   	nop
  400648:	90                   	nop
  400649:	90                   	nop
  40064a:	90                   	nop
  40064b:	90                   	nop
  40064c:	90                   	nop
  40064d:	90                   	nop
  40064e:	90                   	nop
  40064f:	90                   	nop

0000000000400650 <__do_global_ctors_aux>:
  400650:	55                   	push   %rbp
  400651:	48 89 e5             	mov    %rsp,%rbp
  400654:	53                   	push   %rbx
  400655:	48 83 ec 08          	sub    $0x8,%rsp
  400659:	48 8b 05 c8 07 20 00 	mov    0x2007c8(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400660:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400664:	74 19                	je     40067f <__do_global_ctors_aux+0x2f>
  400666:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  40066b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400670:	48 83 eb 08          	sub    $0x8,%rbx
  400674:	ff d0                	callq  *%rax
  400676:	48 8b 03             	mov    (%rbx),%rax
  400679:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40067d:	75 f1                	jne    400670 <__do_global_ctors_aux+0x20>
  40067f:	48 83 c4 08          	add    $0x8,%rsp
  400683:	5b                   	pop    %rbx
  400684:	5d                   	pop    %rbp
  400685:	c3                   	retq   
  400686:	90                   	nop
  400687:	90                   	nop

Disassembly of section .fini:

0000000000400688 <_fini>:
  400688:	48 83 ec 08          	sub    $0x8,%rsp
  40068c:	e8 1f fe ff ff       	callq  4004b0 <__do_global_dtors_aux>
  400691:	48 83 c4 08          	add    $0x8,%rsp
  400695:	c3                   	retq   
