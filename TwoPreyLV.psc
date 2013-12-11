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
	rabbit > $pool
	rabbit*fox*beta_r

R2:
	$pool > rabbit
	rabbit*alpha_r
	
R3:
    mouse > $pool
    mouse*fox*beta_m	

R4:
    $pool > mouse
    mouse*alpha_m
	
# Predator Reactions
R5:
	fox > $pool
	fox*gamma
	
R6:
	$pool > fox
	fox*rabbit*delta_r

R7:
    $pool > fox
    fox*mouse*delta_m

# Parameter Values
rabbit = 6.0
mouse = 4.0
fox = 3.0
alpha_r = 2.0
alpha_m = 3.0
beta_r = 1.0
beta_m = 1.5
delta_r = 0.50
delta_m = 0.25
gamma = 1.0
