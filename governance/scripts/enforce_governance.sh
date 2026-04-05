#!/data/data/com.termux/files/usr/bin/bash

set -e

TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
ACTOR=$(git config user.name || echo "unknown")

EVENT="repo_change"
ESCALATION="none"
ACTION="allow"

# --- Decision Boundary ---
# Detect modification of governance-critical files
CHANGED=$(git diff --name-only HEAD~1 HEAD || true)

if echo "$CHANGED" | grep -E "README.md|docs/|legal/|glossary"; then
    DECISION_BOUNDARY="governance_definition_change"
else
    DECISION_BOUNDARY="normal"
fi

# --- Stop Authority ---
if [ "$DECISION_BOUNDARY" = "governance_definition_change" ]; then
    echo "STOP AUTHORITY TRIGGERED: Governance definition modified"

    ESCALATION="critical"
    ACTION="block"

    echo "Event: $EVENT" >> governance/telemetry/log.txt
    echo "Actor: $ACTOR" >> governance/telemetry/log.txt
    echo "Decision Boundary: $DECISION_BOUNDARY" >> governance/telemetry/log.txt
    echo "Action: $ACTION" >> governance/telemetry/log.txt
    echo "Escalation: $ESCALATION" >> governance/telemetry/log.txt
    echo "Timestamp: $TIMESTAMP" >> governance/telemetry/log.txt
    echo "---" >> governance/telemetry/log.txt

    exit 1
fi

# --- Normal Pass ---
echo "Governance Check Passed"

echo "Event: $EVENT" >> governance/telemetry/log.txt
echo "Actor: $ACTOR" >> governance/telemetry/log.txt
echo "Decision Boundary: $DECISION_BOUNDARY" >> governance/telemetry/log.txt
echo "Action: allow" >> governance/telemetry/log.txt
echo "Escalation: none" >> governance/telemetry/log.txt
echo "Timestamp: $TIMESTAMP" >> governance/telemetry/log.txt
echo "---" >> governance/telemetry/log.txt

