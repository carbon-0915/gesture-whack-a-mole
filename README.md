# Gesture Whack-a-Mole / 手势打地鼠

一个基于浏览器摄像头和 MediaPipe Hands 的手势交互小游戏原型。  
A browser-based gesture interaction prototype built with MediaPipe Hands.

玩家可以通过摄像头实时追踪手部关键点，并用食指位置击打屏幕中的地鼠。

The game tracks hand landmarks from the webcam in real time and maps the index fingertip position to a whack-a-mole interaction.

## 项目定位 / Project Positioning

这个项目是一个浏览器端手势交互原型，主要展示如何使用摄像头和手部关键点识别来控制游戏。

This project is a browser-based gesture interaction prototype that demonstrates how webcam hand tracking can be used as a game input method.

- Browser-based webcam interaction
- Real-time hand tracking with MediaPipe
- Canvas-based visual feedback
- Practical tuning of gesture alignment and calibration

## 功能 / Features

- 基于 MediaPipe Hands 的实时手部追踪
- 摄像头手势交互
- Canvas 绘制手部骨架和食指反馈
- 打地鼠游戏循环与得分统计
- 难度设置和击中范围调节
- 感应校准预览
- 本地化运行资源，减少外部网络依赖

- Real-time hand tracking with MediaPipe Hands
- Webcam-based gesture interaction
- Canvas overlay for hand skeleton and fingertip feedback
- Whack-a-mole game loop with score tracking
- Difficulty and hit-range settings
- Calibration preview for checking hand-tracking alignment
- Local runtime assets to reduce external network dependencies

## 技术栈 / Tech Stack

- HTML
- CSS / Tailwind runtime
- JavaScript
- Canvas API
- MediaPipe Hands
- Browser Webcam API

## 项目结构 / Project Structure

```text
gesture-whack-a-mole/
├── index.html
├── README.md
├── 启动游戏.bat
└── libs/
    ├── tailwindcss.min.js
    └── mediapipe/
```

## 本地运行 / How to Run Locally

### Windows 快速启动

双击：

```text
启动游戏.bat
```

脚本会启动本地服务器，并自动打开浏览器。

Double-click `启动游戏.bat` to start a local server and open the game in your browser.

### 手动启动 / Manual Server

在项目目录运行：

```bash
python -m http.server 8000
```

然后打开：

```text
http://127.0.0.1:8000/
```

## 在线部署 / GitHub Pages

如果部署到 GitHub Pages，建议直接使用仓库根目录的 `index.html`。  
摄像头权限通常需要 HTTPS，因此 GitHub Pages 比直接用 `file://` 打开更稳定。

If deployed with GitHub Pages, use the root `index.html`. Camera access works best over HTTPS, so GitHub Pages is recommended for online demos.

## 注意事项 / Notes

- 需要允许浏览器访问摄像头
- 光线、摄像头角度和手部可见性会影响识别效果
- 直接双击 `index.html` 用 `file://` 打开时，可能遇到模型加载或摄像头权限问题
- 推荐使用本地服务器或 GitHub Pages 运行

- Webcam permission is required
- Tracking quality depends on lighting, camera angle, and hand visibility
- Opening `index.html` directly with `file://` may cause permission or model-loading issues
- A local server or GitHub Pages deployment is recommended

## License

For learning and demonstration use.
