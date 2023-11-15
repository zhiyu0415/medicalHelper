<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>�����p����</title>
  <link rel="stylesheet" href="styles.css">
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
    <h1>�����p����</h1>
  </header>

  <nav>
    <a href="#">����</a>
    <a href="#">��N�ݨ�</a>
    <a href="#">�ӤH����</a>
    <a href="editor.jsp">�ӤH�򥻸�ƭק�</a>
    <a href="#">�^�X</a>
    <button id="loginBtn">�n�J</button>
    <button id="registerBtn">���U</button>
  </nav>

  <script>
    // ²�檺 JavaScript �B�z���s�I���ƥ�A�A�i�H�b�o�̥[�W�����޿�
    document.getElementById('loginBtn').addEventListener('click', function() {
      window.location.href = 'login.jsp'; // �󴫦��n�J���������|
    });
    document.getElementById('registerBtn').addEventListener('click', function() {
      window.location.href = 'register.jsp'; // �󴫦����U���������|
    });
    
  </script>

</body>
</html>