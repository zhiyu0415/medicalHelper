<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .login-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    label {
      display: block;
      margin-bottom: 8px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 16px;
      box-sizing: border-box;
    }

    button {
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      font-size: 16px;
      cursor: pointer;
      border-radius: 4px;
    }

    #adminToggle {
      margin-top: 10px;
      cursor: pointer;
      color: #007bff;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <label for="username">帳號</label>
    <input type="text" id="username" placeholder="輸入帳號" required>
    <label for="password">密碼</label>
    <input type="password" id="password" placeholder="輸入密碼" required>
    <button onclick="login()">登入</button>
    <div id="adminToggle" onclick="toggleAdmin()">切換至一般登入</div>
    <div><a href="#">忘記密碼</a></div>
  </div>

  <script>
    function login() {
      var username = document.getElementById('username').value;
      var password = document.getElementById('password').value;

      // 在這裡添加登入邏輯，例如檢查帳號密碼是否正確
      // 這裡只是一個簡單的範例
      if (username === 'user' && password === 'password') {
        alert('登入成功！');
      } else {
        alert('帳號或密碼錯誤！');
      }
    }

    function toggleAdmin() {
      alert('切換至一般登入');
          window.location.href = 'login.jsp'; 
      // 在這裡可以執行切換至管理者模式的相應操作
    }
  </script>

</body>
</html>
