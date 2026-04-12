# Error Budget Alerting Model

Error-budget alerting should alert on burn-rate velocity, not only on remaining budget.

## Burn Rate

Burn rate is:

```text
error_rate / (1 - SLO)
```

Interpretation:

- burn rate below 1: budget should remain at the end of the window
- burn rate equal to 1: budget is consumed exactly over the window
- burn rate above 1: budget will be exhausted early

## Standard Windows

A generic starting policy is:

- short-window alert: 2% of the error budget consumed in 1 hour
- long-window alert: 5% of the error budget consumed in 6 hours

For a 30-day SLO window, those map to burn-rate thresholds:

- 14.4 for 1 hour
- 6 for 6 hours

These are defaults, not immutable laws. Criticality, response capability, traffic shape, and user impact can require different policies.

## Why Not Remaining Budget Alone

Remaining-budget alerts fire too late during sudden incidents and can stay noisy after harmless historical consumption. Burn-rate alerts focus on the current velocity of harm and preserve the error-budget concept as a usable risk budget.

## Reliability Ownership

Reliability owns the policy decision:

- which burn-rate windows exist
- which severities page or notify
- how alerts relate to miss-policy
- how review meetings judge alert timing and noise

Observability owns backend query binding and generated alert artifacts.

