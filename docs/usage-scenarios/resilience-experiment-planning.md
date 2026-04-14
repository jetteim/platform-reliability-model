# Resilience Experiment Planning

This scenario shows how an agent should plan directed and ambient resilience experiments.

## Agent Inputs

- service identity and owner
- user-facing capabilities or platform capabilities
- dependency inventory and known failure modes
- measured service telemetry and SLO references
- historical incidents, SLO misses, and action items
- existing timeout, retry, circuit breaker, fallback, and rollback behavior
- proposed failure mode, cadence, exposure, jitter, and blast radius
- safety preconditions, exclusion windows, abort criteria, and pause authority
- communication plan for affected owners and consumers

## Agent Outputs

- `ResilienceExperiment`
- hypothesis and expected behavior
- failure model
- ambient failure or directed failure classification
- safety preconditions and abort criteria
- blast-radius and exposure limits
- cadence, jitter, and exclusion windows
- observability evidence plan
- pause, skip, reset, or exemption procedure
- follow-up action items

## Workflow

1. Classify the experiment as directed failure or ambient failure.
2. State the hypothesis in user-visible or consumer-visible terms.
3. Identify the system, owners, affected capabilities, dependencies, and failure mode.
4. Define the resilience expectation before selecting the injection mechanism.
5. For ambient failure, define cadence, jitter, exposure, target selection policy, and exclusion windows.
6. Define blast-radius limits and maximum concurrent impact.
7. Define safety preconditions, abort criteria, and pause, skip, reset, or exemption authority.
8. Inventory observability evidence for SLOs, user journeys, dependency behavior, saturation, retries, circuit breakers, fallback paths, logs, and traces.
9. Confirm the experiment teaches that failure is normal without turning accepted risk into unmanaged outage risk.
10. Record expected results, review cadence, and action item handling.

## Refusal Conditions

- The experiment has no hypothesis.
- The proposed action can affect users but has no abort criteria.
- The affected owners cannot pause or skip the experiment.
- The blast radius, exposure, cadence, or jitter is undefined.
- Evidence cannot distinguish expected degradation from unacceptable impact.
- Known critical gaps are being tested before they have an owner and accepted risk decision.

## Human Review Gates

- Confirm owner, affected capabilities, and consumer impact.
- Confirm the resilience expectation is acceptable.
- Confirm SLOs and evidence are enough to judge the result.
- Confirm blast-radius, exposure, cadence, jitter, and exclusion windows.
- Confirm pause authority and abort criteria.
- Confirm follow-up action ownership.

## Completion Criteria

- experiment has hypothesis, expected behavior, failure model, safety preconditions, abort criteria, blast radius, evidence, and learning loop
- ambient experiments include cadence, jitter, exposure, target selection, exclusion windows, and pause or skip authority
- user-visible impact and SLO interpretation are explicit
- accepted risks and follow-up action items are recorded
