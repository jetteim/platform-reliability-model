# Reliability Review Model

Reliability reviews keep the model current after onboarding.

## Review Inputs

- SLO status and misses
- SLO objective realism and calculation basis
- incidents and postmortems
- action item status
- dependency changes
- alert quality
- playbook quality
- resilience experiment results
- consumer feedback

## Review Questions

- Did alerts fire too late, too early, or too often?
- Did responders have enough context?
- Did miss-policy work?
- Should SLOs change?
- Did the calculation basis still match traffic volume?
- Did dependencies invalidate the assumptions behind the objective?
- Are action items reducing risk?
- Are dependencies still acceptable?
- Do resilience experiments still prove that dependency and local workload failure is expected and bounded?
- Are lessons reusable by other teams?
