
---
description: 執行技術探索，進行資料庫建模並生成 PlantUML 類別圖。
handoffs:
- label: Create Implementation Plan
  agent: speckit.plan
  prompt: Based on the exploration results, create a detailed implementation plan.
  scripts:
  sh: .specify/scripts/explore.sh
  ps: .specify/scripts/explore.ps1
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