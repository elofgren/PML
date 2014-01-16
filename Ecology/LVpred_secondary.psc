# Lotka-Volterra predator-prey model
# Prey species is secondary, predator has an intrinsic birth/death rate from other sources
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: LV_migration
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
	rabbit*alpha*(1-(rabbit/K_rabbit))

# Predator Reactions (from consumption of prey)
	
R3:
	$pool > fox
	fox*rabbit*delta*(1-(fox/K_fox))

# Predator Reactions (from intrinsic birth/death rates)

R4:
    fox > $pool
    fox*gamma*(1-(fox/K_fox))

R5:
    $pool > fox
    fox*mu*(1-(fox/K_fox))

# Parameter Values
rabbit = 6
fox = 3
alpha = 10.0
gamma = 1.0
mu = 1.0
beta = 0.45
delta = 0.10
K_rabbit = 10
K_fox = 15
