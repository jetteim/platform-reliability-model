# Relation To Observability

Reliability uses observability as evidence and execution support.

Use the observability model for:

- OpenTelemetry semantic conventions
- SLO query bindings
- alert context contracts
- decision dashboards
- backend monitor and dashboard artifact generation
- telemetry gaps

Use the reliability model for:

- choosing SLIs and SLOs
- validating objective realism and calculation basis
- deciding whether the risk is acceptable
- determining incident priority
- capturing timelines
- analyzing contributing causes
- writing lessons learned
- generating action items
- defining miss-policy
- planning resilience experiments

If a reliability action item asks for telemetry, alerts, dashboards, or backend rules, hand that work to the observability model.

If an observability task asks whether an SLO is appropriate, whether the objective is realistic, or whether an alert should activate miss-policy, hand that decision to the reliability model.
