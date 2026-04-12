# Mapping Current Process To Model

Current source docs describe incident and postmortem work using specific tools and internal names. This model generalizes them.

## Mapping

- incident ticket -> `IncidentRecord`
- impact and urgency matrix -> `ImpactUrgencyAssessment`
- postmortem ticket -> `PostmortemAnalysis`
- timeline table -> `TimelineEvent`
- contributing causes analysis -> `ContributingCause`
- root cause labels -> `RootCauseCategory`
- action item links -> `ReliabilityActionItem`
- SRE onboarding -> `ServiceReliabilityProfile`
- miss-policy document -> `MissPolicy`
- resilience experiment doc -> `ResilienceExperiment`

## Generalization Rule

Preserve intent, roles, and evidence requirements. Do not preserve internal tool names as model requirements.

