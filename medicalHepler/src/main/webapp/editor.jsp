<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>用戶資料編輯</title>
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

    /* 將輸入欄位在編輯模式下設為可編輯 */
    .edit-mode input, .edit-mode textarea {
      background-color: #f2f2f2;
      pointer-events: auto;
    }

    /* 在編輯模式下隱藏編輯按鈕，顯示儲存按鈕 */
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
    <h2>用戶資料</h2>
    <form id="userForm">
      <label for="name">用戶姓名</label>
      <input type="text" id="name" placeholder="輸入用戶姓名" required>

      <label for="username">帳號</label>
      <input type="text" id="username" placeholder="輸入帳號" required>

      <label for="password">密碼</label>
      <input type="password" id="password" placeholder="輸入密碼" required>

      <label for="idNumber">身份證字號</label>
      <input type="text" id="idNumber" placeholder="輸入身份證字號" required>

      <label for="email">電子信箱</label>
      <input type="email" id="email" placeholder="輸入電子信箱" required>

      <label for="phoneNumber">手機號碼</label>
      <input type="tel" id="phoneNumber" placeholder="輸入手機號碼" required>

      <label for="address">通訊地址</label>
      <textarea id="address" placeholder="輸入通訊地址" rows="4"></textarea>

      <div class="view-mode">
        <button id="editBtn" onclick="enableEditMode()">編輯</button>
        </div>
      <div class="edit-mode">
        <button id="saveBtn" onclick="saveChanges()">儲存</button>
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
