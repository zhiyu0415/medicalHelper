<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>�Τ��ƽs��</title>
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

    .user-profile {
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

    input, textarea {
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
      margin-right: 10px;
    }

    #editBtn, #saveBtn {
      display: inline-block;
    }

    #editBtn {
      background-color: #007bff;
    }

    #editBtn:hover, #saveBtn:hover {
      background-color: #0056b3;
    }

    /* �N��J���b�s��Ҧ��U�]���i�s�� */
    .edit-mode input, .edit-mode textarea {
      background-color: #f2f2f2;
      pointer-events: auto;
    }

    /* �b�s��Ҧ��U���ýs����s�A����x�s���s */
    .edit-mode #editBtn {
      display: none;
    }

    .view-mode #saveBtn {
      display: none;
    }

  </style>
</head>
<body>

  <div class="user-profile">
    <h2>�Τ���</h2>
    <form id="userForm">
      <label for="name">�Τ�m�W</label>
      <input type="text" id="name" placeholder="��J�Τ�m�W" required>

      <label for="username">�b��</label>
      <input type="text" id="username" placeholder="��J�b��" required>

      <label for="password">�K�X</label>
      <input type="password" id="password" placeholder="��J�K�X" required>

      <label for="idNumber">�����Ҧr��</label>
      <input type="text" id="idNumber" placeholder="��J�����Ҧr��" required>

      <label for="email">�q�l�H�c</label>
      <input type="email" id="email" placeholder="��J�q�l�H�c" required>

      <label for="phoneNumber">������X</label>
      <input type="tel" id="phoneNumber" placeholder="��J������X" required>

      <label for="address">�q�T�a�}</label>
      <textarea id="address" placeholder="��J�q�T�a�}" rows="4"></textarea>

      <div class="view-mode">
        <button id="editBtn" onclick="enableEditMode()">�s��</button>
        </div>
      <div class="edit-mode">
        <button id="saveBtn" onclick="saveChanges()">�x�s</button>
      </div>
    </form>
  </div>

  <script>
    function enableEditMode() {
      var form = document.getElementById('userForm');
      form.classList.add('edit-mode');
      form.classList.remove('view-mode'); 
    }

    function saveChanges() {
      var form = document.getElementById('userForm');
      form.classList.remove('edit-mode');
      form.classList.add('view-mode');
    }
  </script>

</body>
</html>
