<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Complete GP1</title>
<style>
        @keyframes sparkle {
            0%, 100% {
                text-shadow: 0 0 10px #fff, 0 0 20px #f0f, 0 0 30px #f0f, 0 0 40px #0ff, 0 0 50px #0ff;
            }
            50% {
                text-shadow: 0 0 20px #ff0, 0 0 30px #ff0, 0 0 40px #ff0, 0 0 50px #f00;
            }
        }
 
        @keyframes marquee {
            0% { transform: translateX(100%); }
            100% { transform: translateX(-100%); }
        }
 
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(to bottom right, #ffe6f0, #e6f9ff);
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }
 
        .container {
            text-align: center;
        }
 
        h1.main-title {
            font-size: 3em;
            color: #ff3399;
            animation: sparkle 2s infinite;
        }
 
        .marquee-text {
            margin-top: 30px;
            width: 100%;
            overflow: hidden;
            white-space: nowrap;
            box-sizing: border-box;
        }
 
        .marquee-text span {
            display: inline-block;
            padding-left: 100%;
            font-size: 1.5em;
            color: #0066cc;
            animation: marquee 12s linear infinite;
        }
 
        .confetti {
            position: fixed;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 999;
        }
</style>
</head>
<body>
<div class="confetti">
<!-- Use an animated GIF or JavaScript-based confetti for production, this is placeholder -->
<img src="https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif" style="width: 100%; height: 100%; object-fit: cover; opacity: 0.3;">
</div>
<div class="container">
<h1 class="main-title">🎉 Welcome to Complete GP1 🎉</h1>
<div class="marquee-text">
<span>🚀 Provisioning an EC2 instance and deploying a Java application with Prometheus monitoring 💡</span>
</div>
</div>
</body>
</html>
