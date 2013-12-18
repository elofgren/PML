# SI Epidemic Model with Predation
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: SILV
Description: PySCes Model Description Language Implementation of SI Epidemic Model with predation

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# S and I Reactions for Prey
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
	mu*(S+I)*1.20
	
# Predation Reactions
R7:
	S > Fox
	rho*S*Fox*delta

R8:
	S > $pool
	rho*S*Fox*(1-delta)

R7:
	I > Fox
	(rho*1.20)*I*Fox*(delta*0.80)

R8:
	I > $pool
	(rho*1.20)*I*Fox*(1-(delta*0.80))
	
R9:
	Fox > $pool
	Fox*omega

# Parameter Values
S = 85
I = 15
Fox = 5
beta = 1.2
gamma = 1
mu = 1/183

# Predation Parameters
rho = 0.001
delta = 0.20
omega = 1/283
