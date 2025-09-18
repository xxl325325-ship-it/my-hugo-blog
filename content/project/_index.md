---
title: "我的项目"
date: 2025-09-03
type: "project"
layout: "list"
featured_image: "/images/project-banner.jpg"
menu:
  main:
    weight: 400
    identifier: "project"
---


这个页面展示了我的各类项目。每个项目都代表了我在不同领域的探索和实践。

通过这些项目，您可以了解我的兴趣和思考方式。如果您对任何项目感兴趣，欢迎<a href="mailto:xxl325325@gmail.com">与我联系</a>交流。

## 探索领域

<div class="project-grid">
  <div class="project-card">
    <img src="/images/youtube-icon.svg.png" alt="Youtube频道">
    <h3>Youtube频道</h3>
    <p>分享生活记录和学习心得的视频平台</p>
  </div>
  
  <div class="project-card">
    <img src="/images/xiaohongshu-icon.svg.png" alt="小红书">
    <h3>小红书</h3>
    <p>记录苏州生活点滴的图文分享</p>
  </div>
  
  <div class="project-card">
    <img src="/images/finance-icon.svg.png" alt="财务学习">
    <h3>财务学习</h3>
    <p>个人财务管理和投资知识学习</p>
  </div>
  
  <div class="project-card">
    <img src="/images/law-icon.svg.png" alt="法律学习">
    <h3>法律学习</h3>
    <p>日常生活相关的法律知识积累</p>
  </div>
  
  <div class="project-card">
    <img src="/images/parenting-icon.svg.png" alt="育儿规划">
    <h3>育儿规划</h3>
    <p>科学育儿和家庭教育计划</p>
  </div>
  
  <div class="project-card">
    <img src="/images/self-management-icon.svg.png" alt="自我管理">
    <h3>自我管理</h3>
    <p>时间管理和个人成长系统</p>
  </div>
</div>

<style>
.project-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 2rem;
  margin: 3rem 0;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.project-card {
  background: #fff;
  border-radius: 12px;
  padding: 2rem;
  text-align: center;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  border: 2px solid #f0f0f0;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 15px rgba(0, 0, 0, 0.15);
}

.project-card img {
  width: 80px;
  height: 80px;
  object-fit: cover;
  border-radius: 50%;
  margin-bottom: 1rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.project-card h3 {
  color: #333;
  margin: 0.5rem 0;
  font-size: 1.25rem;
}

.project-card p {
  color: #666;
  font-size: 0.9rem;
  line-height: 1.4;
}

@media (max-width: 768px) {
  .project-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
}

@media (max-width: 480px) {
  .project-grid {
    grid-template-columns: 1fr;
    gap: 1rem;
  }
}
</style>