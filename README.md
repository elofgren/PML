PML
===

A collection of PySCeS Markup Language files and Python helper
functions.

##Contents: 

###PML Model Descriptions
- *SIR.psc* : A basic SIR epidemic model with no demographics
- *SIR_BirthDeath.psc*: A basic SIR epidemic model with demographics
- *LV.psc* : A basic predator-prey model with no immigration/emigration
- *cdiff_FT.psc* : A model of fecal microbiota transplantation to prevent
healthcare facility-associated *C. difficile* infection and recurrence.

###Known Bugs:
- Birth/death model currently produces an integration error for some values of
mu ~ 25000. This error can be reproduced in SciPy using odeint. SciPy's
ode.integrate and R both solve the system just fine - this appears to be a
fleeting stiffness problem. Haven't tried this with other PySCeS solvers.