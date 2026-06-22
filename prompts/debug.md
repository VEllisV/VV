# Debugging Prompt Template

## Overview
Use this template when you need AI assistance to debug an issue, understand an error, or trace a bug.

---

## Template

```
I'm encountering an issue with [BRIEF DESCRIPTION].

## Error/Unexpected Behavior
```
[PASTE ERROR MESSAGE OR DESCRIBE UNEXPECTED BEHAVIOR]
```

## Context
- Language/Framework: [LANGUAGE & VERSION]
- Environment: [OS/RUNTIME/DEPLOYMENT TARGET]
- When it occurs: [TRIGGER CONDITION]

## What I've Tried
- [ATTEMPT 1]: [RESULT]
- [ATTEMPT 2]: [RESULT]

## Relevant Code
```[LANGUAGE]
[PASTE THE RELEVANT CODE SNIPPET]
```

## Question
Please help me:
1. Identify the root cause
2. Explain why it's happening
3. Provide a fix with explanation
```

---

## Example Usage

**Task:** Debug a Python `asyncio` event loop error

```
I'm encountering an issue with asyncio event loop in Python.

## Error/Unexpected Behavior
```
RuntimeError: There is no current event loop in thread 'Thread-1'.
```

## Context
- Language/Framework: Python 3.11, FastAPI
- Environment: Ubuntu 22.04, running inside a ThreadPoolExecutor
- When it occurs: When I try to call an async function from a sync endpoint handler

## What I've Tried
- Wrapping with `asyncio.run()`: Gets "cannot be called from a running event loop"
- Using `asyncio.get_event_loop()`: Works on main thread but fails in worker threads

## Relevant Code
```python
import asyncio
from concurrent.futures import ThreadPoolExecutor

def sync_handler():
    # This fails in worker threads
    loop = asyncio.get_event_loop()
    result = loop.run_until_complete(fetch_data())
    return result
```

## Question
Please help me:
1. Identify the root cause
2. Explain why it's happening
3. Provide a fix with explanation
```

---

## Tips
- Always include the full error traceback
- Mention your environment (OS, language version, framework version)
- Show what you've already tried to avoid redundant suggestions
- Include a minimal reproducible example if possible
