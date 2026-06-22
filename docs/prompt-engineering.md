# Prompt Engineering Guide

A practical guide to writing effective prompts for AI-assisted development.

---

## Core Principles

### 1. Be Specific
Vague prompts produce vague results. Always include:
- Target language/framework and version
- Input/output formats
- Constraints and edge cases
- Desired output format (code only vs. code + explanation)

### 2. Provide Context
AI performs better with context:
- Show existing code that's related
- Explain the broader goal
- Mention what you've already tried
- Describe the runtime environment

### 3. Iterate
Rarely get it perfect on the first try:
- Start with a broad request
- Refine based on the response
- Ask for specific improvements
- Build up complex tasks step by step

---

## Prompt Patterns

### The "Trio" Pattern
For any coding task, include three things:
1. **Task** - What you want to build
2. **Context** - Where it fits in your project
3. **Constraints** - What limits you're working within

```
Task: [WHAT]
Context: [WHERE/WHY]
Constraints: [LIMITS]
```

### The "Show and Tell" Pattern
When you have a specific output format in mind:
1. Show an example of input
2. Show the desired output
3. Ask for the transformation logic

### The "Incremental" Pattern
For complex tasks, break them down:
1. Ask for the overall approach first
2. Then ask for implementation of each part
3. Then ask for integration/tests

---

## Common Pitfalls

| Pitfall | Why it fails | Better approach |
|---------|-------------|-----------------|
| "Write a website" | Too vague | "Build a responsive landing page with HTML/CSS/JS, with a hero section, features grid, and contact form" |
| No constraints | AI uses latest syntax you might not support | "Python 3.9 compatible, no external dependencies" |
| Asking for everything at once | Overwhelms the model | Break into: architecture → implementation → tests |
| Not specifying output format | Gets explanation when you want code | "Output only the function, no explanation" |

---

## Advanced Techniques

### Chain of Thought Prompting
Ask the AI to "think step by step" before coding:
```
Before writing code, outline your approach step by step.
Then implement each step.
```

### Few-Shot Prompting
Provide 2-3 examples of the pattern you want:
```
Here are 2 examples of the pattern I want:

Example 1:
Input: [X]
Output: [Y]

Example 2:
Input: [A]
Output: [B]

Now do the same for:
Input: [Z]
```

### Role-Based Prompting
Assign a specific role to get more specialized output:
```
You are a senior backend engineer specializing in distributed systems.
Review the following code for concurrency issues...
```

---

## Evaluating AI-Generated Code

Always:
- ✅ Read the full code before running it
- ✅ Understand the logic (don't blindly copy)
- ✅ Test edge cases
- ✅ Check for security issues (injection, auth, etc.)
- ✅ Verify it actually compiles/runs in your environment

---

## Prompt Templates in This Repo

| File | Use case |
|------|----------|
| `prompts/code-gen.md` | Generating new code from requirements |
| `prompts/debug.md` | Debugging errors and unexpected behavior |
| `prompts/refactor.md` | Improving existing code |

Each template follows the principles in this guide. Adapt them to your needs!

---

## Further Reading

- [OpenAI Prompt Engineering Guide](https://platform.openai.com/docs/guides/prompt-engineering)
- [Anthropic Prompt Library](https://docs.anthropic.com/en/prompt-library)
- [Google Prompt Engineering Guide](https://developers.generativeai.google/guide/promptingstrategies)
