# Source Scan Summary

Local repositories under `NEW_WORK` were scanned as evidence for this model.

## Findings

- Incident process defines incidents broadly and recommends recording when uncertain.
- Incident priority is derived from impact and urgency.
- Postmortem requirement depends on priority, with reviewer confirmation for optional cases.
- Postmortems include description, timeline, resolution, impact, contributing causes, root cause labels, lessons, action items, child incidents, and review status.
- Contributing causes analysis starts from triggers, examines enabling components, and studies response timeline delays.
- Action items should improve incident follow-up, detection, first response, dispatch, repair, automatic mitigation, playbooks, or resilience.
- SRE onboarding uses initial talk, SLI definition, SLO definition, alerting and dashboards, miss-policy definition, process start, and review meeting.
- Service level definition guidance uses SLIs, SLI instances, SLOs, and written miss-policy as the durable service reliability agreement.
- SLI guidance says indicators should be user-centric and as unqualified as possible; success belongs in the SLO.
- Active probe interval, timeout, and threshold choices affect the meaning of probe-based SLIs and should be reviewed as reliability changes.
- SLO guidance requires historical behavior, dependency behavior, users/consumers, product goals, realistic objectives, and calculation basis.
- Existing telemetry can seed SLI/SLO candidates during onboarding, but candidates still need user-visible rationale and historical reality checks.
- SLO calculation basis should choose observations for high-volume services, time slices when very few errors would alert, and preserve the no-observation-is-successful assumption for time slices.
- Burn-rate alerting focuses on error budget velocity, with common 1h and 6h windows.
- Miss-policy defines response team, responsibilities, authority, success and exit conditions.
- Reliability recommendations include dependency identification, graceful failure, failover caching, circuit breakers, timeout tuning, error reporting, and workload isolation.
- Resilience experiments use hypotheses, accepted risk, preparation, and evidence.
