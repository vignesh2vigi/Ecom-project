<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
function formCategory(){
	// Make quick references to our fields
	
	var categoryName = document.getElementById('categoryname');
	var categoryDescription = document.getElementById('categorydescription');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(categoryname, "Category Name Should not be empty")) {
						if (isAlphabet(categoryname,
								"Please enter only letters for Category Name")) {
							if (notEmpty(categorydescription,"Category Description Should not be empty")){
							         if (isAlphabet(categorydescription,
							        "Please enter only letters for Category Description")) {
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
</script>
</head>
<body>
<form action="newCategory" class="form-horizontal" onsubmit="return formCategory()">
<fieldset>

<!-- Form Name -->
<legend>CATEGORY</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name">CATEGORY NAME</label>
  <div class="col-md-4">
    <input type="text" id="categoryname" name="categoryName" class="form-control">
    </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">CATEGORY DESCRIPTION</label>
  <div class="col-md-4">
    <input type="text" id="categorydescription" name="categoryDescription" class="form-control">
    
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