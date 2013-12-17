# SI Epidemic Model with Predation
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: SILV
Description: PySCes Model Description Language Implementation of SI Epidemic Model with predation

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Differential Equations as Reactions
R1:
	S > I
	beta*S*I/(S+I)
	
R2:
	I > S
	gamma*I

R3:
	S > $pool
	mu*S

R4:
	I > $pool
	mu*I
	
R6:
	$pool > S
	mu*(S+I)


# Parameter Values
S = 990
I = 10
beta = 0.12
gamma = 1/10
mu = 1/1826 # Stiffness problem with values ~ 1/25000 using default integrator
