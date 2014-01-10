# Lotka-Volterra competition model between invader and obligate native
# Pool-based Implementation
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: LV
Description: PML Implementation of Lotka-Volterra competition model

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

R1:
	$pool > invader
	invader*r1*(1-((invader+(alpha1*native))/K1))
	
R2:
	$pool > invader
	invader*invader_in

R3:
	invader > $pool
	invader*invader_out	

R4:
	$pool > native
	native*r2*(1-((native+(alpha2*invader))/K2))
	
R5:
	$pool > native
	invader*native_in	

# Parameter Values
invader = 5
r1 = 3.00
K1 = 15 
native = 10
r2 = 1.0
K2 = 10
alpha1 = 0.50
alpha2 = 1.50
invader_out = 2.0
invader_in = 1.75
native_in = 0.25
