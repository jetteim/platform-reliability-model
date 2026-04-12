# Platform Reliability Model Design

## Goal

Create a platform-agnostic reliability model and reusable skill that can guide service reliability onboarding, incident aftercare, postmortem analysis, miss-policy, action item creation, resilience experiments, and reliability reviews.

## Source Context

The model is informed by local `NEW_WORK` repositories:

- incident and postmortem process documentation
- incident ticket fields and impact/urgency model
- postmortem timeline, impact, contributing causes, lessons, root-cause labels, and action item guidance
- SRE onboarding, SLI/SLO, miss-policy, and review meeting docs
- reliability recommendations for dependencies, graceful degradation, circuit breakers, timeouts, error reporting, and workload isolation
- resilience experiment docs

The implementation details are generalized. Jira, chat systems, internal service names, and proprietary tools are examples, not model requirements.

## Architecture

The repository has four layers:

1. Intent documents define reliability concepts and operating models.
2. Schemas define stable contracts.
3. Examples show minimal valid intent instances.
4. Usage scenarios define agent-first workflows with human review gates.

## Boundaries

Reliability owns risk, readiness, incidents, learning, miss-policy, resilience, and action tracking.

Observability owns telemetry, semantic conventions, SLO query bindings, alerts, dashboards, and backend artifact generation.

The reliability model references the observability model when reliability decisions require telemetry evidence, SLOs, alert context, or dashboards.

## Acceptance

- The private model repo validates locally.
- The public `reliability-engineering` skill can use the model when installed.
- Workstation bootstrap can refresh and install both on a clean machine.
- The model documents intent rather than current implementation.

