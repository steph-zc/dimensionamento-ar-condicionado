.data
	first: .asciiz "\n\n\nQual o comprimento do ambiente (m): "
	firsts: .asciiz "Qual a largura do ambiente (m): "
	firstt: .asciiz "Qual o tamanho do pé direito (altura) do ambiente (m): "
	second: .asciiz "\nPosicionamento:\n1-Entre andares\n2-Sob telhados\n"
	third: .asciiz "\nJanelas (em metros quadrados): \n"
	fourth: .asciiz "\nIncidencia de sol - possui cortina:\n1-Sim\n2-Nao\n"
	fifth: .asciiz "\nPortas (em metros quadrados): \n"
	sixth: .asciiz "\nQuantidade de pessoas simultaneamente na sala (insira inteiro):\n"
	seventh: .asciiz "\nMédia da potencia dos aparelhos que estarão operando na sala (Watt nominal):\n"
	eighth: .asciiz "\nQuantos aparelhos:\n"
	rum:     .asciiz "\n\nRecinto................................................................ "
	rdois:   .asciiz "Janelas................................................................ "
	rtres:   .asciiz "Portas................................................................. "
	rquatro: .asciiz "Pessoas................................................................ "
	rcinco:  .asciiz "Aparelhos eletricos.................................................... "
	rtotal:  .asciiz "CARGA TERMICA.......................................................... "
	btu:     .asciiz "\nPotencia necessaria para a sala........................................ "
	ubtu: .asciiz " BTUs"
	linha: .asciiz "\n"
	kcal: .asciiz " kcal/h"
	zerovirgulanove: .float 0.9
	btuconv: .float 3.92
	dezesseis: .float 16.0
	vinteedoisvirgulaquatro: .float 22.4
	trinta: .float 30.0
	trintaetres: .float 33.0
	trintaeseis: .float 36.0
	trintaenove: .float 39.0
	quarentaedois: .float 42.0
	quarentaecinco: .float 45.0
	quarentaeoito: .float 48.0
	cinquentaeum: .float 51.0
	cinquentaequatro: .float 54.0
	cinquentaesete: .float 57.0
	sessenta: .float 60.0
	sessentaetres: .float 63.0
	sessentaeseis: .float 66.0
	sessentaenove: .float 69.0
	setentaedois: .float 72.0
	setentaecinco: .float 75.0
	setentaeoito: .float 78.0
	oitentaeum: .float 81.0
	oitentaequatro: .float 84.0
	oitentaesete: .float 87.0
	noventa: .float 90.0
	centoevinteecinco: .float 125.0
	centoesessenta: .float 160.0
	duzentosedoze: .float 212.0
	duzentosevinteedois: .float 222.0
	quatrocentosedez: .float 410.0
	quatrocentoseoitenta: .float 480.0
	quinhentosetrinta: .float 530.0
	quinhentoseoitenta: .float 580.0
	seiscentosevinte: .float 620.0
	seiscentosesetenta: .float 670.0
	setecentosevinte: .float 720.0
	setecentosequarenta: .float 740.0
	setecentosesetenta: .float 770.0
	oitocentos: .float 800.0
	oitocentosedezesseis: .float 816.0
	oitocentosesessentaequatro: .float 864.0
	oitocentosesetenta: .float 870.0
	novecentosedez: .float 910.0
	novecentosequarenta: .float 940.0
	novecentosesessenta: .float 960.0
	mil: .float 1000.0
	miledez: .float 1010.0
	milesessenta: .float 1060.0
	milesetenta: .float 1070.0
	milecem: .float 1100.0
	milcentoequarenta: .float 1140.0
	milcentoecinquenta: .float 1150.0
	mileduzentos: .float 1200.0
	milduzentosecinquenta: .float 1250.0
	milduzentosesetenta: .float 1270.0
	miletrezentos: .float 1300.0
	miltrezentosequarenta: .float 1340.0
	miltrezentosenoventa: .float 1390.0	
	milquatrocentosedez: .float 1410.0
	milquatrocentosequarenta: .float 1440.0
	milquatrocentosesetenta: .float 1470.0
	milquinhentosequarenta: .float 1540.0
	milseiscentosedez: .float 1610.0
	milseiscentoseoitenta: .float 1680.0
	milsetecentosequarenta: .float 1740.0
	miloitocentosedez: .float 1810.0
	miloitocentoseoitenta: .float 1880.0
	milnovecentosequarenta: .float 1940.0
	doismiledez: .float 2010.0

.text
primeiro:
	li $v0 4
	la $a0 first
	syscall
	
	li $v0 6
	syscall
	mov.s $f1 $f0
	
	li $v0 4
	la $a0 firsts
	syscall

	li $v0 6
	syscall
	mov.s $f2 $f0
	
	li $v0 4
	la $a0 firstt
	syscall

	li $v0 6
	syscall
	mov.s $f3 $f0
	
	li $v0 4
	la $a0 second
	syscall
	
	li $v0 5
	syscall
	move $t1 $v0
	
	mul.s $f0 $f1 $f2
	mul.s $f0 $f0 $f3
	
	lwc1 $f1 trinta
	c.eq.s $f0 $f1 
	bc1t ptrinta

	lwc1 $f1 trintaetres
	c.eq.s $f0 $f1 
	bc1t ptrintatres
	
	lwc1 $f1 trintaeseis
	c.eq.s $f0 $f1 
	bc1t ptrintaseis
	
	lwc1 $f1 trintaenove
	c.eq.s $f0 $f1 
	bc1t ptrintanove
	
	lwc1 $f1 quarentaedois
	c.eq.s $f0 $f1 
	bc1t	 pquarentadois
	
	lwc1 $f1	quarentaecinco
	c.eq.s $f0 $f1 
	bc1t	 pquarentacinco
	
	lwc1 $f1	quarentaeoito
	c.eq.s $f0 $f1 
	bc1t	 pquarentaoito
	
	lwc1 $f1	cinquentaeum
	c.eq.s $f0 $f1 
	bc1t	 pcinquentaum
	
	lwc1 $f1	cinquentaequatro
	c.eq.s $f0 $f1 
	bc1t	 pcinquentaquatro
		
	lwc1 $f1	cinquentaesete
	c.eq.s $f0 $f1 
	bc1t	 pcinquentasete
		
	lwc1 $f1 sessenta
	c.eq.s $f0 $f1 
 	bc1t	 psessenta
		
	lwc1 $f1	sessentaetres
	c.eq.s $f0 $f1 
	bc1t	 psessentatres
		
	lwc1 $f1	sessentaeseis
	c.eq.s $f0 $f1 
	bc1t	 psessentaseis
		
	lwc1 $f1	sessentaenove
	c.eq.s $f0 $f1 
	bc1t	 psessentanove
		
	lwc1 $f1	setentaedois
	c.eq.s $f0 $f1 
	bc1t	 psetentadois
			
	lwc1 $f1 setentaecinco
	c.eq.s $f0 $f1
	bc1t	 psetentacinco
			
	lwc1 $f1	setentaeoito
	c.eq.s $f0 $f1 
	bc1t	 psetentaoito
			
	lwc1 $f1	oitentaeum
	c.eq.s $f0 $f1 
	bc1t	 poitentaum
				
	lwc1 $f1	oitentaequatro
	c.eq.s $f0 $f1 
	bc1t	 poitentaquatro
				
	lwc1 $f1	oitentaesete
	c.eq.s $f0 $f1 
	bc1t	 poitentasete
				
	lwc1 $f1 noventa
	c.eq.s $f0 $f1 
	bc1t	 pnoventa
	
	j multi
	
multi:
	li $t2 1
	beq $t1 $t2 multia
	
	li $t2 2
	beq $t1 $t2 multib
	
	multia:
	lwc1 $f1 dezesseis
	mul.s $f6 $f0 $f1
	j segundo
	
	multib:
	lwc1 $f1 vinteedoisvirgulaquatro
	mul.s $f6 $f0 $f1
	
	j segundo

ptrinta:
	li $t2 1
	beq $t1 $t2 pquatrooitozero
	li $t2 2
	beq $t1 $t2 pmeiasetezero
	
	pquatrooitozero:
	lwc1 $f6 quatrocentoseoitenta
	syscall
	j segundo
	pmeiasetezero:
	lwc1 $f6 seiscentosesetenta
	syscall
	j segundo
ptrintatres:
	li $t2 1
	beq $t1 $t2 pcincotreszero
	li $t2 2
	beq $t1 $t2 psetequatrozero
	
	pcincotreszero:
	lwc1 $f6 quinhentosetrinta
	syscall
	j segundo
	psetequatrozero:
	lwc1 $f6 setecentosequarenta
	syscall
	j segundo
ptrintaseis:
	li $t2 1
	beq $t1 $t2 pcincooitozero
	li $t2 2
	beq $t1 $t2 poitozerozero
	
	pcincooitozero:
	lwc1 $f6 quinhentoseoitenta
	syscall
	j segundo	
	poitozerozero:
	lwc1 $f6 oitocentos
	syscall
	j segundo
ptrintanove:
	li $t2 1
	beq $t1 $t2 pmeiadoiszero
	li $t2 2
	beq $t1 $t2 poitosetenta
	
	pmeiadoiszero:
	lwc1 $f6 seiscentosevinte
	syscall
	j segundo	
	poitosetenta:
	lwc1 $f6 oitocentosesetenta
	syscall
	j segundo
pquarentadois:
	li $t2 1
	beq $t1 $t2 pmeiasetezeroseg
	li $t2 2
	beq $t1 $t2 pnovequatrozero
	
	pmeiasetezeroseg:
	lwc1 $f6 seiscentosesetenta
	syscall
	j segundo	
	pnovequatrozero:
	lwc1 $f6 novecentosequarenta
	syscall
	j segundo
pquarentacinco:
	li $t2 1
	beq $t1 $t2 psetedoiszero
	li $t2 2
	beq $t1 $t2 pmil
	
	psetedoiszero:
	lwc1 $f6 setecentosevinte
	syscall
	j segundo	
	pmil:
	lwc1 $f6 mil
	syscall
	j segundo
pquarentaoito:
	li $t2 1
	beq $t1 $t2 psetesetezero
	li $t2 2
	beq $t1 $t2 pmilsetenta
	
	psetesetezero:
	lwc1 $f6 setecentosesetenta
	syscall
	j segundo	
	pmilsetenta:
	lwc1 $f6 milesetenta
	syscall
	j segundo
pcinquentaum:
	li $t2 1
	beq $t1 $t2 poitoummeia
	li $t2 2
	beq $t1 $t2 pumumquarenta
	
	poitoummeia:
	lwc1 $f6 oitocentosedezesseis
	syscall
	j segundo	
	pumumquarenta:
	lwc1 $f6 milcentoequarenta
	syscall
	j segundo
pcinquentaquatro:
	li $t2 1
	beq $t1 $t2 poitomeiaquatro
	li $t2 2
	beq $t1 $t2 pmilduzentos
	
	poitomeiaquatro:
	lwc1 $f6 oitocentosesessentaequatro
	syscall
	j segundo	
	pmilduzentos:
	lwc1 $f6 mileduzentos
	syscall
	j segundo	
pcinquentasete:
	li $t2 1
	beq $t1 $t2 pnoveumzero
	li $t2 2
	beq $t1 $t2 pdozesetenta
	
	pnoveumzero:
	lwc1 $f6 novecentosedez
	syscall
	j segundo	
	pdozesetenta:
	lwc1 $f6 milduzentosesetenta
	syscall
	j segundo	
psessenta:
	li $t2 1
	beq $t1 $t2 pnovemeiazero
	li $t2 2
	beq $t1 $t2 ptrezequarenta
	
	pnovemeiazero:
	lwc1 $f6 novecentosesessenta
	syscall
	j segundo	
	ptrezequarenta:
	lwc1 $f6 miltrezentosequarenta
	syscall
	j segundo	
psessentatres:
	li $t2 1
	beq $t1 $t2 pdezdez
	li $t2 2
	beq $t1 $t2 pquatorzedez
	
	pdezdez:
	lwc1 $f6 miledez
	syscall
	j segundo	
	pquatorzedez:
	lwc1 $f6 milquatrocentosedez
	syscall
	j segundo	
psessentaseis:
	li $t2 1
	beq $t1 $t2 pdezmeiazero
	li $t2 2
	beq $t1 $t2 pquatorzesetenta
	
	pdezmeiazero:
	lwc1 $f6 milesessenta
	syscall
	j segundo	
	pquatorzesetenta:
	lwc1 $f6 milquatrocentosesetenta
	syscall
	j segundo	
psessentanove:
	li $t2 1
	beq $t1 $t2 ponzedbzero
	li $t2 2
	beq $t1 $t2 pquinzequarenta
	
	ponzedbzero:
	lwc1 $f6 milecem
	syscall
	j segundo	
	pquinzequarenta:
	lwc1 $f6 milquinhentosequarenta
	syscall
	j segundo	
psetentadois:
	li $t2 1
	beq $t1 $t2 ponzecinquenta
	li $t2 2
	beq $t1 $t2 pummeiadez
	
	ponzecinquenta:
	lwc1 $f6 milcentoecinquenta
	syscall
	j segundo	
	pummeiadez:
	lwc1 $f6 milseiscentosedez
	syscall
	j segundo	
psetentacinco:
	li $t2 1
	beq $t1 $t2 pdozedbzero
	li $t2 2
	beq $t1 $t2 pummeiaoitenta
	
	pdozedbzero:
	lwc1 $f6 mileduzentos
	syscall
	j segundo	
	pummeiaoitenta:
	lwc1 $f6 milseiscentoseoitenta
	syscall
	j segundo	
psetentaoito:
	li $t2 1
	beq $t1 $t2 pdozecinquenta
	li $t2 2
	beq $t1 $t2 pdezessetequarenta
	
	pdozecinquenta:
	lwc1 $f6 milduzentosecinquenta
	syscall
	j segundo	
	pdezessetequarenta:
	lwc1 $f6 milsetecentosequarenta
	syscall
	j segundo	
poitentaum:
	li $t2 1
	beq $t1 $t2 ptrezedbzero
	li $t2 2
	beq $t1 $t2 pumoitodez
	
	ptrezedbzero:
	lwc1 $f6 miletrezentos
	syscall
	j segundo	
	pumoitodez:
	lwc1 $f6 miloitocentosedez
	syscall
	j segundo	
poitentaquatro:
	li $t2 1
	beq $t1 $t2 ptrezequarentaseg
	li $t2 2
	beq $t1 $t2 pdezoitooitenta
	
	ptrezequarentaseg:
	lwc1 $f6 miltrezentosequarenta
	syscall
	j segundo	
	pdezoitooitenta:
	lwc1 $f6 miloitocentoseoitenta
	syscall
	j segundo	
poitentasete:
	li $t2 1
	beq $t1 $t2 ptrezenoventa
	li $t2 2
	beq $t1 $t2 pdezenovequarenta
	
	ptrezenoventa:
	lwc1 $f6 miltrezentosenoventa
	syscall
	j segundo	
	pdezenovequarenta:
	lwc1 $f6 milnovecentosequarenta
	syscall
	j segundo	
pnoventa:
	li $t2 1
	beq $t1 $t2 pquatorzequarenta
	li $t2 2
	beq $t1 $t2 pvintedez
	
	pquatorzequarenta:
	lwc1 $f6 milquatrocentosequarenta
	syscall
	j segundo	
	pvintedez:
	lwc1 $f6 doismiledez
	syscall
	j segundo
	
	
segundo:
	li $v0 4
	la $a0 third
	syscall
	
	li $v0 6
	syscall
	mov.s $f1 $f0
	
	li $v0 4
	la $a0 fourth
	syscall
	
	li $v0 5
	syscall
	move $t1 $v0
	
	j multijanela

multijanela:
	li $t2 1
	beq $t1 $t2 dmultia
	li $t2 2
	beq $t1 $t2 dmultib
	
	dmultia:
	lwc1 $f2 centoesessenta
	mul.s $f3 $f1 $f2
	lwc1 $f2 duzentosedoze
	mul.s $f4 $f1 $f2
	add.s $f7 $f3 $f4
	j terceiro
	
	dmultib:
	lwc1 $f2 duzentosevinteedois
	mul.s $f3 $f1 $f2
	lwc1 $f2 quatrocentosedez
	mul.s $f4 $f1 $f2
	add.s $f7 $f3 $f4
	j terceiro


terceiro:
	li $v0 4
	la $a0 fifth
	syscall
	
	li $v0 6
	syscall
	mov.s $f1 $f0
	
	lwc1 $f2 centoevinteecinco
	mul.s $f8 $f1 $f2
	j quarto
		
quarto:
	li $v0 4
	la $a0 sixth
	syscall
	
	li $v0 6
	syscall
	mov.s $f1 $f0
	
	lwc1 $f2 centoevinteecinco
	mul.s $f10 $f1 $f2
	j quinto
	
quinto:
	li $v0 4
	la $a0 seventh
	syscall
	
	li $v0 6
	syscall
	mov.s $f1 $f0
	
	li $v0 4
	la $a0 eighth
	syscall
	
	li $v0 6
	syscall
	mov.s $f2 $f0
	
	lwc1 $f3 zerovirgulanove
	mul.s $f4 $f1 $f2
	mul.s $f9 $f4 $f3
	j fim
	
fim:
	li $v0 4
	la $a0 rum
	syscall
	
	mov.s $f12 $f6
	li $v0 2
	syscall

	li $v0 4
	la $a0 kcal
	syscall
	
	li $v0 4
	la $a0 linha
	syscall
	
	li $v0 4
	la $a0 rdois
	syscall
	
	mov.s $f12 $f7
	li $v0 2
	syscall	

	li $v0 4
	la $a0 kcal
	syscall
	
	li $v0 4
	la $a0 linha
	syscall
	
	li $v0 4
	la $a0 rtres
	syscall
	
	mov.s $f12 $f8
	li $v0 2
	syscall	

	li $v0 4
	la $a0 kcal
	syscall
	
	li $v0 4
	la $a0 linha
	syscall
	
	li $v0 4
	la $a0 rquatro
	syscall
	
	mov.s $f12 $f10
	li $v0 2
	syscall	

	li $v0 4
	la $a0 kcal
	syscall
	
	li $v0 4
	la $a0 linha
	syscall
			
	li $v0 4
	la $a0 rcinco
	syscall
	
	mov.s $f12 $f9
	li $v0 2
	syscall		

	li $v0 4
	la $a0 kcal
	syscall
	
	li $v0 4
	la $a0 linha
	syscall
			
	li $v0 4
	la $a0 rtotal
	syscall
	
	add.s $f11 $f6 $f7
	add.s $f11 $f11 $f8				
	add.s $f11 $f11 $f9
	add.s $f11 $f11 $f10
	
	mov.s $f12 $f11
	li $v0 2
	syscall
	
	li $v0 4
	la $a0 kcal
	syscall
								
	li $v0 4
	la $a0 btu
	syscall

	lwc1 $f1 btuconv
	mul.s $f12 $f11 $f1
	
	li $v0 2
	syscall
	
	li $v0 4
	la $a0 ubtu
	syscall
	
	j primeiro