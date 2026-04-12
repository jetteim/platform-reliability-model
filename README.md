# Platform Reliability Model

Platform-agnostic reliability model for service ownership, operational readiness, incidents, postmortems, miss-policy, resilience experiments, and reliability improvement work.

This repository documents reliability intent first. Ticket systems, chat channels, dashboards, alerting backends, and API calls are implementation targets.

## Scope

- Service reliability profiles and operational readiness.
- Service level definitions, SLI/SLO selection, telemetry-derived candidate generation, calculation basis, and review.
- Error budget and burn-rate response model.
- Incident records, impact and urgency assessment, and response metadata.
- Postmortem analysis, timelines, contributing causes, lessons, and action items.
- Miss-policy and error-budget response.
- Dependency resilience and graceful degradation.
- Resilience experiments and reliability reviews.
- Relationship to observability, SLOs, alert context, and decision dashboards.
- Agent-first usage scenarios with human review gates.

## Principles

- Reliability is socio-technical: systems, people, process, tooling, and product decisions all matter.
- Incidents are handled through response; postmortems are aftercare and learning.
- Postmortems are blameless, evidence-backed, and actionable.
- Action items must directly follow from incident evidence and analysis.
- SLO misses and incidents are related but not identical.
- Miss-policy is a pre-agreed operating mode, not improvised punishment.
- Resilience work should be hypothesis-driven and risk-aware.
- Observability evidence supports reliability decisions, but observability is not the whole reliability model.

## Validate

```bash
./scripts/validate.sh
```

The validator checks required files, JSON schemas, YAML examples, and implementation neutrality.

## Usage Scenarios

- [Service Reliability Onboarding](docs/usage-scenarios/service-reliability-onboarding.md)
- [Telemetry-Derived SLI/SLO Onboarding](docs/usage-scenarios/telemetry-derived-sli-slo-onboarding.md)
- [SLI/SLO Definition And Review](docs/usage-scenarios/sli-slo-definition-and-review.md)
- [Incident To Postmortem To Learning](docs/usage-scenarios/incident-to-postmortem-to-learning.md)
