# Operational Readiness Model

Operational readiness checks whether a service can be operated safely.

## Checks

- owner and escalation target exist
- SLOs are defined or explicitly deferred
- SLO reality checks are complete
- dependencies are known
- failure modes have playbooks
- rollback is understood
- timeouts are intentional
- circuit breakers are used where appropriate
- graceful degradation exists where possible
- workload isolation protects critical paths
- error reporting distinguishes incidents from expected failures
- observability supports detection and diagnosis
- action items from prior incidents are tracked

## Review Triggers

- new feature or user journey
- new dependency
- incident or postmortem
- SLO miss
- major infrastructure or platform change
- repeated noisy alerts
- resilience experiment result
