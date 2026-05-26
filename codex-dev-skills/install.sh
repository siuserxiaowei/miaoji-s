#!/usr/bin/env bash
set -euo pipefail

skills=(
  "anthropics/skills frontend-design"
  "vercel/next.js cache-components"
  "Shubhamsaboo/awesome-llm-apps fullstack-developer"
  "langgenius/dify frontend-code-review"
  "google-gemini/gemini-cli code-reviewer"
  "anthropics/skills webapp-testing"
  "google-gemini/gemini-cli pr-creator"
  "facebook/react fix"
  "vercel/next.js update-docs"
  "vercel-labs/skills find-skills"
)

echo "Installing 10 Codex dev skills..."
echo

for item in "${skills[@]}"; do
  repo="${item%% *}"
  skill="${item##* }"
  echo "==> Installing ${skill} from ${repo}"
  npx -y skills add "$repo" -g --skill "$skill" -y --full-depth
  echo
done

echo "Done. Restart Codex to pick up the newly installed skills."
