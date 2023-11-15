<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Your Website</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #333;
      padding: 10px;
      text-align: center;
    }

    nav {
      display: flex;
      justify-content: center;
      background-color: #555;
      padding: 10px;
    }

    nav a {
      color: white;
      text-decoration: none;
      margin: 0 15px;
    }

    nav a:hover {
      text-decoration: underline;
    }

    button {
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
    }
  </style>
</head>
<body>

  <header>
    <h1>Your Website</h1>
  </header>

  <nav>
    <a href="#">首頁</a>
    <a href="#">手術問卷</a>
    <a href="#">個人醫療</a>
    <a href="#">個人基本資料修改</a>
    <a href="#">回饋</a>
    <button id="loginBtn">登入</button>
    <button id="registerBtn">註冊</button>
  </nav>

  <script>
    // 簡單的 JavaScript 處理按鈕點擊事件，你可以在這裡加上跳轉邏輯
    document.getElementById('loginBtn').addEventListener('click', function() {
      window.location.href = 'login.html'; // 更換成登入頁面的路徑
    });

    document.getElementById('registerBtn').addEventListener('click', function() {
      window.location.href = 'register.html'; // 更換成註冊頁面的路徑
    });
  </script>

</body>
</html>