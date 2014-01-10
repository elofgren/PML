# Basic Lotka-Volterra Competition Model
# PyCSeS Implementation
# Author: Eric Lofgren (Eric.Lofgren@gmail.com)

Modelname: LVComp
Description: PySCes Model Description Language Implementation of Lotka-Volterra model

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Species 1 Reactions
R1:
	$pool > Species1
	alpha*Species1

# Parameter Values
Species1 = 4.0
alpha = 2.0
