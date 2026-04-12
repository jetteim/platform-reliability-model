# Telemetry-Derived SLI/SLO Onboarding

This scenario shows how an agent should generate candidate SLIs and SLOs from measured service telemetry during onboarding.

Measured telemetry is evidence, not authority. The agent may propose SLIs and SLOs from existing measurements, but human review must confirm that they represent user-visible service quality.

## Agent Inputs

- service identity and owner
- available metrics, logs, traces, probe results, synthetic checks, and user-experience signals
- traffic volume and traffic shape
- historical latency, error, throughput, saturation, and journey data
- dependency telemetry and dependency SLOs
- current alerting and incident history
- known measurement blind spots

## Agent Outputs

- telemetry inventory
- candidate SLIs mapped to measured signals
- rejected candidate SLIs with reasons
- proposed SLO success conditions
- proposed objective ratios and windows
- recommended calculation basis
- reality-check notes from historical measurements
- measurement gaps that block good SLIs
- observability requests for missing telemetry, semantic convention fixes, or backend generation

## Workflow

1. Inventory the telemetry that already exists for the service.
2. Group telemetry by quality dimension: latency, traffic, errors, saturation, freshness, availability, and user journeys.
3. Identify which measurements are closest to the user or consumer experience.
4. Reject measurements that are purely internal and cannot be explained as service quality.
5. Propose candidate SLIs with unqualified names.
6. Define SLI instances when one indicator applies to multiple routes, journeys, tenants, dependency paths, or platform scopes.
7. Infer possible success conditions from measured thresholds, histogram buckets, result labels, status classes, synthetic results, or journey completion events.
8. Use historical measurements to propose realistic objective ratios and evaluation windows.
9. Choose calculation basis from volume and alert sensitivity.
10. Identify gaps where available telemetry cannot support a meaningful SLI.
11. Create observability handoff requests for missing instrumentation, semantic attributes, telemetry normalization, burn-rate alerts, and decision dashboards.
12. Present the generated service level definition for human review.

## Guardrails

- Do not choose an SLI only because a metric exists.
- Do not use backend implementation convenience as the reason for an SLI.
- Do not mix success conditions into SLI names.
- Do not accept objectives without historical reality checks.
- Do not hide important user journeys inside a broad aggregate.
- Do not generate backend-specific alert artifacts in the reliability workflow.

## Completion Criteria

- every generated candidate cites the measured telemetry that supports it
- every accepted SLI has user-visible rationale
- every SLO has success condition, objective ratio, window, and calculation basis
- every proposed objective has historical evidence or an explicit uncertainty note
- gaps are expressed as observability work, not reliability assumptions
