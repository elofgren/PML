PML
===

A collection of PySCeS Markup Language files and Python helper
functions.

##Contents: 

###PML Model Descriptions
Ecology:
- *LV.psc* : Basic Lotka-Volterra model
- *LV_queue.psc* : Basic Lotka-Volterra model with queue-based predator creation
- *SILV.psc* : Susceptible-Infected process with predation
- *TwoPreyLV.psc* : Basic Lotka-Volterra model with two prey species
- *logisticLV.psc* : Basic Lotka-Volterra model with logistic-growth of prey species
- *logisticLV_queue* : Basic Lotka-Volterra model with logistic-growth of prey species and queue based predator creation.

Epidemiology:
- *SIR.psc* : A basic SIR epidemic model with no demographics
- *SIR_BirthDeath.psc*: A basic SIR epidemic model with demographics
- *cdiff_FT.psc* : A model of fecal microbiota transplantation to prevent
healthcare facility-associated *C. difficile* infection and recurrence.[1]
- *cdiff_FT_queue.psc* : The fecal microbiota transplantation model with queue-based admissions and discharges.

###Known Bugs/Notes:
- Birth/death model currently produces an integration error for some values of
mu ~ 25000. This error can be reproduced in SciPy using odeint. SciPy's
ode.integrate and R both solve the system just fine - this appears to be a
fleeting stiffness problem. Haven't tried this with other PySCeS solvers.
- LV.psc can result in very long run-times when simulated stochastically, due to exponential prey growth if the predator species experiences stochastic extinction.

###References
[1] E.T. Lofgren et. al. A Mathematical Model to Evaluate the Routine Use of
Fecal Microbiota Transplantation to Prevent Incident and Recurrent *Clostridium
difficile* Infection. *Infection Control and Hospital Epidemiology*, Vol. 35,
No. 1 (2014) pp. 18-27 http://www.jstor.org/stable/10.1086/674394