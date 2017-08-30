<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<script>
function formAddress() {
	// Make quick references to our fields
	
	var userName = document.getElementById('userName');
	var contactNumber = document.getElementById('contactNumber');
	var address = document.getElementById('address');
	var zipcode = document.getElementById('zipcode');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(userName, "Username Should not be empty")) {
						if (isAlphabet(userName,
								"Please enter only letters for Username")) {
									if (notEmpty(contactNumber,
											"Contact Number Should not be empty")) {
										if (isNumeric(contactNumber,
												"Please enter only number for Contact Number")) {
										     if (notEmpty(address,
														"Address Should not be empty")) {
													if (notEmpty(zipcode,
															"Zipcode Should not be empty")) {
														if (isNumeric(
																zipcode,
																"Please enter a valid zip code")) {
															return true;
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
</script>
<div class="container">
  <form action="addShippingaddress" method="post" onsubmit="return formAddress()" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="UserName"> User Name:</label>
      <div class="col-sm-10">
        <input type="text" name="userName" class="form-control" id="userName" placeholder="Enter User Name">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="contactNumber">Contact Number:</label>
      <div class="col-sm-10">
        <input type="text" name="contactNumber" class="form-control" id="contactNumber" placeholder="Enter Contact Number">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Shipping Address:</label>
      <div class="col-sm-10">          
        <input type="text" name="address" class="form-control" id="address" placeholder="Enter Shipping Address">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> Zipcode:</label>
      <div class="col-sm-10">
        <input type="text" name="zipcode" class="form-control" id="zipcode" placeholder="Enter User Name">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
</html>