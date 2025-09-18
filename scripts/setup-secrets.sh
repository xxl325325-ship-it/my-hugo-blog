#!/bin/bash

# GitHub Secrets 设置助手
# 这个脚本会指导你如何设置GitHub secrets以启用定时部署

echo "🔐 GitHub Secrets 设置助手"
echo "=========================="
echo ""
echo "这个脚本会指导你设置定时部署所需的GitHub Secrets。"
echo ""

# 检查是否已安装GitHub CLI
if command -v gh &> /dev/null; then
    echo "✅ 检测到GitHub CLI已安装"
    
    # 检查是否已登录
    if gh auth status &> /dev/null; then
        echo "✅ 已登录GitHub"
        
        echo ""
        echo "📋 请准备以下信息："
        echo "1. Netlify Auth Token"
        echo "2. Netlify Site ID"
        echo ""
        echo "💡 获取方式："
        echo "• Netlify Auth Token: https://app.netlify.com/user/applications/personal"
        echo "• Site ID: https://app.netlify.com/sites/YOUR_SITE/settings/general"
        echo ""
        
        read -p "是否继续设置？(y/n): " confirm
        
        if [ "$confirm" = "y" ]; then
            # 获取仓库信息
            REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
            echo "📍 当前仓库: $REPO"
            
            read -p "输入Netlify Auth Token: " netlify_token
            read -p "输入Netlify Site ID: " site_id
            
            # 设置secrets
            echo "🔐 设置GitHub Secrets..."
            gh secret set NETLIFY_AUTH_TOKEN --body "$netlify_token"
            gh secret set NETLIFY_SITE_ID --body "$site_id"
            
            echo "✅ GitHub Secrets 设置完成！"
            echo ""
            echo "🚀 定时部署功能已启用！"
            echo "⏰ 每天12点和0点将自动部署develop分支的更改"
        fi
    else
        echo "❌ 请先登录GitHub CLI: gh auth login"
    fi
else
    echo "❌ 未检测到GitHub CLI"
    echo ""
    echo "请手动设置GitHub Secrets:"
    echo ""
    echo "步骤1: 安装GitHub CLI"
    echo "  macOS: brew install gh"
    echo "  Ubuntu: sudo apt install gh"
    echo "  Windows: winget install GitHub.cli"
    echo ""
    echo "步骤2: 登录GitHub CLI"
    echo "  gh auth login"
    echo ""
    echo "步骤3: 运行此脚本或手动设置"
    echo "  gh secret set NETLIFY_AUTH_TOKEN --body \"你的token\""
    echo "  gh secret set NETLIFY_SITE_ID --body \"你的site_id\""
    echo ""
    echo "或者通过GitHub网页界面设置："
    echo "1. 打开仓库页面 → Settings → Secrets and variables → Actions"
    echo "2. 点击 'New repository secret'"
    echo "3. 添加 NETLIFY_AUTH_TOKEN 和 NETLIFY_SITE_ID"
fi

echo ""
echo "📖 详细说明请参考: DEPLOY_GUIDE.md"