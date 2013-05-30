PML
===

A collection of PySCeS Markup Language files and Python helper
functions.

##Contents: 

###PML Model Descriptions
- *SIR.psc* : A basic SIR epidemic model with no demographics
- *SIR_BirthDeath.psc*: A basic SIR epidemic model with demographics
- *LV.psc* : A basic predator-prey model with no immigration/emigration

###Known Bugs:
- Birth/death model is currently has an integration error for certain values of mu. This
error can be reproduced in SciPy, which uses the same integration package as PySCeS, but not
in R, despite the same underlying lsoda solver.