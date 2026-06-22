# Contributing to VV

Thank you for your interest in contributing to VV! This guide will help you get started.

---

## Code of Conduct

By participating in this project, you agree to abide by our standards of respectful and professional communication.

---

## How Can I Contribute?

### Reporting Bugs
- Use the [GitHub Issues](https://github.com/VEllisV/VV/issues) tab
- Check if the bug has already been reported
- Include: steps to reproduce, expected vs. actual behavior, environment details

### Suggesting Enhancements
- Open an issue with the `enhancement` label
- Describe the use case the enhancement would solve
- Include examples if possible

### Adding Prompt Templates
We welcome new prompt templates! Please:
1. Follow the existing template format in `prompts/`
2. Include a real-world example
3. Test the prompt with GPT-4o or equivalent
4. Add documentation in the template file

### Adding Workflows
CI/CD workflows should:
1. Be generic enough for others to reuse
2. Include clear configuration instructions
3. Not require hard-coded secrets (use GitHub Secrets)

### Improving Documentation
- Fix typos, clarify explanations, add examples
- Docs improvements are always welcome!

---

## Pull Request Process

1. **Fork** the repository
2. **Create a branch** (`git checkout -b feature/my-feature`)
3. **Make your changes**
4. **Test** that your changes work as expected
5. **Commit** with a clear message (see [Conventional Commits](https://www.conventionalcommits.org/))
6. **Push** to your fork (`git push origin feature/my-feature`)
7. **Open a Pull Request** with a clear description of changes

### PR Checklist
- [ ] Code/files follow the existing style
- [ ] Self-review of code completed
- [ ] Comments added for complex logic
- [ ] Documentation updated (if needed)
- [ ] No new warnings introduced

---

## Development Setup

```bash
# Clone your fork
git clone https://github.com/<your-username>/VV.git
cd VV

# Create a branch
git checkout -b feature/your-feature

# Make changes, then commit
git add .
git commit -m "feat: add new prompt template for X"

# Push
git push origin feature/your-feature
```

---

## Community

- Discuss ideas in [GitHub Discussions](https://github.com/VEllisV/VV/discussions)
- Tag issues with appropriate labels
- Be respectful and constructive in all interactions

---

## Recognition

Contributors will be recognized in:
- The project README (Contributors section)
- Release notes for significant contributions

Thank you for helping make VV better! 🎉
