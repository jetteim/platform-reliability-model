# SLI/SLO Definition And Review

This scenario shows how an agent should help define or review service level definitions.

## Agent Inputs

- service identity and owner
- user-facing capabilities or platform capabilities
- current telemetry and historical behavior
- dependencies and dependency SLOs
- user or consumer expectations
- product goals
- incident and SLO miss history
- response capability and repair expectations

## Agent Outputs

- candidate SLIs
- selected SLIs with rationale
- SLI instances when one indicator has multiple measured scopes
- SLO success conditions
- objectives and evaluation windows
- calculation basis
- reality-check results
- miss-policy draft or update
- observability requests for missing telemetry
- backend generation request for the observability model

## Workflow

1. Identify users and consumers of the service.
2. Identify the user-visible quality dimensions that matter.
3. Propose candidate SLIs from latency, traffic, errors, saturation, or user journey measures.
4. Keep SLIs unqualified and define success in the SLO.
5. Check historical behavior.
6. Check dependency behavior and dependency SLOs.
7. Check user and product expectations.
8. Choose an objective that gives a realistic error budget.
9. Define SLI instances when the same indicator covers multiple targets, journeys, routes, tenants, or platform scopes.
10. Record measurement details such as telemetry source, measurement point, active probe interval, active probe timeout, and threshold requirements.
11. Choose observations-based or time-slice-based calculation.
12. Reality-check the SLO against traffic patterns, outliers, and repair capability.
13. Define burn-rate alerting and miss-policy expectations.
14. Hand telemetry query binding and backend artifact generation to the observability model.

## Human Review Gates

- Confirm the SLI matches user-visible quality.
- Confirm the objective is realistic and useful.
- Confirm the error budget supports risk-aware product work.
- Confirm calculation basis is appropriate for traffic volume.
- Confirm dependency assumptions.
- Confirm miss-policy commitment.

## Completion Criteria

- every SLO has a success condition, objective ratio, window, and calculation basis
- every SLO has a historical reality check or an explicit instrumentation gap
- measurement details are recorded when they affect interpretation
- dependencies are considered
- miss-policy is defined or explicitly deferred
- observability work is handed off for telemetry binding and generated artifacts
