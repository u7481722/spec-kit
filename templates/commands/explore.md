---
description: 根據需求選擇使用哪種資料庫，並生成class diagram
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

You are in the EXPLORE phase.
Your goal is to evaluate technical options WITHOUT committing to implementation details.

You MUST:
- Base all decisions on the given specification
- Compare multiple options before recommending one
- Keep the analysis technology-agnostic
- Avoid implementation details and code

You MUST NOT:
- Choose specific database products
- Design APIs
- Write migrations or schemas
- 

# Context: Based on `spec.md`, explore the data structure and storage strategy.
# Load `templates/explore-template.md` to understand required sections.


## 1. Data Characteristics Analysis

Analyze:
- Core entities
- Relationships (1:1, 1:N, N:M)
- Read/write patterns
- Transaction consistency requirements
- Expected growth and scalability needs

---

## 2. Database Model Options

Evaluate the following options:

### Option A: Relational (SQL)
- Strengths for this use case
- Weaknesses or risks

### Option B: NoSQL (Document / Key-Value)
- Strengths for this use case
- Weaknesses or risks

### Option C: Other Models (Graph / Search / Hybrid)
- Strengths for this use case
- Weaknesses or risks

---

## 3. Recommended Database Approach

Clearly recommend ONE primary database model.

Include:
- Why it best fits the data and access patterns
- Trade-offs you accept
- Risks to revisit later

---

## 4. Conceptual Class Diagram

Produce a **conceptual class diagram** that represents:
- Core domain entities
- Key attributes
- Relationships

Rules:
- No ORM annotations
- No database-specific syntax
- Use plain UML-style notation

Format the diagram in **PlantUML**.

Example:

```plantuml
@startuml
class User {
  id
  name
}
class Order {
  id
  createdAt
}
User "1" -- "many" Order
@enduml


## 5.Output:
- Save the entire findings to `exploration.md`.