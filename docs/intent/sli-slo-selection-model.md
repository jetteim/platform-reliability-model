# SLI/SLO Selection Model

SLIs and SLOs are the core quantitative interface of reliability.

## SLI Selection

An SLI is a measurement of service quality from a user's point of view. The user can be a human, another service, a platform operator, or another system.

Prefer unqualified indicators. The SLI should describe what is measured, not whether it is successful. For example, use "HTTP requests" or "request latency" as the indicator; success is defined by the SLO.

Good starting points are the four golden signals:

- latency
- traffic
- errors
- saturation

Services do not need all four. Latency and error rate are common first choices because they are easier to connect to objectives. User journeys can also be valid SLIs when request-level measurements do not capture perceived service quality.

## Telemetry-Derived Candidates

During onboarding, an agent may generate candidate SLIs and SLOs from measured service telemetry.

Use measured telemetry to answer:

- what quality dimensions are already measured
- where the measurement sits relative to the user
- which routes, journeys, dependencies, tenants, or scopes have separate behavior
- what success thresholds can be inferred from measured buckets, labels, statuses, probe results, or journey events
- what historical objective ratios are realistic
- where instrumentation gaps prevent a good SLI

Existing telemetry is not enough by itself. Accept a candidate only when it represents user-visible service quality and can be explained to service owners and consumers.

## SLO Definition

An SLO combines:

- an SLI
- optional SLI instance
- a success condition
- an objective ratio
- an evaluation window
- a calculation basis

The success condition defines which observations count as successful. The objective defines the acceptable success ratio over the evaluation window.

## Choosing A Good SLO

An agent should check:

1. historical behavior of the service
2. dependency behavior and dependency SLOs
3. user and consumer expectations
4. product goals
5. objective realism and available error budget
6. measurement location relative to the user
7. whether the SLO can be understood by service owners and consumers

The objective must be realistic. Extremely high objectives can produce error budgets too small for humans to notice, respond, and repair. As a starting point, prefer objectives that leave enough budget for at least a meaningful repair window unless the service has proven automation and response capability.

## Tiered SLOs

When a single objective cannot express both strict performance and broad reliability, define tiered SLOs:

- a high-confidence objective with a wider success condition
- a stricter success condition with a lower confidence objective

This captures both upper-bound user tolerance and desired normal performance.

## Calculation Basis

Supported bases:

- observations-based
- time-slice-based

Observations-based SLOs divide successful observations by total observations over the evaluation window.

Time-slice-based SLOs evaluate short slices, usually 5 minutes, and average those slices over the evaluation window. If a slice has no observations, the model assumes the SLO was met for that slice.

Selection rules:

- If average volume is at least one observation per second, prefer observations-based.
- If fewer than two failed observations would trigger the burn-rate alert, use time-slice-based.
- In the grey area, start with observations-based and review sensitivity.

## Reality Check

Before accepting an SLO:

- compare the proposed target to historical data
- check best, worst, and typical periods
- test sensitivity to time of day and traffic patterns
- check whether the metric source supports the needed success threshold
- check whether active probe interval changes would change the meaning of the SLO
- record instrumentation gaps instead of accepting unverifiable objectives
