---
description: Create or update the feature specification from a natural language feature description.
handoffs:
- label: Build Technical Plan
  agent: speckit.plan
  prompt: Create a plan for the spec. I am building with...
- label: Clarify Spec Requirements
  agent: speckit.clarify
  prompt: Clarify specification requirements
  send: true
  scripts:
  sh: scripts/bash/create-new-feature.sh --json "{ARGS}"
  ps: scripts/powershell/create-new-feature.ps1 -Json "{ARGS}"
---


## User Input

```text
$ARGUMENTS
```

You **MUST** consider the user input before proceeding (if not empty).

# Role: Senior Backend Architect
# Context: Based on `spec.md`, explore the data structure and storage strategy.

## Tasks:
1. **Database Schema**: Propose a normalized database schema.
2. **DB Selection**: Explain why the chosen database (SQL vs NoSQL) is the best fit for these requirements.
3. **Visual Modeling**: Generate a **PlantUML Class Diagram** representing the data entities, their attributes, and relationships.

## Output:
- Save the entire findings to `exploration.md`.