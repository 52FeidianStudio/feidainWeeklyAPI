# 沸点周刊api

## install & run
``` JavaScript
npm install

// 开发环境
npm run dev

// 线上环境
npm start
```

## 一些思考
1. 上传的图片或者其他文件存储在哪里？存项目文件夹中使项目app不纯粹。后续可以单独写一个文件托管服务，对以后沸点所有站点的文件上传功能提供托管。在一个统一的根文件夹中以子文件夹区分各站点，各子文件夹下保存对应的站点文件。
2. feidainWeekly和feidainWeklyAPI是否需要整合到一个文件夹中，先各自完成，后续再看。
3. 前端是直接使用apache/nginx还是再用node搭建服务器，先完成，后续再评估。