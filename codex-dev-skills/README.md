# Codex 小白研发 Skills 安装包

这组安装脚本配套文章《小白用 Codex 时怎么用得更好？先装这 10 个 Skills》。

## 一键安装

```bash
curl -fsSL https://raw.githubusercontent.com/siuserxiaowei/codex-skills-guide/main/codex-dev-skills/install.sh | bash
```

安装完成后，重启 Codex。

## 包含的 10 个 Skills

| Skill | 来源 | 安装命令 | 适合场景 |
|---|---|---|---|
| [`frontend-design`](https://github.com/anthropics/skills/tree/main/skills/frontend-design) | [`anthropics/skills`](https://github.com/anthropics/skills) | `npx -y skills add anthropics/skills -g --skill frontend-design -y --full-depth` | 页面、组件、落地页、后台界面设计 |
| [`cache-components`](https://github.com/vercel/next.js/tree/canary/.claude-plugin/plugins/cache-components/skills/cache-components) | [`vercel/next.js`](https://github.com/vercel/next.js) | `npx -y skills add vercel/next.js -g --skill cache-components -y --full-depth` | Next.js 缓存、PPR、Server Components |
| [`fullstack-developer`](https://github.com/Shubhamsaboo/awesome-llm-apps/tree/main/awesome_agent_skills/fullstack-developer) | [`Shubhamsaboo/awesome-llm-apps`](https://github.com/Shubhamsaboo/awesome-llm-apps) | `npx -y skills add Shubhamsaboo/awesome-llm-apps -g --skill fullstack-developer -y --full-depth` | 前端、API、数据库一起拆 |
| [`frontend-code-review`](https://github.com/langgenius/dify/tree/main/.agents/skills/frontend-code-review) | [`langgenius/dify`](https://github.com/langgenius/dify) | `npx -y skills add langgenius/dify -g --skill frontend-code-review -y --full-depth` | 前端 diff 审查 |
| [`code-reviewer`](https://github.com/google-gemini/gemini-cli/tree/main/.gemini/skills/code-reviewer) | [`google-gemini/gemini-cli`](https://github.com/google-gemini/gemini-cli) | `npx -y skills add google-gemini/gemini-cli -g --skill code-reviewer -y --full-depth` | 通用代码审查 |
| [`webapp-testing`](https://github.com/anthropics/skills/tree/main/skills/webapp-testing) | [`anthropics/skills`](https://github.com/anthropics/skills) | `npx -y skills add anthropics/skills -g --skill webapp-testing -y --full-depth` | 本地网页流程测试和截图 |
| [`pr-creator`](https://github.com/google-gemini/gemini-cli/tree/main/.gemini/skills/pr-creator) | [`google-gemini/gemini-cli`](https://github.com/google-gemini/gemini-cli) | `npx -y skills add google-gemini/gemini-cli -g --skill pr-creator -y --full-depth` | PR 标题、描述、模板和检查 |
| [`fix`](https://github.com/facebook/react/tree/main/.claude/skills/fix) | [`facebook/react`](https://github.com/facebook/react) | `npx -y skills add facebook/react -g --skill fix -y --full-depth` | 格式化和 lint 修复 |
| [`update-docs`](https://github.com/vercel/next.js/tree/canary/.claude/skills/update-docs) | [`vercel/next.js`](https://github.com/vercel/next.js) | `npx -y skills add vercel/next.js -g --skill update-docs -y --full-depth` | 根据代码变更补文档 |
| [`find-skills`](https://github.com/vercel-labs/skills/tree/main/skills/find-skills) | [`vercel-labs/skills`](https://github.com/vercel-labs/skills) | `npx -y skills add vercel-labs/skills -g --skill find-skills -y --full-depth` | 遇到新任务时找现成 Skill |

## 安全提醒

Skills 会影响 Agent 的工作方式，也会在本地以 Agent 权限运行。建议只安装可信来源的 Skills；涉及 `pr-creator` 这类提交、推送、创建 PR 的流程时，推送前一定人工确认分支、改动和目标仓库。
