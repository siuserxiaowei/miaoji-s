# Codex 小白研发 Skills 安装包

这组安装脚本配套文章《小白用 Codex 时怎么用得更好？先装这 10 个 Skills》。

## 一键安装

```bash
curl -fsSL https://raw.githubusercontent.com/siuserxiaowei/codex-skills-guide/main/codex-dev-skills/install.sh | bash
```

安装完成后，重启 Codex。

## 包含的 10 个 Skills

| Skill | 来源 | 适合场景 |
|---|---|---|
| `frontend-design` | `anthropics/skills` | 页面、组件、落地页、后台界面设计 |
| `cache-components` | `vercel/next.js` | Next.js 缓存、PPR、Server Components |
| `fullstack-developer` | `Shubhamsaboo/awesome-llm-apps` | 前端、API、数据库一起拆 |
| `frontend-code-review` | `langgenius/dify` | 前端 diff 审查 |
| `code-reviewer` | `google-gemini/gemini-cli` | 通用代码审查 |
| `webapp-testing` | `anthropics/skills` | 本地网页流程测试和截图 |
| `pr-creator` | `google-gemini/gemini-cli` | PR 标题、描述、模板和检查 |
| `fix` | `facebook/react` | 格式化和 lint 修复 |
| `update-docs` | `vercel/next.js` | 根据代码变更补文档 |
| `find-skills` | `vercel-labs/skills` | 遇到新任务时找现成 Skill |

## 安全提醒

Skills 会影响 Agent 的工作方式，也会在本地以 Agent 权限运行。建议只安装可信来源的 Skills；涉及 `pr-creator` 这类提交、推送、创建 PR 的流程时，推送前一定人工确认分支、改动和目标仓库。
