# 妙记+S

<!-- SIUSER-REPO-GUIDE:START -->
## 项目介绍 / Project Introduction

### 中文
妙记+S Skill：监控飞书会议并把会议纪要收口成结构化知识资产。

### English
Miaoji+S skill for monitoring Feishu meetings and turning minutes into structured knowledge assets.

## 使用方式 / Usage

### 中文
1. 先读 README，确认项目目标和当前维护状态。
2. 根据仓库结构找到核心文件、脚本或资料目录。
3. 修改前后保持小步提交，并补充必要的验证记录。

### English
1. Read the README first to understand the project goal and maintenance state.
2. Use the repository map to find core files, scripts, or content directories.
3. Keep changes small and record the relevant validation steps.

## 入口与元信息 / Entry Points & Metadata

- GitHub 仓库 / Repository: https://github.com/siuserxiaowei/miaoji-s
- 默认分支 / Default branch: `main`
- 主要语言 / Primary language: `project`
- 可见性 / Visibility: `public`
- 仓库类型 / Repository type: `source`

## 本地运行 / Local Run

```bash
git clone https://github.com/siuserxiaowei/miaoji-s.git
cd miaoji-s
# Open README.md and inspect the repository files for the relevant entry point.
```

## 仓库结构 / Repository Map

| 路径 / Path | 中文说明 | English |
| --- | --- | --- |
| `README.md` | 项目入口说明，先读这里。 | Main project entry point and orientation. |
| `skills` | 项目文件或目录。 | Project file or directory. |
| `.gitignore` | 项目文件或目录。 | Project file or directory. |

## 维护备注 / Maintenance Notes

- 中文：当项目目标、在线入口、运行命令或目录结构变化时，同步更新本说明。
- English: Keep this guide updated when the project purpose, live link, run commands, or structure changes.
- 中文：修改代码、数据或生成页面后，优先运行相关构建、测试或校验命令。
- English: After changing code, data, or generated pages, run the relevant build, test, or validation command.

## 安全与隐私 / Safety & Privacy

- 中文：不要提交 API key、token、密码、cookie、私有链接或内部账号资料。
- English: Do not commit API keys, tokens, passwords, cookies, private URLs, or internal account data.
- 中文：公开 GitHub Pages 前，确认资料已脱敏并允许公开。
- English: Before publishing GitHub Pages output, confirm the material is redacted and cleared for public release.
<!-- SIUSER-REPO-GUIDE:END -->



飞书会议监控与会议纪要收口 Skill。

`miaoji-s` 的核心不是写泛泛的会议总结，而是定时监控飞书会议 / 妙记：发现新录音后，自动生成对应的飞书在线纪要文档，并把新文档链接收口到总索引里，方便后续回查、分发和复盘。

## 能做什么

- 定时扫描飞书会议 / 妙记，默认每天 22:00 跑一轮。
- 发现新 `minute_token` 后，用 `lark-cli vc +notes` 获取妙记总结、待办、章节和逐字稿产物。
- 每条会议生成一篇新的飞书在线纪要文档。
- 把会议标题、日期、纪要链接、原始妙记链接、状态和标签追加到总索引文档。
- 已处理会议不重复生成；失败项写入本地失败队列，下一轮优先补处理。

## 安装

```bash
npx -y skills add siuserxiaowei/miaoji-s -g --skill miaoji-s -y --full-depth
```

安装后重启 Codex / Claude Code，让 Skill 生效。

## 触发方式

```text
/miaoji-s
/妙记+S
/妙记加S
/妙计加S
/飞书会议监控
/会议纪要收口
```

## 使用示例

手动处理一条妙记：

```text
/miaoji-s 处理这个妙记：https://example.feishu.cn/minutes/xxx
```

扫描最近 24 小时的新会议：

```text
/miaoji-s scan
```

设置自动任务时使用：

```text
每天 22:00 运行 /miaoji-s scan，扫描新飞书会议 / 妙记，生成对应飞书纪要文档，并把新文档链接追加到总索引。
```

## 运行依赖

需要本机已安装并授权 `lark-cli`：

```bash
command -v lark-cli
lark-cli --version
```

核心命令链：

```bash
lark-cli minutes +search --as user --start <start> --end <end> --format json
lark-cli vc +notes --as user --minute-tokens <minute_token> --format json --output-dir ~/.miaoji-s/artifacts
lark-cli docs +create --api-version v2 --as user ...
lark-cli docs +update --api-version v2 --as user ...
```

## 本地状态

默认状态目录：

```text
~/.miaoji-s/
```

核心文件：

```text
config.json
processed.jsonl
failures.jsonl
drafts/
artifacts/
```

`config.json` 里保存总索引文档 token、目标目录、上次扫描时间和时区。`processed.jsonl` 负责去重，`failures.jsonl` 负责失败补偿。

## 输出文档结构

每条会议默认生成一篇飞书在线文档：

```text
YYYY-MM-DD｜会议标题｜会议纪要
```

正文包含：

```text
0. 元信息
1. 会议摘要
2. 关键结论
3. 待办事项
4. 重要讨论
5. 风险与未决问题
6. 可复用素材
7. 下一步行动
8. 原文回查索引
```

总索引文档默认叫：

```text
妙记+S 会议纪要索引
```

每条索引会收口：

```text
会议日期 / 标题 / 纪要文档链接 / 原始妙记链接 / 处理状态 / 标签 / 待办数量
```

## 参考来源

这个 Skill 参考了以下仓库的结构思路，但不复制大段内容：

- [`xiaomo-agi/xiaomo-skills`](https://github.com/xiaomo-agi/xiaomo-skills)：妙记扫描、分类、去重和失败队列思路。
- [`situker/sk-info-assets`](https://github.com/situker/sk-info-assets)：信息资产化的结构意识。
- [`situker/situk-yangtao-perspective`](https://github.com/situker/situk-yangtao-perspective)：边界声明、反模式提醒和验证意识。
