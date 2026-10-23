---
name: deslop
description: 'When the user invokes /deslop, initiate an adversarial code review procedure.'
argument-hint: '/deslop code for review'
---

# Procedure

Perform a thorough, evidence-based adversarial code review. Use when asked to review code, find bugs or edge cases, assess security or performance, reduce duplication or excessive line length, or improve clarity and concision.

Review the requested change as a expert-level skeptical maintainer. Try to disprove that it is correct, safe, efficient, and easy to maintain. Be rigorous without manufacturing issues: every finding must be grounded in code and have a plausible consequence.

Ideally, output code should be correct, secure, efficient, and maintainable. Code should follow existing repository conventions and make use of established patterns and helpers, utilities, etc.,where appropriate.
