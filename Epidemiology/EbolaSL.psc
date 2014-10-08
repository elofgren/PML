# Ebola Model - 2014 Outbreak Stochastic Implementation
# Author: Eric Lofgren (lofgrene@vbi.vt.edu)

Modelname: EbolaSL
Description: PML Implementation of Legrand et al., 2007 Ebola Model with parameters from http://arxiv.org/abs/1409.4607 for Sierra Leone's 2014 Ebola Outbreak

# Set model to run with numbers of individuals
Species_In_Conc: False
Output_In_Conc: False

# Differential Equations as Reactions
# Order of Compartments:
# S, E, Community, Hospital, Funeral, I, H, F, R

R1:
	S > E + Community
	(beta_I*S*I)/(S+E+I+H+F+R)
	
R2:
	S > E + Hospital
	(beta_H*S*H)/(S+E+I+H+F+R)
	
R3:
	S > E + Funeral
	(beta_F*S*F)/(S+E+I+H+F+R)

R4:
	E > I
	alpha*E

R5:
	I > H
	gamma_H*dx*I

R6:
	H > F
	gamma_DH*delta_2*H

R7:
	F > R
	gamma_F*F

R8:
	I > R
	gamma_I*(1-dx)*(1-delta_1)*I

R9:
	I > F
	delta_1*(1-dx)*gamma_D*I

R10:
	H > R
	gamma_IH*(1-delta_2)*H

# Parameter Values
S = 1515278
E = 0
I = 1
H = 0
F = 0
R = 0
Community = 0
Hospital = 0
Funeral = 0

beta_I = 0.128054
beta_H = 0.079541
beta_F = 0.111104
alpha = 0.1
gamma_H = 0.242567
gamma_DH = 0.1597905
gamma_F = 0.222274
gamma_I = 0.05
gamma_D = 0.096332
gamma_IH = 0.06298249
dx = 0.196928
delta_1 = 0.75
delta_2 = 0.75
