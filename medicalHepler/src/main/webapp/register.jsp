<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>���U</title>
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
    <h2>���U</h2>
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

    <button onclick="register()">���U</button>
  </div>

  <script>
    function register() {
      var name = document.getElementById('name').value;
      var username = document.getElementById('username').value;
      var password = document.getElementById('password').value;
      var idNumber = document.getElementById('idNumber').value;
      var email = document.getElementById('email').value;
      var phoneNumber = document.getElementById('phoneNumber').value;
      //���ұb��
      var verifyUsername = isValidUsername($("#username").val());
		if(!verifyUsername.valid) {
          alert(verifyUsername.message);
          $("#username").focus();
          return false;
		}
	  
		// ���ұK�X
        var password = $("#password").val();
		var verifyPassword = isValidPassword(password);
		if(!verifyPassword.valid) {
            alert(verifyPassword.message);
            $("#password").focus();
            return false;
        }

		// ���ҦA����J�K�X
		var verifyCheckPassword = isValidCheckPassword(password, $("#checkPassword").val());
		if(!verifyCheckPassword.valid) {
            alert(verifyCheckPassword.message);
            $("#checkPassword").focus();
            return false;
		}
		return true;		
	}
    
 // Description: ���ұb���O�_�w�Q�ϥ�
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
                // �Y�^�Ǫ��A��2000�A�h�P�_�^�Ǹ�ƬO�_��true�Atrue �����Q�ϥΡAfalse ���w�Q�ϥ�
                if(res.state == 2000 ? !res.data : false) result =  true;
                else alert("�ӱb���w�Q�ϥ�");
            },
            error: function(xhr) {
				console.log(xhr);
            }
        });
        return result;
	}
})
		
      // �b�o�̲K�[���U�޿�A�Ҧp�N��ƴ������
      // �o�̥u�O�@��²�檺�d��
      console.log("���U���\�I");
      window.location.href = 'login.jsp';
    }
  </script>

</body>
</html>
