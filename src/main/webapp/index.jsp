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

    /* New: pop + flicker animation for sparks */
    @keyframes popFlicker {
        0%, 100% {
            opacity: 0;
            transform: scale(0.6);
        }
        50% {
            opacity: 1;
            transform: scale(1.2);
        }
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

    /* Container relative to position sparks */
    .container {
        position: relative;
        text-align: center;
    }

    h1.main-title {
        font-size: 3em;
        color: #ff3399;
        animation: sparkle 2s infinite;
        position: relative;
        z-index: 2;
    }

    .marquee-text {
        margin-top: 30px;
        width: 100%;
        overflow: hidden;
        white-space: nowrap;
        box-sizing: border-box;
        position: relative;
        z-index: 2;
    }

    .marquee-text span {
        display: inline-block;
        padding-left: 100%;
        font-size: 1.5em;
        color: #0066cc;
        animation: marquee 12s linear infinite;
    }

    /* Crackers spark styles */
    .spark {
        position: absolute;
        border-radius: 50%;
        opacity: 0;
        animation: popFlicker 1.5s infinite;
        pointer-events: none;
        filter: drop-shadow(0 0 2px #fff);
        z-index: 1; /* behind the text */
    }

    /* Different colors and sizes for sparks */
    .spark.red { background: #ff3b3b; width: 8px; height: 8px; }
    .spark.yellow { background: #ffec3b; width: 6px; height: 6px; }
    .spark.blue { background: #3b9cff; width: 7px; height: 7px; }
    .spark.pink { background: #ff3bdf; width: 5px; height: 5px; }
    .spark.cyan { background: #3efff5; width: 6px; height: 6px; }

</style>
</head>
<body>
<div class="container">
    <h1 class="main-title">🎉 Welcome to Complete GP1 🎉</h1>
    <div class="marquee-text">
        <span>🚀 Provisioning an EC2 instance and deploying a Java application with Prometheus monitoring 💡</span>
    </div>

    <!-- Crackers/Popper Sparks -->
    <div class="spark red" style="top: 10%; left: 15%; animation-delay: 0s;"></div>
    <div class="spark yellow" style="top: 20%; left: 70%; animation-delay: 0.3s;"></div>
    <div class="spark blue" style="top: 50%; left: 45%; animation-delay: 0.6s;"></div>
    <div class="spark pink" style="top: 80%; left: 30%; animation-delay: 0.9s;"></div>
    <div class="spark cyan" style="top: 25%; left: 55%; animation-delay: 1.2s;"></div>
    <div class="spark red" style="top: 15%; left: 40%; animation-delay: 1.5s;"></div>
</div>
</body>
</html>
