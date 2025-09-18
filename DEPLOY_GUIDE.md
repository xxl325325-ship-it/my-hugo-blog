# 🕐 定时部署使用指南

## 📋 工作流程

### 日常开发流程：
1. **在develop分支工作** - 所有的修改都在`develop`分支进行
2. **随时提交** - 可以频繁提交到`develop`分支，不会触发生产部署
3. **定时合并** - 每天12点和0点自动将develop合并到main并部署

### 手动部署（紧急情况下使用）：
```bash
# 运行自动部署脚本
./scripts/auto-deploy.sh
```

## ⚙️ GitHub Actions设置（云端推荐）

### 步骤1：获取Netlify认证信息

1. **获取Netlify Auth Token**:
   - 登录 [Netlify](https://app.netlify.com)
   - 点击头像 → User settings → Applications → Personal access tokens
   - 创建新的token，命名为`GitHub Actions Deploy`

2. **获取Site ID**:
   - 在Netlify中找到你的网站
   - Site settings → Site details → Site ID

### 步骤2：设置GitHub Secrets

1. 进入GitHub仓库 → Settings → Secrets and variables → Actions
2. 添加以下secrets：
   - `NETLIFY_AUTH_TOKEN`: 你的Netlify认证token
   - `NETLIFY_SITE_ID`: 你的Netlify站点ID

### 步骤3：推送配置文件

```bash
# 切换到main分支
git checkout main

# 添加所有配置文件
git add .github/workflows/ scripts/ DEPLOY_GUIDE.md

# 提交更改
git commit -m "添加定时部署功能"

# 推送到GitHub
git push origin main
```

## 🚀 部署状态检查

### 查看部署历史：
- GitHub仓库 → Actions标签页
- 可以看到所有的部署记录和状态

### 手动触发部署：
1. GitHub仓库 → Actions → 定时部署到生产环境
2. 点击"Run workflow"按钮
3. 输入部署说明（可选）
4. 点击运行

## 📊 智能部署功能

✅ **自动检测更改**: 只有在新提交时才部署  
✅ **构建测试**: develop分支推送时自动测试构建  
✅ **详细日志**: 每次部署都有详细的执行日志  
✅ **手动触发**: 支持手动立即部署  

## 🚨 注意事项

1. **冲突处理** - 如果develop和main分支有冲突，脚本会失败，需要手动解决
2. **紧急发布** - 如需立即发布，可以手动运行脚本或直接将更改提交到main分支
3. **备份重要** - 建议定期推送develop分支到远程仓库作为备份
4. **时区注意** - GitHub Actions使用UTC时间，已调整为北京时间12点和0点

## 🔧 当前状态

- ✅ develop分支已创建
- ✅ GitHub Actions工作流已配置
- ✅ 自动部署脚本已创建
- ✅ 详细使用指南已创建
- ⏳ 等待设置GitHub secrets

## 📱 下一步操作

1. **立即设置** - 按照上面的步骤设置GitHub secrets
2. **测试部署** - 手动触发一次部署测试
3. **日常使用** - 在develop分支工作，享受自动部署

设置完成后，你的网站将在每天12点和0点自动部署最新的更改！

有问题随时联系我！🎯