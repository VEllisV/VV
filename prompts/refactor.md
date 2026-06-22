# Code Refactoring Prompt Template

## Overview
Use this template when you need AI assistance to refactor existing code for better readability, performance, or maintainability.

---

## Template

```
I need to refactor the following code.

## Original Code
```[LANGUAGE]
[PASTE ORIGINAL CODE]
```

## Refactoring Goals
- [ ] Improve readability
- [ ] Reduce complexity (current cyclomatic complexity: [X])
- [ ] Improve performance
- [ ] Update to modern [LANGUAGE/F RAMEWORK] patterns
- [ ] Extract reusable components
- [ ] Improve type safety
- [ ] [OTHER GOAL]

## Constraints
- Must maintain backward compatibility: [YES/NO]
- Must not change public API: [YES/NO]
- Target [LANGUAGE/F RAMEWORK] version: [VERSION]
- Test coverage must be maintained

## Specific Concerns
[DESCRIBE ANY SPECIFIC PARTS YOU'RE UNSURE ABOUT]

Please provide:
1. Refactored code with explanations
2. A list of changes made and why
3. Any trade-offs introduced by the refactoring
```

---

## Example Usage

**Task:** Refactor a JavaScript callback-heavy module to use async/await

```
I need to refactor the following code.

## Original Code
```javascript
function fetchUserData(userId, callback) {
  getProfile(userId, (err, profile) => {
    if (err) return callback(err);
    getSettings(userId, (err, settings) => {
      if (err) return callback(err);
      getPermissions(userId, (err, perms) => {
        if (err) return callback(err);
        callback(null, { profile, settings, perms });
      });
    });
  });
}
```

## Refactoring Goals
- [x] Improve readability
- [x] Update to modern JavaScript patterns (async/await)
- [x] Improve error handling
- [ ] Reduce complexity

## Constraints
- Must maintain backward compatibility: NO (can be breaking)
- Must not change public API: NO (changing to Promise-based)
- Target Node.js version: 18+
- Test coverage must be maintained

## Specific Concerns
The nested callbacks make error handling inconsistent. I want to convert to Promises/async-await and add proper error boundaries.

Please provide:
1. Refactored code with explanations
2. A list of changes made and why
3. Any trade-offs introduced by the refactoring
```

---

## Tips
- Be clear about whether backward compatibility matters
- Mention specific code smells you want to address
- Ask for incremental refactoring if the change is large
- Request that the AI explain the "why" behind each change
