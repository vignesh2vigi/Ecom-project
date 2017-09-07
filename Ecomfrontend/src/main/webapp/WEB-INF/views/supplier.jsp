<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
function formSupplier(){
	// Make quick references to our fields
	
	var supplierName = document.getElementById('suppliername');
	var contactNumber = document.getElementById('contactnumber');
	var address = document.getElementById('address');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(suppliername, "Supplier Name Should not be empty")) {
						if (isAlphabet(suppliername,
								"Please enter only letters for Supplier Name")) {
							if (notEmpty(contactnumber,"Contact Number Should not be empty")){
							         if (isNumeric(contactnumber,
							        "Please enter only letters for Contact Number")) {
															return true;
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
</script>
</head>
<body>
<form action="newSupplier" class="form-horizontal" onsubmit="return formSupplier()">
<fieldset>

<!-- Form Name -->
<legend>Supplier</legend>

<!-- Select Basic -->

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_name_fr">SUPPLIER NAME</label>
  <div class="col-md-4">
    <input type="text" id="suppliername" name="supplierName" class="form-control">
    
  </div>
</div> 

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_name_fr">CONTACT NUMBER</label>
  <div class="col-md-4">
    <input type="text" id="contactnumber" name="contactNumber" class="form-control">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="supplier_name_fr">ADDRESS</label>
  <div class="col-md-4">
    <input type="text" id="address" name="address" class="form-control">
    
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