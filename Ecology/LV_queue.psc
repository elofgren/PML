# Basic Lotka-Volterra predator-prey model
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: LV
Description: PySCes Model Description Language Implementation of Lotka-Volterra model

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Prey Reactions
R1:
	rabbit > fox
	rabbit*fox*beta*delta

R2:
	rabbit > notfox
	rabbit*fox*beta*(1-delta)

R3:
	$pool > rabbit
	rabbit*alpha

# Predator Reactions
R4:
	fox > $pool
	fox*gamma

# Cleanup Reactions - Keep "Notfox" from growing to enormous size
R5:
	notfox > $pool
	notfox*1

# Parameter Values
rabbit = 6
fox = 3
notfox = 0
alpha = 2.0
gamma = 1.0
beta = 1.0
delta = 0.33

