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
    <a href="#">����</a>
    <a href="#">��N�ݨ�</a>
    <a href="#">�ӤH����</a>
    <a href="#">�ӤH�򥻸�ƭק�</a>
    <a href="#">�^�X</a>
    <button id="loginBtn">�n�J</button>
    <button id="registerBtn">���U</button>
  </nav>

  <script>
    // ²�檺 JavaScript �B�z���s�I���ƥ�A�A�i�H�b�o�̥[�W�����޿�
    document.getElementById('loginBtn').addEventListener('click', function() {
      window.location.href = 'login.html'; // �󴫦��n�J���������|
    });

    document.getElementById('registerBtn').addEventListener('click', function() {
      window.location.href = 'register.html'; // �󴫦����U���������|
    });
  </script>

</body>
</html>