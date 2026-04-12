# Miss-Policy Model

Miss-policy is a pre-agreed operating mode triggered by error-budget exhaustion.

## Required Fields

- service
- SLO reference
- trigger condition
- response team size
- eligible responders
- authority granted
- work allocation
- success condition
- exit condition
- communication expectations
- review cadence

## Internal Causes

When the cause is within the team's control, the response team should focus on fixing the cause, deploying the fix, and confirming recovery.

## External Causes

When the cause is an external dependency, the response should identify whether the dependency has SLOs, whether those SLOs cover the required use case, and whether mitigation, negotiation, or temporary SLO adjustment is appropriate.

Lowering an SLO is a last resort and must include consumer impact review and an expiration or review date.

