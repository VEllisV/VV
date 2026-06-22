# Code Generation Prompt Template

## Overview
Use this prompt template when you need AI assistance to generate code for a specific function, module, or feature.

---

## Template

```
I need to implement [FUNCTIONALITY] in [LANGUAGE/FRAMEWORK].

## Requirements
- [REQUIREMENT 1]
- [REQUIREMENT 2]
- [REQUIREMENT 3]

## Constraints
- Must be compatible with [VERSION/CONSTRAINT]
- Should follow [CODING_STYLE] conventions
- Error handling: [APPROACH]

## Input/Output
- Input: [DESCRIBE INPUT]
- Output: [DESCRIBE OUTPUT]

## Example
[PROVIDE A CONCRETE EXAMPLE]

Please provide:
1. Complete, production-ready code
2. Brief explanation of key design decisions
3. Any edge cases I should be aware of
```

---

## Example Usage

**Task:** Generate a Python function to retry API calls with exponential backoff

```
I need to implement an API retry mechanism with exponential backoff in Python.

## Requirements
- Retry up to 5 times with exponential backoff
- Handle common HTTP errors (429, 500, 502, 503)
- Add jitter to prevent thundering herd
- Configurable max retries and base delay

## Constraints
- Must be compatible with Python 3.9+
- Should be framework-agnostic
- Use only standard library (no external dependencies)
- Include proper type hints

## Input/Output
- Input: An async function that makes an HTTP request
- Output: A wrapped function with retry logic

Please provide:
1. Complete, production-ready code
2. Brief explanation of key design decisions
3. Any edge cases I should be aware of
```

---

## Tips
- Be specific about language version and constraints
- Include edge cases in your requirements
- Ask for explanations, not just code
- Specify if you want tests included
