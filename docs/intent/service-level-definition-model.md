# Service Level Definition Model

A service level definition is the reliability agreement for a service.

It connects user expectations, measured indicators, objectives, error budgets, miss-policy, and observability implementation work.

## Required Intent

A service level definition should include:

- service identity and owner
- users or consumers represented by the definition
- SLIs
- SLI instances when one indicator has multiple measured targets or scopes
- SLOs attached to each indicator or instance
- success condition
- objective ratio
- evaluation window
- calculation basis
- measurement location
- measurement caveats
- miss-policy
- observability handoff for telemetry binding, burn-rate alerts, and decision dashboards

## SLI Instances

Use an SLI instance when the same indicator is measured for multiple targets, routes, journeys, tenants, dependency paths, or platform scopes.

The instance should explain what is included, what is excluded, and who should care about that instance. It should not hide materially different user experiences behind one aggregate.

## Measurement Details

Record how the SLI is measured when that affects interpretation:

- telemetry source
- measurement point relative to the user
- active probe interval and timeout, if a probe is used
- histogram bucket or threshold requirements
- excluded traffic, synthetic traffic, retries, or known blind spots

Changing active probe frequency, timeout, or target changes the meaning of the SLI and must be reviewed as a reliability change.

## Objective Ratio

The objective is represented as a ratio from `0` to `1`.

For example:

- `0.999` means 99.9% of observations or slices must meet the success condition
- `0.99` means 99%

Using a ratio avoids ambiguity between percentages and fractions in generated artifacts.

## Completion Test

A service level definition is incomplete when:

- the SLI does not represent user-visible quality
- the success condition is mixed into the SLI name instead of the SLO
- the objective has no historical reality check
- the calculation basis is unspecified
- the miss-policy is absent or vague
- the telemetry binding is assumed but not verified
