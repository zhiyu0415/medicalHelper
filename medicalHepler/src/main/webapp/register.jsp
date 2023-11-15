<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>註冊</title>
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

    .register-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: flex-start;
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
  </style>
</head>
<body>

  <div class="register-container">
    <h2>註冊</h2>
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

    <button onclick="register()">註冊</button>
  </div>

  <script>
    function register() {
      var name = document.getElementById('name').value;
      var username = document.getElementById('username').value;
      var password = document.getElementById('password').value;
      var idNumber = document.getElementById('idNumber').value;
      var email = document.getElementById('email').value;
      var phoneNumber = document.getElementById('phoneNumber').value;
      //驗證帳號
      var verifyUsername = isValidUsername($("#username").val());
		if(!verifyUsername.valid) {
          alert(verifyUsername.message);
          $("#username").focus();
          return false;
		}
	  
		// 驗證密碼
        var password = $("#password").val();
		var verifyPassword = isValidPassword(password);
		if(!verifyPassword.valid) {
            alert(verifyPassword.message);
            $("#password").focus();
            return false;
        }

		// 驗證再次輸入密碼
		var verifyCheckPassword = isValidCheckPassword(password, $("#checkPassword").val());
		if(!verifyCheckPassword.valid) {
            alert(verifyCheckPassword.message);
            $("#checkPassword").focus();
            return false;
		}
		return true;		
	}
    
 // Description: 驗證帳號是否已被使用
	function verifyUsernameDuplicate() {
		var result = false
		$.ajax({
            url: "/api/memberAccount",
            type: "GET",
            cache:false,
			async:false,
            data: {
                "username": $("#username").val()
            },
            dataType: "JSON",
            success: function(res) {
                // 若回傳狀態為2000，則判斷回傳資料是否為true，true 為未被使用，false 為已被使用
                if(res.state == 2000 ? !res.data : false) result =  true;
                else alert("該帳號已被使用");
            },
            error: function(xhr) {
				console.log(xhr);
            }
        });
        return result;
	}
})
		
      // 在這裡添加註冊邏輯，例如將資料提交到後端
      // 這裡只是一個簡單的範例
      console.log("註冊成功！");
      window.location.href = 'login.jsp';
    }
  </script>

</body>
</html>
