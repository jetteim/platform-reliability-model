# Incident Model

An incident is an unplanned interruption or reduction in quality that requires emergency response or formal tracking.

## Rule

When in doubt, record an incident. A low-priority incident can later be classified as not requiring a postmortem, but the event should not disappear.

## Required Fields

- summary
- description
- start time
- first response time
- dispatch time
- stable or end time
- affected entities
- impact type
- impact level
- urgency level
- priority
- reporter
- notified by
- deployment or change reference
- resolution
- linked postmortem when required

## Impact And Urgency

Impact measures affected scope. Urgency measures importance and required speed of repair.

Priority is derived from impact and urgency:

- critical: postmortem mandatory
- major: postmortem mandatory
- normal: postmortem mandatory
- low: postmortem optional with reviewer confirmation

