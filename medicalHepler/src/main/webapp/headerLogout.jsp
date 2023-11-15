<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>醫療小幫手</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #C3DDE4;
      padding: 1px;
      text-align: center;
    }
    nav {
      display: flex;
      justify-content: flex-end;
      background-color: #C3DDE4;
      padding: 1px;
    }
    nav a {
      color: black;
      text-decoration: none;
      margin: 10px 15px;
      font-size: 25px;
    }
    nav a:hover {
      text-decoration: underline;
    }
    button {
      background-color: #F4F0E4;
      color: black;
      border: none;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 20px;
      margin: 4px 2px;
      cursor: pointer;
    }
  </style>
</head>
<body>

  <header>
    <h1>醫療小幫手</h1>
  </header>

  <nav>
    <a href="#">首頁</a>
    <a href="#">手術問卷</a>
    <a href="#">個人醫療</a>
    <a href="#">個人基本資料修改</a>
    <a href="#">回饋</a>
    <button id="logout">登出</button>
  </nav>

  <script>
    // 簡單的 JavaScript 處理按鈕點擊事件，你可以在這裡加上跳轉邏輯
    document.getElementById('logoutBtn').addEventListener('click', function() {
      window.location.href = 'home.html'; // 更換成登入頁面的路徑
    });
  </script>

</body>
</html>