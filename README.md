# Hollow House Institute — Organization Governance

> Time turns behavior into infrastructure.  
> Behavior is the most honest data there is.

This repository defines **organization-wide standards** for all Hollow House Institute
projects, datasets, licenses, and public-facing repositories.

It is intentionally minimal in code and maximal in authority.

---

## Purpose

The `.github` repository serves as the **governance spine** for the Hollow House Institute
GitHub organization.

It establishes:
- Canonical doctrine and positioning
- Default contribution and behavior standards
- Licensing and attribution expectations
- Cross-repository consistency

All repositories under the Hollow House Institute organization inherit guidance from here.

---

## Core Doctrine

**Time turns behavior into infrastructure.**

Repeated human behavior, observed longitudinally, solidifies into structure.
That structure governs systems, decisions, and outcomes.

**Behavior is the most honest data there is.**

Hollow House Institute datasets and frameworks prioritize:
- Observable behavior over stated intent
- Temporal consistency over isolated events
- Structural signal over narrative interpretation

This doctrine governs:
- Dataset construction
- Metadata design
- Licensing terms
- Downstream model use

---

## Scope of Authority

This repository informs and constrains:

- 📦 Dataset repositories  
- 📜 Licensing repositories  
- 🧠 Research and audit frameworks  
- 🌐 Public-facing documentation  
- 🤖 AI and agentic system artifacts  

Where conflicts arise, **doctrine defined here supersedes local README language**.

---## Governance Definitions

Key terms used in this repository (e.g., *behavioral drift*, *decision substitution*, *escalation decay*)
are defined in the **HHI Governance Glossary**.

Canonical definitions:
https://github.com/hollowhouseinstitute/Hollow_House_Standards_Library/blob/main/glossary.md

## Organizational Standards

### Required README Header (All Repos)

Every Hollow House Institute repository must include:

```md
> Time turns behavior into infrastructure.  
> Behavior is the most honest data there is.

---

## Decision Boundary

A repository is compliant only if:
- Required README header is present
- Canonical doctrine is intact
- LICENSE and README exist

Non-compliant repositories fail validation.

## Stop Authority

If validation fails:
- CI fails
- Merge is blocked
- Release is blocked

## Escalation

If a repository fails:
- Escalation is triggered
- Escalation persists until resolved

## Accountability

- Repo owner: compliance
- Org maintainers: enforcement
- CI: validation execution

## Governance Telemetry

Each validation records:
- event
- actor
- decision_boundary
- action
- outcome
- escalation_status
- timestamp

## Enforcement Layer

This repo is enforced via GitHub Actions and required status checks.

