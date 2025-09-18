# 🚀 快速开始 - 定时部署

## 📋 工作流程概览

```
日常开发 → develop分支 → 定时合并 → main分支 → Netlify自动部署
```

## ⚡ 快速设置

### 1. 设置GitHub Secrets（必需）
```bash
# 运行设置助手（推荐）
./scripts/setup-secrets.sh

# 或手动设置
gh secret set NETLIFY_AUTH_TOKEN --body "你的token"
gh secret set NETLIFY_SITE_ID --body "你的site_id"
```

### 2. 日常开发
```bash
# 使用开发工作流脚本
./scripts/dev-workflow.sh

# 或直接操作
git checkout develop
git add .
git commit -m "你的提交信息"
git push origin develop
```

### 3. 紧急部署
```bash
# 手动部署当前更改
./scripts/auto-deploy.sh
```

## ⏰ 部署时间

- **中午12点**（北京时间）
- **午夜0点**（北京时间）

## 📊 状态检查

- **部署历史**: GitHub → Actions → 定时部署到生产环境
- **构建测试**: develop分支推送时自动运行
- **手动触发**: GitHub → Actions → 手动运行工作流

## 🔗 重要链接

- **网站**: https://chillinew.com
- **GitHub仓库**: https://github.com/xxl325325-ship-it/my-hugo-blog
- **Netlify控制台**: https://app.netlify.com/sites/chillinew

## 📞 需要帮助？

- 查看详细指南: `DEPLOY_GUIDE.md`
- 运行设置助手: `./scripts/setup-secrets.sh`
- 使用开发脚本: `./scripts/dev-workflow.sh`

✅ **享受自动部署的便利吧！** 🎉