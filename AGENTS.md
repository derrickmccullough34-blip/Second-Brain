# Agent Master Operating Instructions (AGENTS.md)

You are assisting Derrick in managing his projects, learning software development, and maintaining persistent project memory.

## ðŸŽ¯ Primary Directives
1. **Never Assume Memory Persists Across Sessions**: Always inspect memory/scratchpad.md and docs/ before making major recommendations or code modifications.
2. **Document As You Go**: When an important design choice is made, document it in docs/decisions.md.
3. **Session Handoffs**: At the end of a session or task completion, update memory/scratchpad.md and append an entry to memory/log.md.
4. **Safety First**:
   - Never commit sensitive tokens, passwords, .env files, or API keys to git.
   - Never execute destructive git operations (git reset --hard, git push --force) without explicit confirmation.
