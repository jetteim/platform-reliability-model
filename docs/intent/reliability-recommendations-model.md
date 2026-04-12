# Reliability Recommendations Model

Reliability recommendations provide a baseline checklist for service design and review.

## Define SLOs First

Start with service observation and SLI/SLO choice. Reliability work should focus on actual service quality and user impact rather than intuition alone.

## Identify Dependencies

Inventory every dependency that contributes to response quality, data quality, availability, or freshness.

For each dependency, decide:

- whether it is critical or optional
- whether it is synchronous or asynchronous
- whether it has a matching SLO
- whether direct data access is avoidable
- how failure affects users and consumers

Do not depend on another service's private data store as a reliability shortcut.

## Graceful Failure

Services should not fail completely when an optional dependency fails.

Recommended patterns:

- classify critical, fail-safe, and fail-over dependencies
- cache suitable data
- use cache-on-failure where stale data is safer than no data
- separate normal cache from failover cache when persistence or long TTLs are needed
- make dependencies asynchronous when immediate user blocking is unnecessary
- document eventual consistency behavior and guarantees

## Circuit Breakers

Use circuit breakers for critical or timeout-prone dependencies. Once repeated failures indicate a dependency is failing, stop calling it for a defined period and use fallback behavior.

Circuit breakers are especially important for timeout failures because waiting on timeouts can saturate the caller and propagate failure to its consumers.

## Timeout Tuning

Timeouts should be intentional and aligned with SLOs, dependency behavior, and user tolerance.

Review:

- application request timeout
- connection timeout
- read timeout
- write timeout
- queue timeout
- worker pool or concurrency limits
- database and cache timeouts

Defaults are rarely sufficient. Shorter timeouts plus graceful degradation are often safer than long waits.

## Error Reporting

Error reporting should answer:

- Do we need to take action?
- Where should we investigate?
- Is this expected user behavior, dependency failure, data issue, connectivity issue, or system bug?

Production error reporting should distinguish incidents from expected failures and should support root-cause investigation without drowning responders in noise.

## Workload Isolation

Separate workloads when slow, expensive, low-priority, or bursty paths can harm critical low-latency paths.

Useful separation dimensions:

- deployment
- worker pool
- queue
- scaling policy
- resource limits
- routing path
- retry and timeout policy

