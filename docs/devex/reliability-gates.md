# Reliability Gates

Reliability gates should be used where they prevent avoidable operational risk.

Useful gates:

- new service cannot be marked production-ready without owner, escalation, dependency profile, and rollback plan
- page-worthy alert cannot exist without playbook and decision context
- postmortem cannot close with unowned action items
- SLO miss cannot close without miss-policy review
- resilience experiment cannot run without abort criteria and blast-radius review

