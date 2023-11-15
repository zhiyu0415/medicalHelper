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
    <label for="username">�b��</label>
    <input type="text" id="username" placeholder="��J�b��" required>
    <label for="password">�K�X</label>
    <input type="password" id="password" placeholder="��J�K�X" required>
    <button onclick="login()">�n�J</button>
    <div id="adminToggle" onclick="toggleAdmin()">�����ܤ@��n�J</div>
    <div><a href="#">�ѰO�K�X</a></div>
  </div>

  <script>
    function login() {
      var username = document.getElementById('username').value;
      var password = document.getElementById('password').value;

      // �b�o�̲K�[�n�J�޿�A�Ҧp�ˬd�b���K�X�O�_���T
      // �o�̥u�O�@��²�檺�d��
      if (username === 'user' && password === 'password') {
        alert('�n�J���\�I');
      } else {
        alert('�b���αK�X���~�I');
      }
    }

    function toggleAdmin() {
      alert('�����ܤ@��n�J');
          window.location.href = 'login.jsp'; 
      // �b�o�̥i�H��������ܺ޲z�̼Ҧ��������ާ@
    }
  </script>

</body>
</html>
