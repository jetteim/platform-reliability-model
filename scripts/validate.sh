#!/usr/bin/env bash
set -euo pipefail

required_files=(
  README.md
  docs/intent/principles.md
  docs/intent/reliability-boundaries.md
  docs/intent/service-level-definition-model.md
  docs/intent/service-reliability-model.md
  docs/intent/sli-slo-selection-model.md
  docs/intent/error-budget-alerting-model.md
  docs/intent/reliability-recommendations-model.md
  docs/intent/incident-model.md
  docs/intent/postmortem-model.md
  docs/intent/contributing-causes-model.md
  docs/intent/action-item-model.md
  docs/intent/miss-policy-model.md
  docs/intent/dependency-resilience-model.md
  docs/intent/operational-readiness-model.md
  docs/intent/resilience-experiment-model.md
  docs/intent/reliability-review-model.md
  docs/intent/relation-to-observability.md
  docs/devex/local-validation.md
  docs/devex/ci-validation.md
  docs/devex/reliability-gates.md
  docs/usage-scenarios/service-reliability-onboarding.md
  docs/usage-scenarios/telemetry-derived-sli-slo-onboarding.md
  docs/usage-scenarios/sli-slo-definition-and-review.md
  docs/usage-scenarios/resilience-experiment-planning.md
  docs/usage-scenarios/incident-to-postmortem-to-learning.md
  docs/migration/mapping-current-process-to-model.md
  docs/sources/source-scan-summary.md
)

for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "missing required file: $file" >&2
    exit 1
  fi
done

python3 - <<'PY'
import json
from pathlib import Path

for path in sorted(Path("schemas").glob("*.json")):
    with path.open() as fh:
        json.load(fh)
print("json schemas parse")
PY

ruby -e 'require "yaml"; Dir["examples/*.yaml"].sort.each { |path| YAML.load_file(path) }; puts "yaml examples parse"'

if grep -RniE '(^|[^A-Za-z])(jira|ms teams|xing|new work|datadog|grafana|thanos|prometheus|aws|gcp|azure)([^A-Za-z]|$)' docs/intent docs/devex docs/usage-scenarios docs/migration >/tmp/platform-reliability-implementation-scan.txt; then
  echo "implementation-specific term found in model docs:" >&2
  cat /tmp/platform-reliability-implementation-scan.txt >&2
  exit 1
fi

grep -R "kind: ServiceReliabilityProfile" examples/service-reliability-profile.yaml >/dev/null
grep -R "kind: ServiceLevelDefinition" examples/service-level-definition.yaml >/dev/null
grep -R "kind: IncidentRecord" examples/incident-record.yaml >/dev/null
grep -R "kind: PostmortemAnalysis" examples/postmortem-analysis.yaml >/dev/null
grep -R "verification:" examples/action-item.yaml >/dev/null
grep -R "abortCriteria:" examples/resilience-experiment.yaml >/dev/null
grep -R "experimentType: ambient-failure" examples/resilience-experiment.yaml >/dev/null
grep -R "jitter:" examples/resilience-experiment.yaml >/dev/null
grep -R "ambient failure" docs/intent/resilience-experiment-model.md docs/usage-scenarios/resilience-experiment-planning.md >/dev/null
grep -R "failure is normal" docs/intent/resilience-experiment-model.md docs/usage-scenarios/resilience-experiment-planning.md >/dev/null

echo "validation ok"
