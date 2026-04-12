# Dependency Resilience Model

Services rarely stand alone. Reliability work must identify dependencies and define how failures are handled.

## Required Dependency Profile

- dependency name
- owner
- purpose
- criticality
- synchronous or asynchronous use
- expected SLO or SLA
- timeout
- retry policy
- circuit breaker policy
- fallback behavior
- cache strategy
- failure impact
- consumer communication

## Recommended Strategies

- avoid direct access to other services' private data stores
- use graceful degradation where possible
- cache on failure for suitable data
- prefer asynchronous behavior where user input does not need to block
- use circuit breakers for critical or timeout-prone dependencies
- tune connection, read, write, and application timeouts

