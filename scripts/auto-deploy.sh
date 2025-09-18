#!/bin/bash

# 自动部署脚本
# 这个脚本会将develop分支的更改合并到main分支，触发Netlify部署

echo "🚀 开始定时部署流程..."

# 确保我们在develop分支
git checkout develop

# 拉取最新更改
git pull origin develop

# 切换到main分支
git checkout main

# 拉取main分支最新更改
git pull origin main

# 合并develop分支的更改
git merge develop --no-edit

# 推送到远程仓库，触发Netlify部署
git push origin main

echo "✅ 部署完成！Netlify将会自动构建并发布最新版本。"
echo "⏰ 部署时间: $(date)"