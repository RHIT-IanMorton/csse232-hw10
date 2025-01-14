#**********************************************************************
# CSSE 232 Homework Assignment 
# Rose-Hulman Institute of Technology
#
# NAME: Ian Morton
# DATE: 1/13/2025
#
#**********************************************************************

# Some globals to tell the test file where to find this stuff.
.global gcd
.global relPrime
.globl TEST_GCD
.globl TEST_RELPRIME

.data

# set this to 1 if you want to test gcd
TEST_GCD:      .word 0

# set this to 1 if you want to test relPrime
TEST_RELPRIME: .word 1


.text

# This causes a few tests to run.  Don't remove this!
jal x0, runtests

##############################################################
# PROCEDURE - gcd(a, b)
##############################################################
gcd:
    #TODO: implement this procedure here

#int gcd(int a, int b) {
#if (a == 0) {
#  return b;
#}

#while (b != 0) {
#  if (a > b) {
#    a = a - b;
#  } else {
#    b = b - a;
#  }
#}

#return a;
#}

	bne 	a0, x0, WHILE1
	addi	a0, a1, 0
	jal	x0, return_gcd

WHILE1:
	beq	a1, x0, return_gcd
	bge	a1, a0, ELSE
	sub	a0, a0, a1	
	jal	x0, WHILE1
ELSE:
	sub	a1, a1, a0
	jal	x0, WHILE1

return_gcd:
	jalr x0, 0(ra)

##############################################################
# PROCEDURE - relPrime(n)
##############################################################
relPrime:
    #TODO: implement this procedure here
    
#// Find m that is relatively prime to n.
#int relPrime(int n)
#{
# int m;
#
# m = 2;
#
# while (gcd(n, m) != 1) {  // n is the input from the outside world
#   m = m + 1;
# }
#
# return m;
#}

	addi 	t0, x0, 2	# t0: m=2
	addi	t1, x0, 1

WHILE2:
	addi	sp, sp, -12
	sw	ra, 0(sp)
	sw	t0, 4(sp)
	sw	a0, 8(sp)
	addi	a1, t0, 0	# a0: n, a1: m
	jal	ra, gcd
	addi	t2, a0, 0	# t2: gcd return
	lw	ra, 0(sp)
	lw	t0, 4(sp)
	lw	a0, 8(sp)
	addi	sp, sp, 12
	
	beq	t1, t2, return_relPrime
	addi	t0, t0, 1
	jal	x0, WHILE2
	
return_relPrime:
	addi	a0, t0, 0
	jalr 	x0, 0(ra)
	
