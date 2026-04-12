# Service Reliability Model

Service reliability describes how a service is expected to behave, degrade, recover, and learn.

## Required Profile

A service reliability profile should define:

- application and service identity
- owning team
- user-facing capabilities
- criticality
- dependencies
- SLO references
- service level definition
- miss-policy
- graceful degradation strategies
- operational readiness checks
- resilience experiments
- known risk acceptances
- review cadence

## Readiness Dimensions

- ownership and escalation
- dependency inventory
- timeout and retry policy
- circuit breaker strategy
- fallback and cache-on-failure strategy
- workload isolation
- rollback and release safety
- error reporting quality
- observability and SLO readiness
- SLI/SLO reality check and calculation basis
- playbooks for known failure modes

## Service Level Definition

A service reliability profile should include or reference a service level definition. The service level definition is the agreement that links user-facing expectations to measurable indicators, SLI instances, objectives, error budgets, miss-policy, dashboards, and alerts.

The reliability model owns the choice of SLI, SLO, calculation basis, objective realism, and miss-policy. The observability model owns telemetry binding and backend artifact generation.
