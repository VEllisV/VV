#!/bin/bash
# ai-commit.sh - AI-Powered Git Commit Message Generator
# Usage: ./tools/ai-commit.sh
# Requires: git, curl, OPENAI_API_KEY in environment

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if OPENAI_API_KEY is set
if [ -z "$OPENAI_API_KEY" ]; then
    echo -e "${RED}Error: OPENAI_API_KEY environment variable is not set.${NC}"
    echo "Please set it with: export OPENAI_API_KEY='your-key-here'"
    exit 1
fi

# Check if there are staged changes
if ! git diff --cached --quiet; then
    echo -e "${YELLOW}You have staged changes. Generating commit message...${NC}"
else
    echo -e "${YELLOW}No staged changes. Staging all changes...${NC}"
    git add -A
fi

# Get the diff of staged changes
DIFF=$(git diff --cached)

if [ -z "$DIFF" ]; then
    echo -e "${RED}No changes to commit.${NC}"
    exit 1
fi

echo -e "${GREEN}Generating AI commit message...${NC}"

# Call OpenAI API to generate commit message
RESPONSE=$(curl -s https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-4o-mini",
        "messages": [
            {
                "role": "system",
                "content": "You are a git commit message generator. Based on the diff provided, generate a concise, conventional commit message (max 72 chars for title). Format: type(scope): description. Types: feat, fix, docs, style, refactor, test, chore. Only output the commit message, nothing else."
            },
            {
                "role": "user",
                "content": "'"$(echo "$DIFF" | head -c 3000 | sed 's/"/\\"/g' | tr '\n' ' ')"'"
            }
        ],
        "max_tokens": 100,
        "temperature": 0.3
    }')

# Extract the commit message
COMMIT_MSG=$(echo "$RESPONSE" | grep -o '"content":"[^"]*"' | sed 's/"content":"//;s/"$//' | sed 's/\\n/ /g')

if [ -z "$COMMIT_MSG" ]; then
    echo -e "${RED}Failed to generate commit message. API response:${NC}"
    echo "$RESPONSE"
    exit 1
fi

echo -e "${GREEN}Generated commit message:${NC}"
echo "  $COMMIT_MSG"
echo ""
read -p "Use this message? (y/n/e=edit): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    git commit -m "$COMMIT_MSG"
    echo -e "${GREEN}Committed successfully!${NC}"
elif [[ $REPLY =~ ^[Ee]$ ]]; then
    read -p "Enter your commit message: " CUSTOM_MSG
    git commit -m "$CUSTOM_MSG"
    echo -e "${GREEN}Committed with custom message!${NC}"
else
    echo -e "${YELLOW}Commit cancelled. Staged changes preserved.${NC}"
    exit 0
fi
