# Service Reliability Onboarding

This scenario shows how an agent should prepare a service reliability profile with human review gates.

## Agent Inputs

- service metadata
- ownership and escalation information
- user-facing capabilities
- dependencies
- SLO references or observability gaps
- known failure modes
- release and rollback process
- existing incidents and action items

## Agent Outputs

- `ServiceReliabilityProfile`
- dependency profiles
- operational readiness checks
- miss-policy reference
- resilience experiment candidates
- observability requests
- action item backlog

## Workflow

1. Establish service identity and owner.
2. Identify user-facing capabilities and criticality.
3. Inventory dependencies and failure modes.
4. Review SLOs, miss-policy, and observability gaps.
5. Assess graceful degradation, timeout, retry, circuit breaker, and rollback strategies.
6. Define operational readiness status.
7. Propose action items for gaps.

## Human Review Gates

- Confirm ownership and criticality.
- Confirm dependency impact.
- Confirm which gaps are accepted risk.
- Confirm which action items must be scheduled before production readiness.

## Completion Criteria

- profile has owner, capabilities, dependencies, SLO references, and readiness status
- unresolved risks are explicit
- action items have owners and verification methods

