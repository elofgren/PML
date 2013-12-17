# Susceptible-Infected-Recovered dynamic disease transmission model
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: SIR
Description: PySCes Model Description Language Implementation of SIR model

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Differential Equations as Reactions
R1:
	S > I
	beta*S*I/(S+I+R)
	
R2:
	I > R
	gamma*I

R3:
	S > $pool
	mu*S

R4:
	I > $pool
	mu*I
	
R5:
	R > $pool
	mu*R

R6:
	$pool > S
	mu*S
	
R7:
	$pool > S
	mu*I

R8:
	$pool > S
	mu*R
	

# Parameter Values
S = 990
I = 10
R = 0
beta = 0.50
gamma = 1/10
mu = 1/15000 # Stiffness problem with values ~ 1/25000 using default integrator
