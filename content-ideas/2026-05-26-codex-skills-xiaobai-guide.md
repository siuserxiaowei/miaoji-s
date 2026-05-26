# 小白怎么把 Codex 用得更好？先装这 10 个 Skills

很多人第一次用 Codex，会以为关键是“提示词写得多高级”。

但真正用起来会发现，最难的不是写一句神奇 prompt，而是不知道该让 Codex 进入什么工作模式。

比如你想让它做前端，它到底是随便搭一个页面，还是先想清楚产品气质、排版、交互状态？
你想让它 review 代码，它到底是夸两句“整体不错”，还是直接指出哪个文件哪一行可能出 bug？
你想发 PR，它到底只是写一段总结，还是会先检查分支、模板、测试、提交状态？

这就是 Skills 的价值。

Skills 可以理解成给 Codex 装上的“工作流程卡”。不是让 Codex 变聪明一点，而是让它少一点临场发挥，多一点固定流程。

如果你刚开始用 Codex，我建议先装下面这 10 个研发场景 Skills。

## 先说怎么用

安装命令长这样：

```bash
npx -y skills add <GitHub 仓库> -g --skill <skill 名字> -y --full-depth
```

我这次已经把 10 个都装到了本机：

```text
~/.agents/skills/
```

安装之后，你不需要去点什么按钮。你可以直接对 Codex 说：

```text
用 frontend-design 帮我优化这个页面。
用 code-reviewer review 当前改动。
用 webapp-testing 打开本地页面测试关键流程。
```

有些 Skill 在任务描述很明确时会自动触发，但对小白来说，最稳的方式就是直接点名它。

另外提醒一句：Skill 会影响 Agent 的工作方式，安装陌生来源前要看来源、风险提示和仓库信誉。不要把“能装”当成“都该装”。

## 1. frontend-design：让 Codex 别再做模板感页面

安装：

```bash
npx -y skills add anthropics/skills -g --skill frontend-design -y --full-depth
```

适合场景：

你要做网页、组件、落地页、后台、HTML 原型，或者你觉得 Codex 做出来的页面太像“默认模板”。

你可以这样说：

```text
用 frontend-design 帮我把这个页面做得像真实产品，不要通用 AI 风格。先确认用途、受众、视觉气质和技术约束，再开始改。
```

小白最容易忽略的是：不要只说“好看一点”。你要让 Codex 先定方向，比如“工具型后台”“面向创作者的内容工作台”“高密度数据看板”。方向越清楚，页面越不像套壳。

配图：`assets/codex-skills-install/screenshots/01-frontend-design.png`

## 2. cache-components：Next.js 项目别乱写缓存

安装：

```bash
npx -y skills add vercel/next.js -g --skill cache-components -y --full-depth
```

适合场景：

你在做 Next.js 项目，尤其是涉及 Server Components、PPR、`cacheComponents: true`、`use cache`、`cacheLife`、`cacheTag` 这些东西。

你可以这样说：

```text
这是 Next.js 项目，请先检查 next.config 里有没有 cacheComponents: true。然后帮我看当前页面的数据获取和缓存边界有没有问题。
```

小白不用一开始就背缓存概念。你只需要让 Codex 先判断：哪些内容可以缓存，哪些内容跟用户请求有关，哪些地方需要 Suspense 或动态流式渲染。

配图：`assets/codex-skills-install/screenshots/02-cache-components.png`

## 3. fullstack-developer：从页面到接口一起拆

安装：

```bash
npx -y skills add Shubhamsaboo/awesome-llm-apps -g --skill fullstack-developer -y --full-depth
```

适合场景：

你想做一个完整功能，但不知道前端、接口、数据库、鉴权、部署应该怎么连起来。

你可以这样说：

```text
用 fullstack-developer 帮我从数据模型、API、前端页面、状态管理、校验和部署一起拆方案，然后先做一个最小可用版本。
```

这个 Skill 对小白很有用，因为很多人让 Codex 写功能时，只会得到一个“看起来能跑”的页面，但没有真正的数据闭环。它能提醒 Codex 同时考虑前端和后端。

配图：`assets/codex-skills-install/screenshots/03-fullstack-developer.png`

## 4. frontend-code-review：专门审前端改动

安装：

```bash
npx -y skills add langgenius/dify -g --skill frontend-code-review -y --full-depth
```

适合场景：

你改了 `.tsx`、`.ts`、`.js` 文件，想在提交前看有没有组件写法、性能、样式、业务逻辑问题。

你可以这样说：

```text
用 frontend-code-review 审一下我当前前端改动。只列真正需要修的地方，按紧急问题和改进建议分开。
```

小白最好要求它“基于 diff 审”，不要让它对整个项目泛泛点评。好的 review 应该带文件、行号、问题原因和建议修法。

配图：`assets/codex-skills-install/screenshots/04-frontend-code-review.png`

## 5. code-reviewer：通用代码审查

安装：

```bash
npx -y skills add google-gemini/gemini-cli -g --skill code-reviewer -y --full-depth
```

适合场景：

任何代码改完都可以用，尤其是跨文件、跨模块、涉及接口、状态、权限、数据结构的改动。

你可以这样说：

```text
用 code-reviewer review 当前改动，重点看 bug、边界条件、安全问题、可维护性和测试缺口。发现问题先列出来，不要急着改。
```

这个 Skill 的价值是让 Codex 进入“审查者模式”。它不应该只是总结你改了什么，而是要主动找可能出问题的地方。

配图：`assets/codex-skills-install/screenshots/05-code-reviewer.png`

## 6. webapp-testing：别只看代码，要打开页面测

安装：

```bash
npx -y skills add anthropics/skills -g --skill webapp-testing -y --full-depth
```

适合场景：

你做了网页、表单、登录、按钮、弹窗、列表、搜索、筛选、支付、设置页，只要是用户会点的东西，都应该让 Codex 打开浏览器测一遍。

你可以这样说：

```text
用 webapp-testing 启动本地项目，打开页面，走一遍关键流程，截图并检查控制台错误。
```

很多小白只让 Codex “看看代码有没有问题”，但网页项目最容易出现的问题是：代码看着对，页面一打开就错位、按钮没反应、接口报错。这个 Skill 能把 Codex 从“读代码”拉到“真实使用”。

配图：`assets/codex-skills-install/screenshots/06-webapp-testing.png`

## 7. pr-creator：让 Codex 帮你发一个像样的 PR

安装：

```bash
npx -y skills add google-gemini/gemini-cli -g --skill pr-creator -y --full-depth
```

适合场景：

你已经改完代码，准备提交 Pull Request。

你可以这样说：

```text
用 pr-creator 帮我准备 PR。先确认当前分支不是 main，检查 git status、PR 模板和测试结果，再生成 PR 标题和描述。
```

小白一定要记住：涉及提交、推送、创建 PR 的操作，要让 Codex 先解释它准备做什么。尤其是推送前，自己看一眼分支名。

配图：`assets/codex-skills-install/screenshots/07-pr-creator.png`

## 8. fix：提交前先扫格式和 lint

安装：

```bash
npx -y skills add facebook/react -g --skill fix -y --full-depth
```

适合场景：

准备提交前、CI 报格式错误、lint 错误、或者你改了很多文件但不确定风格是否统一。

你可以这样说：

```text
用 fix 帮我跑格式化和 lint。能自动修的先修，剩下需要手动处理的问题列出来。
```

注意，不同项目的命令不一定一样。React 这个 Skill 里写的是 `yarn prettier` 和 `yarn linc`，但你自己的项目可能是 `npm run lint`、`pnpm lint` 或别的命令。所以更稳的说法是让 Codex 先读项目脚本再跑。

配图：`assets/codex-skills-install/screenshots/08-fix.png`

## 9. update-docs：代码改了，文档别漏

安装：

```bash
npx -y skills add vercel/next.js -g --skill update-docs -y --full-depth
```

适合场景：

你新增了配置、API、组件、行为变化，或者一个 PR 需要补文档、迁移说明、使用示例。

你可以这样说：

```text
用 update-docs 看一下这次代码变更影响哪些文档。先根据 diff 找到相关 docs 或 mdx 文件，再给我建议更新点。
```

小白最容易漏的是文档。功能做出来只是第一步，别人知道怎么用才算完整交付。

配图：`assets/codex-skills-install/screenshots/09-update-docs.png`

## 10. find-skills：遇到新任务先找现成 Skill

安装：

```bash
npx -y skills add vercel-labs/skills -g --skill find-skills -y --full-depth
```

适合场景：

你遇到一个新任务，不确定有没有更专业的 Skill 能帮你。

你可以这样说：

```text
用 find-skills 帮我找一个适合做这个任务的 Skill。优先官方来源、高安装量、仓库活跃、风险低的结果，并给我安装命令。
```

这个 Skill 适合放在第一个用。因为你以后不可能只靠这 10 个 Skill，真正的用法是：遇到新场景，先让 Codex 帮你找更合适的流程卡。

配图：`assets/codex-skills-install/screenshots/10-find-skills.png`

## 小白应该怎么组合使用？

我的建议是按研发流程来：

```text
找工具：find-skills
做方案：fullstack-developer
做界面：frontend-design
做 Next.js 缓存：cache-components
打开页面测：webapp-testing
审前端：frontend-code-review
审整体代码：code-reviewer
修格式和 lint：fix
补文档：update-docs
发 PR：pr-creator
```

你不需要每次都全用。更好的方式是先问自己一句：

```text
我现在是在设计、开发、测试、审查、修复、写文档，还是发 PR？
```

然后点名对应的 Skill。

Codex 对小白真正有帮助的地方，不是它能一次性替你做完所有事，而是你可以把一个模糊任务拆成一个个明确步骤。

Skills 就是这些步骤的名字。
