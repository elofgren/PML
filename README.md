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
healthcare facility-associated *C. difficile* infection and recurrence.[1]

###Known Bugs:
- Birth/death model currently produces an integration error for some values of
mu ~ 25000. This error can be reproduced in SciPy using odeint. SciPy's
ode.integrate and R both solve the system just fine - this appears to be a
fleeting stiffness problem. Haven't tried this with other PySCeS solvers.


###References
[1] E.T. Lofgren et. al. A Mathematical Model to Evaluate the Routine Use of
Fecal Microbiota Transplantation to Prevent Incident and Recurrent *Clostridium
difficile* Infection. *Infection Control and Hospital Epidemiology*, Vol. 35,
No. 1 (2014) pp. 18-27