#!/bin/bash

# 开发工作流程脚本
# 简化日常开发操作

echo "🚀 Chilli's Next Chapter - 开发工作流程"
echo "=========================================="

# 检查当前分支
CURRENT_BRANCH=$(git branch --show-current)
echo "📍 当前分支: $CURRENT_BRANCH"

# 确保在develop分支
if [ "$CURRENT_BRANCH" != "develop" ]; then
    echo "🔄 切换到develop分支..."
    git checkout develop
fi

# 拉取最新更改
echo "📥 拉取最新更改..."
git pull origin develop

# 显示最近的提交
echo ""
echo "📊 最近提交记录："
git log --oneline -5
echo ""

# 显示当前状态
echo "📋 当前仓库状态："
git status --short

# 提供操作选项
echo ""
echo "请选择操作："
echo "1) 添加所有更改并提交"
echo "2) 查看具体更改"
echo "3) 推送到远程仓库"
echo "4) 手动部署到生产环境"
echo "5) 退出"
echo ""
read -p "输入选项 (1-5): " choice

case $choice in
    1)
        read -p "输入提交信息: " commit_msg
        git add .
        git commit -m "$commit_msg"
        echo "✅ 提交完成：$commit_msg"
        ;;
    2)
        git diff --stat
        read -p "按回车键查看详细更改..."
        git diff
        ;;
    3)
        echo "📤 推送到远程develop分支..."
        git push origin develop
        echo "✅ 推送完成！"
        ;;
    4)
        echo "🚀 执行手动部署..."
        ./scripts/auto-deploy.sh
        ;;
    5)
        echo "👋 再见！"
        exit 0
        ;;
    *)
        echo "❌ 无效选项"
        ;;
esac

echo ""
echo "💡 提示："
echo "- 在develop分支工作不会触发生产部署"
echo "- 每天12点和0点会自动部署到生产环境"
echo "- 紧急情况下可以运行 ./scripts/auto-deploy.sh 手动部署"