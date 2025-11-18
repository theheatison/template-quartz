---
title: 我的数字宫殿
---
在 Obsidian 中，你应该在 **`content` 文件夹**中进行所有笔记的添加和修改。

```python
# 进入 quartz 子模块提交更改
cd quartz
git add .
git commit -m "更新Quartz配置"
cd ..

# 回到主项目提交
git add .
git commit -m "更新网站标题和配置"
git push origin main
```

## 具体位置

### 1. 打开正确的文件夹
- 在 Obsidian 中打开：`D:\Projects\template-quartz\content`
- 这是你的**笔记库根目录**

### 2. 可以操作的文件和文件夹

#### 📝 **直接根目录文件**
```
content/
├── index.md          # 网站首页 ✅
├── about.md          # 关于页面（可创建）✅
├── tags.md           # 标签页面（可创建）✅
└── 其他笔记.md       # 你的各种笔记 ✅
```

#### 📁 **创建分类文件夹**（推荐）
```
content/
├── 编程/             # 新建文件夹 ✅
│   ├── Python学习.md
│   └── 前端笔记.md
├── 读书笔记/         # 新建文件夹 ✅  
│   ├── 书籍1.md
│   └── 书籍2.md
├── 随想/            # 新建文件夹 ✅
│   └── 日常思考.md
└── index.md         # 首页 ✅
```

## 具体操作步骤

### 1. 创建新笔记
在 Obsidian 中：
- 点击左边栏的 **"新建笔记"** 按钮
- 或者右键文件列表 → **"新建笔记"**

### 2. 编辑现有笔记
- 直接点击 `index.md` 编辑首页
- 点击任何现有 `.md` 文件进行编辑

### 3. 创建文件夹组织笔记
在 Obsidian 文件列表中：
- 右键 → **"新建文件夹"**
- 命名如：`编程`、`读书笔记` 等

## 重要提醒

### ✅ 可以做的：
- 在 `content/` 内任意位置创建 `.md` 文件
- 创建子文件夹分类整理
- 使用双链 `[[笔记名称]]` 连接笔记
- 添加图片到 `content/` 文件夹内

### ❌ 不要动的：
- 不要修改 `quartz/` 文件夹里的文件
- 不要删除 `content/` 文件夹本身

## 现在就可以开始

1. **打开 Obsidian**（确保打开的是 `content` 文件夹）
2. **创建你的第一笔记**，比如：
   - `学习计划.md`
   - `编程/Python基础.md` 
   - `读书笔记/如何阅读一本书.md`

怎么安全地添加主题和插件：

## 正确的添加方法

### 1. 先检查你的 Quartz 版本
在 `quartz/package.json` 中查看 Quartz 版本，确保插件兼容。

### 2. 查看官方插件列表
先看看 Quartz 官方是否已经有你想要的插件：
```bash
cd quartz
npm list
```
官方插件在 `quartz/plugins` 目录里。

### 3. 安全添加插件的方法

#### 方法一：通过配置启用（推荐）
编辑 `quartz.config.ts`：
```typescript
plugins: {
  transformers: [
    Plugin.FrontMatter(),      // 启用现有插件
    Plugin.GitHubFlavoredMarkdown(),
    Plugin.CrawlLinks(),
    // 添加其他官方插件...
  ],
}
```

#### 方法二：自定义插件（如果需要）
1. 在 `quartz/plugins` 下创建你的插件文件夹
2. 参考现有插件的结构
3. 在配置中引用

## 主题的添加方法

### 1. 使用现有主题配置
编辑 `quartz.config.ts` 中的主题配置：
```typescript
theme: {
  typography: {
    header: "Schibsted Grotesk",
    body: "Source Sans Pro",
    code: "IBM Plex Mono",
  },
  colors: {
    lightMode: {
      // 修改颜色配置
      primary: "#000000",
      secondary: "#666666",
    },
  }
}
```

### 2. 如果要添加全新主题
比较复杂，需要：
1. 在 `quartz/theme` 下创建主题文件夹
2. 编写对应的样式和组件
3. 更新配置引用

## 风险提醒

### ❌ 直接拖拽的风险：
- 版本不兼容导致构建失败
- 配置冲突
- 依赖缺失
- 破坏现有功能

### ✅ 安全的做法：
1. **先备份**你的 `content` 文件夹
2. **小步测试**，添加一个测试一个
3. **用好 git**，方便回滚：
   ```bash
   git add .
   git commit -m "备份：添加插件前"
   ```


