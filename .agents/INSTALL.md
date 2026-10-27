# Install as Agent Skills (Antigravity / Codex CLI / OpenCode)

This build is one spec-compliant Agent Skills tree. Every harness that reads the
open `.agents/skills/` standard - Google **Antigravity**, OpenAI **Codex CLI**,
**OpenCode**, and **GitHub Copilot CLI** among them - discovers these skills
automatically: each skill's name and description stay visible, and the full body
loads only when the skill is selected (progressive disclosure).

The tree contains `skills/<name>/SKILL.md` (48 command skills) plus the shared
`skills/obsidian-core/` engine skill (references, scripts, pyproject). There is
deliberately **no SKILL.md at the tree root** - a root SKILL.md shadows the
nested skills during discovery.

## Where you start the harness is load-bearing

Start your harness **from the vault root**, or have the vault under git. This is
a requirement, not a convenience:

- Codex CLI walks up to the **git root** looking for `.agents/skills`. A
  git-backed vault therefore works from any subfolder.
- A plain Obsidian vault is not a git repo. In that case, opening the harness in
  any subfolder registers **zero** skills - no warning, no error, the skill list
  is simply empty.
- The `.agents/skills/obsidian-core/references/` paths the skills cite are
  relative to this root too. Start elsewhere and the AI-first spec is a dead
  path, which is why every skill now says so out loud instead of silently
  skipping the rule.

If you keep your vault outside git and want to work from subfolders, run
`git init` in the vault root once. Reported by @Palo-Alto-AI-Research-Lab on
codex-cli 0.144.4 (issue #171).

## Option A - skills.sh (recommended)

[`skills`](https://github.com/vercel-labs/skills) (`npx skills`) is a
GitHub-as-registry installer that writes one shared `.agents/skills/` tree all
three harnesses read. Run from your vault root:

```bash
# preview what would install (should list 49: 48 commands + obsidian-core)
npx skills add ./dist/agent-skills --list

# project-scope install for one or more harnesses (one physical tree serves all)
npx skills add ./dist/agent-skills -a antigravity -a codex -a opencode

# global scope instead of project scope
npx skills add ./dist/agent-skills -g -a antigravity -a codex -a opencode

# refresh after a rebuild
npx skills update
```

Install the full set. The research and health skills call into
`obsidian-core`, so cherry-picking individual skills breaks those; the full-set
install is the supported path.

## Option B - manual copy (no skills.sh)

```bash
# From the repo root, after: bash scripts/build.sh --platform agent-skills
mkdir -p /path/to/your/vault/.agents/skills
cp -R dist/agent-skills/skills/. /path/to/your/vault/.agents/skills/
```

## Per-harness notes

- **Antigravity** - discovers workspace skills at `.agents/skills/<name>/SKILL.md`
  and also surfaces each as a slash command (`/skills`). In `--print` (headless)
  mode the workspace must be registered explicitly with `--add-dir <workspace>`;
  running from inside the directory is not enough for headless skill discovery.
  Interactive sessions that open the workspace normally are unaffected. Global
  rules live in `~/.gemini/GEMINI.md` - see `global-rule-snippet.md`.
- **Codex CLI** - native Agent Skills at the same path. Invoke with `$<name>`,
  via `/skills`, or let Codex match implicitly on the description.
- **OpenCode** - reads `.agents/skills/` (project) and `~/.agents/skills/`
  (global). Its validator is strict: only `name`, `description`, `license`,
  `compatibility`, and a string-map `metadata` are accepted, and `name` must
  match the directory - this build already conforms.
- **GitHub Copilot CLI** - loads project skills from `.agents/skills/` (and
  `.github/skills/`, `.claude/skills/`) and personal skills from
  `~/.agents/skills/` or `~/.copilot/skills/` (as of 2026-07,
  docs.github.com). The same tree works unchanged; the skills.sh agent target
  is `github-copilot`.
- **Anything else on the Agent Skills standard** - any harness that reads
  `.agents/skills/<name>/SKILL.md` picks this build up with zero changes.

## What is NOT covered

Agent Skills cover the commands only. The MCP vault server, Claude Code hooks,
and the scheduled maintenance agents remain Claude Code / Hermes extras. The
skills are made self-sufficient (vault-root resolution + the embedded write
spec) to compensate. For the optional always-on vault-routing rule, see
`global-rule-snippet.md`.
