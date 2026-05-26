#!/usr/bin/env bash
set -euo pipefail

skills=(
  "vercel-labs/skills find-skills"
  "anthropics/skills frontend-design"
  "anthropics/skills webapp-testing"
  "Shubhamsaboo/awesome-llm-apps fullstack-developer"
  "vercel/next.js cache-components"
  "facebook/react fix"
  "google-gemini/gemini-cli code-reviewer"
  "langgenius/dify frontend-code-review"
  "google-gemini/gemini-cli pr-creator"
  "vercel/next.js update-docs"
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
