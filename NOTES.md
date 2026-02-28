# 学习笔记 📝

## OpenClaw Skills 实践记录

---

## 2026-02-28

### 环境配置

**本地模型接入**
- 使用 Ollama 作为本地推理引擎，监听 `127.0.0.1:11434`
- 已配置模型：`qwen:14b` / `qwen2.5-coder:14b` / `qwen2.5-coder:7b`
- OpenClaw 通过 `openai-completions` 兼容接口对接

**网络配置**
- git 全局代理：`http://127.0.0.1:7897`
- VPN 关闭时需临时取消代理

---

### Skills 实践

#### 🌤️ weather
无需 API Key，直接用 wttr.in：
```bash
curl "wttr.in/Shanghai?format=%l:+%c+%t+(feels+like+%f),+%w+wind,+%h+humidity"
# 结果：Shanghai: ⛅️ +10°C (feels like +9°C), ←13km/h wind, 71% humidity
```

#### 🐙 github
通过 `gh` CLI 管理 GitHub：
```bash
gh repo create <name> --public   # 创建公开仓库
gh pr create --fill              # 创建 PR
gh pr merge --merge              # 合并 PR
gh search repos --sort stars     # 搜索热门仓库
```

#### 🎞️ video-frames
用 ffmpeg 处理视频：
```bash
# 提取第1秒的帧
ffmpeg -i video.mp4 -ss 1 -frames:v 1 frame.jpg

# 生成测试视频
ffmpeg -f lavfi -i "color=c=blue:size=640x360" -t 5 output.mp4
```

#### 📜 session-logs
用 ripgrep 搜索历史对话：
```bash
rg "关键词" ~/.openclaw/agents/main/sessions/ | head -20
```

---

## 心得

1. **OpenClaw skill 机制很灵活** — 只要有对应的 CLI 工具就能激活
2. **本地模型 + OpenClaw** 是完全离线可用的 AI 助手方案
3. **GitHub 工作流** 可以完全通过自然语言指令完成，不用记命令

