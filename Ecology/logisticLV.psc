# Basic Lotka-Volterra predator-prey model
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: logLV
Description: PySCes Model Description Language Implementation of Lotka-Volterra model

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Prey Reactions
R1:
	rabbit > $pool
	rabbit*fox*beta

R2:
	$pool > rabbit
	rabbit*alpha*(1-(rabbit/K))

# Predator Reactions
R3:
	fox > $pool
	fox*gamma
	
R4:
	$pool > fox
	fox*rabbit*delta

# Parameter Values
rabbit = 6
fox = 3
alpha = 2.0
gamma = 1.0
beta = 1.0
delta = 0.33
K = 100
