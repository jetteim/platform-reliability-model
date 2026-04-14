# Service Reliability Onboarding

This scenario shows how an agent should prepare a service reliability profile with human review gates.

## Agent Inputs

- service metadata
- ownership and escalation information
- user-facing capabilities
- dependencies
- SLO references or observability gaps
- measured service telemetry
- historical service behavior for candidate SLIs
- dependency SLOs or known dependency behavior
- known failure modes
- release and rollback process
- existing incidents and action items

## Agent Outputs

- `ServiceReliabilityProfile`
- dependency profiles
- operational readiness checks
- miss-policy reference
- service level definition draft
- SLI/SLO review notes
- telemetry-derived SLI/SLO candidates
- resilience experiment candidates
- observability requests
- action item backlog

## Workflow

1. Establish service identity and owner.
2. Identify user-facing capabilities and criticality.
3. Inventory dependencies and failure modes.
4. Inventory measured telemetry for the service.
5. Generate candidate SLIs and SLOs from measured telemetry where it reflects user-visible quality.
6. Mark telemetry gaps where the right reliability signal is missing.
7. Choose candidate SLIs from user-visible quality signals.
8. Define SLO success conditions, objective ratios, windows, and calculation basis.
9. Reality-check SLOs against history, dependencies, users, product goals, and repair capability.
10. Review miss-policy and observability gaps.
11. Assess graceful degradation, timeout, retry, circuit breaker, workload isolation, and rollback strategies.
12. Identify directed or ambient resilience experiment candidates for assumptions that should be proven regularly.
13. Define operational readiness status.
14. Propose action items for gaps.

## Human Review Gates

- Confirm ownership and criticality.
- Confirm dependency impact.
- Confirm generated SLI/SLO candidates represent user-visible service quality.
- Confirm which gaps are accepted risk.
- Confirm which action items must be scheduled before production readiness.
- Confirm SLO objectives are realistic and useful to consumers.

## Completion Criteria

- profile has owner, capabilities, dependencies, SLO references, and readiness status
- SLI/SLO choices have a documented rationale, telemetry evidence, and calculation basis
- unresolved risks are explicit
- action items have owners and verification methods
