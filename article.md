# 小白用 Codex 时怎么用得更好？先装这 10 个 Skills

大家好，我是 siuser 小伟。

我看到一段话，还挺有感触的：

> 2003 年用淘宝，就等于现在用 Codex 跟 Claude Code。

这句话有点夸张，但我觉得方向是对的。

很多小伙伴第一次用 Codex，会以为关键是：提示词写得多高级。

但真正用起来会发现，最难的不是写一句神奇 prompt，而是不知道该让 Codex 进入什么工作模式。

比如你想让它做前端，它到底是随便搭一个页面，还是先想清楚产品气质、排版、交互状态？

你想让它 review 代码，它到底是夸两句“整体不错”，还是直接指出哪个文件哪一行可能出 bug？

你想发 PR，它到底只是写一段总结，还是会先检查分支、模板、测试、提交状态？

这就是 Skills 的价值。

Skills 可以理解成给 Codex 装上的“工作流程卡”。不是让 Codex 突然变聪明，而是让它少一点临场发挥，多一点固定流程。

如果你刚开始用 Codex，我建议先装下面这 10 个研发场景 Skills。

## 先说怎么装

我把这 10 个 Skills 整理到了一个公开仓库里。

想一口气安装，可以直接运行：

```bash
curl -fsSL https://raw.githubusercontent.com/siuserxiaowei/codex-skills-guide/main/codex-dev-skills/install.sh | bash
```

安装完成后，重启 Codex。

如果你想单独安装某一个 Skill，命令长这样：

```bash
npx -y skills add <GitHub 仓库> -g --skill <skill 名字> -y --full-depth
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

这个 Skill 适合做网页、组件、落地页、后台界面、HTML 原型。

最常见的场景是：页面能跑，但不好看。按钮、卡片、标题都有，可是一眼看过去就是“AI 默认模板”。

你可以这样说：

```text
用 frontend-design 帮我把这个页面做得像真实产品，不要通用 AI 风格。先确认用途、受众、视觉气质和技术约束，再开始改。
```

小白最容易忽略的是：不要只说“好看一点”。你要让 Codex 先定方向，比如“工具型后台”“面向创作者的内容工作台”“高密度数据看板”。方向越清楚，页面越不像套壳。

## 2. cache-components：Next.js 项目别乱写缓存

这个 Skill 更偏 Next.js。

如果你的项目里出现了 Server Components、PPR、`cacheComponents: true`、`use cache`、`cacheLife`、`cacheTag` 这些东西，它就有用了。

你可以这样说：

```text
这是 Next.js 项目，请先检查 next.config 里有没有 cacheComponents: true。然后帮我看当前页面的数据获取和缓存边界有没有问题。
```

小白不用一开始就背缓存概念。你只需要让 Codex 先判断：哪些内容可以缓存，哪些内容跟用户请求有关，哪些地方需要 Suspense 或动态流式渲染。

## 3. fullstack-developer：从页面到接口一起拆

很多人让 Codex 做功能，只会得到一个“看起来能跑”的页面，但没有真正的数据闭环。

`fullstack-developer` 适合你想做一个完整功能，但不知道前端、接口、数据库、鉴权、部署应该怎么连起来的时候。

你可以这样说：

```text
用 fullstack-developer 帮我从数据模型、API、前端页面、状态管理、校验和部署一起拆方案，然后先做一个最小可用版本。
```

它的价值不是替你省掉所有技术判断，而是帮你把混乱的东西排一下队。

## 4. frontend-code-review：专门审前端改动

如果你改了 `.tsx`、`.ts`、`.js` 文件，想在提交前看有没有组件写法、性能、样式、业务逻辑问题，可以用它。

你可以这样说：

```text
用 frontend-code-review 审一下我当前前端改动。只列真正需要修的地方，按紧急问题和改进建议分开。
```

小白最好要求它“基于 diff 审”，不要让它对整个项目泛泛点评。好的 review 应该带文件、行号、问题原因和建议修法。

## 5. code-reviewer：通用代码审查

这个更通用。

任何代码改完都可以用，尤其是跨文件、跨模块、涉及接口、状态、权限、数据结构的改动。

你可以这样说：

```text
用 code-reviewer review 当前改动，重点看 bug、边界条件、安全问题、可维护性和测试缺口。发现问题先列出来，不要急着改。
```

这个 Skill 的价值是让 Codex 进入“审查者模式”。它不应该只是总结你改了什么，而是要主动找可能出问题的地方。

## 6. webapp-testing：别只看代码，要打开页面测

网页项目最容易出现的问题是：代码看着对，页面一打开就错位、按钮没反应、接口报错。

`webapp-testing` 可以让 Codex 启动本地项目，用浏览器走一遍关键流程，顺手看控制台错误。

你可以这样说：

```text
用 webapp-testing 启动本地项目，打开页面，走一遍关键流程，截图并检查控制台错误。
```

做登录、表单、弹窗、列表、搜索、筛选、设置页时，这个 Skill 特别有用。

## 7. pr-creator：让 Codex 帮你发一个像样的 PR

代码写完以后，还有协作成本。

很多 PR 描述太随意，别人点进去不知道你改了什么、为什么改、测了没有。最后 Review 来回问，时间就耗在这种地方。

你可以这样说：

```text
用 pr-creator 帮我准备 PR。先确认当前分支不是 main，检查 git status、PR 模板和测试结果，再生成 PR 标题和描述。
```

提醒一句：涉及提交、推送、创建 PR 的操作，要让 Codex 先解释它准备做什么。尤其是推送前，自己看一眼分支名。

## 8. fix：提交前先扫格式和 lint

很多 CI 失败跟功能没关系。格式不对、变量没用、lint 规则没过，都可能让你在小事上耗半天。

你可以这样说：

```text
用 fix 帮我跑格式化和 lint。能自动修的先修，剩下需要手动处理的问题列出来。
```

注意，不同项目的命令不一定一样。React 这个 Skill 里写的是 `yarn prettier` 和 `yarn linc`，但你自己的项目可能是 `npm run lint`、`pnpm lint` 或别的命令。所以更稳的说法是让 Codex 先读项目脚本再跑。

## 9. update-docs：代码改了，文档别漏

文档这件事很尴尬。大家都知道它重要，但真的改代码时，很容易忘。

新增一个参数，文档没写。

改了一个行为，示例还是旧的。

接口已经变了，说明页还停在上个版本。

时间一长，文档就没人敢信。

你可以这样说：

```text
用 update-docs 看一下这次代码变更影响哪些文档。先根据 diff 找到相关 docs 或 mdx 文件，再给我建议更新点。
```

功能做出来只是第一步，别人知道怎么用才算完整交付。

## 10. find-skills：遇到新任务先找现成 Skill

这个 Skill 适合放在第一个用。

因为你以后不可能只靠这 10 个 Skill。真正的用法是：遇到新场景，先让 Codex 帮你找更合适的流程卡。

你可以这样说：

```text
用 find-skills 帮我找一个适合做这个任务的 Skill。优先官方来源、高安装量、仓库活跃、风险低的结果，并给我安装命令。
```

对小白来说，会找，比记住更重要。

## 所以小白该怎么选？

别从 10 个里纠结。

如果你还不知道 Skills 能干嘛，先用 `find-skills`。

如果你在做页面，先用 `frontend-design` 和 `webapp-testing`。

如果你想做完整项目，用 `fullstack-developer`。做 Next.js 缓存问题时，再看 `cache-components`。

如果你已经开始提交代码，用 `fix`、`code-reviewer`，前端项目再加 `frontend-code-review`。

如果你要发 PR 或维护文档，用 `pr-creator` 和 `update-docs`。

第一次不用全装。

真的，先用一个就行。

今天页面不好看，就用 `frontend-design`。

今天 PR 写不清，就用 `pr-creator`。

今天担心页面流程没跑通，就用 `webapp-testing`。

你只要在一个具体任务里用成一次，就会明白 Skills 的价值。

对我来说，Skills 的价值没那么玄：它会让 Agent 少一点临场发挥，多一点固定流程。

对小白来说，这已经够了。
