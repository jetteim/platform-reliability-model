# Resilience Experiment Model

Resilience experiments test a hypothesis about a system's ability to tolerate failure. The model covers two experiment types:

- directed failure: a focused test of one dependency, component, or failure mode
- ambient failure: a recurring, bounded disruption that makes the principle that failure is normal an operating assumption

Ambient failure experiments are not outage drills or random punishment. They create steady resilience pressure so teams design and operate services as if dependencies, platform primitives, and their own code can fail at any time. A regular restart, partial capacity loss, injected timeout, or dependency unavailability can be valid when the blast radius is controlled, the schedule is known, and the learning loop is explicit.

## Required Fields

- hypothesis
- system under test
- experiment type
- expected behavior
- failure injection or experimental action
- failure model
- resilience expectation
- safety preconditions
- abort criteria
- blast radius
- cadence
- exposure and jitter
- observability evidence
- participants
- schedule or operating window
- pause, skip, or exemption authority
- result and learning
- follow-up actions

## Preconditions

Run an experiment only when:

- the team believes the hypothesis is true
- known shortcomings have been fixed first
- the risk is accepted
- abort criteria are clear
- evidence collection is ready
- the affected owners know how to pause or skip the experiment
- the expected service behavior is defined before the disruption starts

## Ambient Failure Pattern

Use ambient failure experiments when the reliability goal is to make resilience a normal engineering constraint rather than a rare event. The experiment should define:

- target class, such as own workload, dependency, platform primitive, data path, or control plane
- failure mode, such as restart, timeout, error response, latency, partial capacity loss, stale data, or dependency unavailability
- exposure, such as percentage of workload, request class, tenant, region, or dependency calls affected
- cadence and jitter so teams cannot rely on an exact failure minute
- exclusion windows for known high-risk periods
- blast-radius limits, including maximum concurrent impact
- pause, skip, or reset authority
- expected system behavior, including graceful degradation, bounded retries, circuit breaking, fallback, queueing, idempotency, or fast failure
- evidence plan tied to user-visible SLIs, dependency telemetry, logs, traces, and action items

The target state is that teams expect local code and external dependencies to fail and can prove that expected behavior still protects users, consumers, and error budgets.
