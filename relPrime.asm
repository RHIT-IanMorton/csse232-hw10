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
TEST_GCD:      .word 1

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


##############################################################
# PROCEDURE - relPrime(n)
##############################################################
relPrime:
    #TODO: implement this procedure here
