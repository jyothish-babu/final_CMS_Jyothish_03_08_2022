function validate() {
		var first_name = /^[a-z A-Z]+$/;
		var mob_number = /^[6-9]\d{9}$/;
		var email_valid =/^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
		var password_valid = /^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;

		var firstName = document.getElementById("stname");
		var address = document.getElementById("staddress");
		var phone = document.getElementById("stphone");
		var email = document.getElementById("stemail");
		var password = document.getElementById("stpassword");
		var password2 = document.getElementById("stpassword_repeat");
		
		

		if (!first_name.test(firstName.value) ||  firstName.value == "") {
			alert("Enter your name, alphabets only..!");
			firstName.focus();
			return false;
		}
		if (address.value == "") {
			alert("Please fill the address field");
			address.focus();
			return false;
		}
		if (!mob_number.test(phone.value) || phone.value == "") {
			alert("Enter valid phone number");
			phone.focus();
			return false;
		}
		if (!email_valid.test(email.value) || email.value == "") {
			alert("Enter valid email");
			email.focus();
			return false;
		}
		if (!password_valid.test(password.value) || password.value == "") {
			alert("Password must be 6 to 12 and allowed character are !@#$%&*()<> ");
			password.focus();
			return false;
		}
		if (password2.value == "") {
			alert("Please fill conform password ");
			password2.focus();
			return false;
		}
		
		if (password.value != password2.value) {
			alert("Passwords are not same ");
			password2.focus();
			return false;
		}
		
		return;
	}


function toggleVisibility() {  
  var getPasword = document.getElementById("stpassword_repeat");  
  if (getPasword.type === "password") {  
    getPasword.type = "text";  
  } else {  
    getPasword.type = "password";  
  }  
}  