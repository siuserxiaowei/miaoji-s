# 小白用 Codex 时怎么用得更好

这是给公众号文章配套的 Codex 小白上手包：一篇文章、10 个研发场景 Skills、一键安装脚本和配图。

## 一键安装

```bash
curl -fsSL https://raw.githubusercontent.com/siuserxiaowei/codex-skills-guide/main/codex-dev-skills/install.sh | bash
```

安装完成后，重启 Codex，让新安装的 Skills 生效。

## 文章

- [公众号文章稿：小白用 Codex 时怎么用得更好](article.md)
- [10 个 Skills 安装说明](codex-dev-skills/README.md)

## 额外个人工作流 Skill

### 妙记贾维斯

`miaoji-jarvis` 是一个飞书妙记 / 会议录音信息资产工作流：一条录音生成一篇飞书在线文档，并追加到总索引文档。

安装：

```bash
npx -y skills add siuserxiaowei/codex-skills-guide -g --skill miaoji-jarvis -y --full-depth
```

触发：

```text
/miaoji-jarvis
/妙记贾维斯
/妙记成文档
/飞书录音文档
/会议资产
```

参考来源：[`situker/sk-info-assets`](https://github.com/situker/sk-info-assets)、[`xiaomo-agi/xiaomo-skills`](https://github.com/xiaomo-agi/xiaomo-skills)、[`situker/situk-yangtao-perspective`](https://github.com/situker/situk-yangtao-perspective)。本 Skill 只吸收结构思路和工作流设计，不直接复制人物 OS 大段内容。

## 配图

![Codex 小白研发 Skills 截图合集](assets/codex-skills-install/codex-skills-contact-sheet.png)

单张截图在：

```text
assets/codex-skills-install/screenshots/
```
