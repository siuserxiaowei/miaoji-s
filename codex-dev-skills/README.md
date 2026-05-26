# Codex 小白研发 Skills 安装包

这是一组适合 Codex 新手先装的研发场景 Skills，来源于飞书 Wiki「研发场景十大热门 Skills 推荐」，并补充了面向小白的使用方法、截图和安装脚本。

适合发给公众号读者的最短安装方式：

```bash
curl -fsSL https://raw.githubusercontent.com/siuserxiaowei/dbskill/main/codex-dev-skills/install.sh | bash
```

如果已经 clone 了这个仓库，也可以在仓库根目录运行：

```bash
bash codex-dev-skills/install.sh
```

安装完成后，重启 Codex，让新安装的 Skills 生效。

## 10 个 Skills

| Skill | 来源 | 什么时候用 |
|---|---|---|
| `find-skills` | `vercel-labs/skills` | 不知道该用哪个 Skill 时，先让 Codex 帮你找 |
| `frontend-design` | `anthropics/skills` | 页面能跑但不好看，想让界面更像真实产品 |
| `webapp-testing` | `anthropics/skills` | 做完网页后，让 Codex 打开浏览器走关键流程 |
| `fullstack-developer` | `Shubhamsaboo/awesome-llm-apps` | 想做完整小项目，需要前端、API、数据库一起拆 |
| `cache-components` | `vercel/next.js` | Next.js 项目里处理 PPR、缓存组件和动态边界 |
| `fix` | `facebook/react` | 提交前先跑格式化和 lint，清掉低级问题 |
| `code-reviewer` | `google-gemini/gemini-cli` | 通用代码审查，重点看 bug、边界、安全和测试 |
| `frontend-code-review` | `langgenius/dify` | 专门审前端 `.tsx`、`.ts`、`.js` 改动 |
| `pr-creator` | `google-gemini/gemini-cli` | 准备发 PR 时，检查分支、模板、测试和描述 |
| `update-docs` | `vercel/next.js` | 代码改了以后，检查对应文档是否需要更新 |

## 小白怎么用

不用背名字，按手头任务选：

- 页面不好看：用 `frontend-design`
- 页面不知道有没有真跑通：用 `webapp-testing`
- 想做完整小产品：用 `fullstack-developer`
- Next.js 缓存不确定：用 `cache-components`
- 提交前怕格式和 lint 挂：用 `fix`
- 怕代码有 bug：用 `code-reviewer`
- 前端改动想多审一层：用 `frontend-code-review`
- 要发 PR：用 `pr-creator`
- 代码改了怕文档漏：用 `update-docs`
- 新任务不知道找谁：用 `find-skills`

更稳的提问方式：

```text
用 frontend-design 帮我优化这个页面。先确认用途、受众、视觉气质和技术约束，再开始改。
```

```text
用 webapp-testing 启动本地项目，打开页面，走一遍关键流程，截图并检查控制台错误。
```

```text
用 code-reviewer review 当前改动，重点看 bug、边界条件、安全问题、可维护性和测试缺口。
```

## 配图

完整截图合集：

![Codex 小白研发 Skills 截图合集](../content-ideas/assets/codex-skills-install/codex-skills-contact-sheet.png)

单张截图在：

```text
content-ideas/assets/codex-skills-install/screenshots/
```

公众号文章稿在：

```text
content-ideas/2026-05-26-dev-skills-xiaobai-wechat-publish.md
```

## 安全提醒

Skills 会影响 Agent 的工作方式，也会在本地以 Agent 权限运行。建议读者只安装可信来源的 Skills；涉及 `pr-creator` 这类提交、推送、创建 PR 的流程时，推送前一定人工确认分支、改动和目标仓库。
