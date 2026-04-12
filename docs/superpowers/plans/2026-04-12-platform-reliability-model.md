# Platform Reliability Model Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a private reliability model repo, a public reliability engineering skill, and clean-machine bootstrap integration.

**Architecture:** Store reliability intent in Markdown, contracts in JSON Schema, examples in YAML, and validation in a dependency-light shell script. Keep ticket systems and backend APIs as generated implementation targets.

**Tech Stack:** Markdown, JSON Schema, YAML examples, POSIX shell, Python standard library, Ruby Psych YAML parser.

---

### Task 1: Model Repository

**Files:**
- Create: `README.md`
- Create: `docs/intent/*.md`
- Create: `docs/usage-scenarios/*.md`
- Create: `schemas/*.schema.json`
- Create: `examples/*.yaml`
- Create: `scripts/validate.sh`

- [x] **Step 1: Create model repository structure**
- [x] **Step 2: Add intent docs**
- [x] **Step 3: Add usage scenarios**
- [x] **Step 4: Add schemas and examples**
- [x] **Step 5: Add validation**

### Task 2: Skill Repository

**Files:**
- Create: `skill/reliability-engineering/SKILL.md`
- Create: `references/reliability-model-summary.md`
- Create: `examples/service-reliability-profile.yaml`
- Create: `scripts/validate.sh`

- [x] **Step 1: Add reusable reliability skill**
- [x] **Step 2: Add fallback reference**
- [x] **Step 3: Add validation**

### Task 3: Bootstrap Integration

**Files:**
- Modify: `platform-workstation-bootstrap/scripts/install-skills.sh`
- Modify: `platform-workstation-bootstrap/scripts/refresh-github.sh`
- Modify: `platform-workstation-bootstrap/scripts/verify.sh`
- Modify: `platform-workstation-bootstrap/README.md`
- Modify: `platform-workstation-bootstrap/docs/external-dependencies.md`
- Modify: `platform-workstation-bootstrap/docs/skill-trigger-examples.md`
- Modify: `platform-workstation-bootstrap/manifests/github-repos.txt`
- Create: `platform-workstation-bootstrap/skills/codex/reliability-engineering/SKILL.md`

- [x] **Step 1: Add source mirrors**
- [x] **Step 2: Add owned repo refresh**
- [x] **Step 3: Add fallback skill copy**
- [x] **Step 4: Verify bootstrap**

