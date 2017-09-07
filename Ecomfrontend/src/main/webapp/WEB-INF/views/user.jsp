<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script type="text/javascript">
function formRegister() {
	// Make quick references to our fields
	var name = document.getElementById('user1');
	/* var userName = document.getElementById('userName'); */
	var password = document.getElementById('user2');
	var contactNumber = document.getElementById('user3');
	var emailId = document.getElementById('user4');
	var address = document.getElementById('user5');
	var zipcode = document.getElementById('user6');
	// Check each input in the order that it appears in the form!
	if (notEmpty(name, "Name Should not be empty")) 
	{
		if (isAlphabet(name, "Please enter only letters for name"))
			{
			if (notEmpty(phone,
			"PhoneNumber Should not be empty")) 
			
		{
			if (isNumeric(phone,
			"Please enter only number for PhoneNumber")) 
		{
				if (notEmpty(address,
				"Address Should not be empty"))
				{	
					if (isAlphanumeric(address,
					"Numbers and Letters Only for Address")) 
					{	
						
					if (notEmpty(zipcode,
					"Zipcode Should not be empty")) 
					{
				if (isNumeric(
						zipcode,
						"Please enter a valid zip code")) {
					
					if (notEmpty(email,
					"EmailId Should not be empty")) 
				 {
						if (emailValidator(email,
						"Enter a valid e-mail address"))
		{
							if (notEmpty(password,
									"password Should not be empty")) {
								if (isAlphanumeric(password,
										"Numbers and Letters Only for Passwords")) {
									
										
											
													
															return true;
														}
													
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
	}
	return false;
}
function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9a-zA-Z\.\-]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
</script>
</head>
<body>
<form action="newUser" class="form-horizontal" method="post" onsubmit="return formRegister()">
<fieldset>

<!-- Form Name -->
<legend>User</legend>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">USER NAME</label>
  <div class="col-md-4">
    <input type="text" id="user1" name="userName" class="form-control">
    
  </div>
</div> 

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">EMAIL ID</label>
  <div class="col-md-4">
    <input type="text" id="user2" name="emailId" class="form-control">
    </div>
  </div>
  <!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">PASSWORD</label>
  <div class="col-md-4">
    <input type="password" id="user3" name="password" class="form-control">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">ADDRESS</label>
  <div class="col-md-4">
    <input type="text" id="user4" name="address" class="form-control">
    
  </div>
</div> 

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">CONTACT NUMBER</label>
  <div class="col-md-4">
    <input type="text" id="user5" name="contactNumber" class="form-control">
    
  </div>
</div>
 

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="user_name_fr">ZIPCODE</label>
  <div class="col-md-4">
    <input type="text" id="user6" name="zipcode" class="form-control">
    
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button type="submit" name="" class="btn btn-primary">Submit</button>
  </div>
</div>
</fieldset>
</form>


</body>
</html>