<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
  function formProduct(){
		// Make quick references to our fields
		
		var productName = document.getElementById('productname');
		var productDescription = document.getElementById('productdescription');
		var categoryName = document.getElementById('category');
		var supplierName = document.getElementById('suppliername');
		var price = document.getElementById('price');
		var stock = document.getElementById('stock');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(productname, "Product Name Should not be empty")) {
							if (isAlphabet(productname,
									"Please enter only letters for Product Name")) {
								if (notEmpty(productdescription,"Product Description Should not be empty")){
								         if (isAlphabet(productdescription,
								        "Please enter only letters for Product Description")) {
								        	 if (notEmpty(category,"Category Should not be empty")){
								        		 if(notEmpty(suppliername, "Supplier Name should not be empty")){
								        	
										if (notEmpty(price,
												"Price Should not be empty")) {
											if (isNumeric(price,
													"Please enter only number for Price")) {
														if (notEmpty(stock,
																"Stock Should not be empty")) {
															if (isNumeric(
																	stock,
																	"Please enter a valid Stock")) {
																if(notEmpty(file, "File should not be empty")){
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
		var alphaExp = /^[0-9a-zA-Z]+$/;
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
<form action="newProduct" class="form-horizontal" method="post" enctype="multipart/form-data" onsubmit="return formProduct()">
<fieldset>

<!-- Form Name -->
<legend>PRODUCT</legend>



<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT NAME</label>
  <div class="col-md-4">
    <input type="text" id="productname" name="productName" class="form-control">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">STOCK</label>
  <div class="col-md-4">
    <input type="text" id="stock" name="stock" class="form-control">
    </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>
  <div class="col-md-4">
    <input type="text" id="price" name="price" class="form-control">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION</label>
  <div class="col-md-4">
    <input type="text" id="productdescription" name="productDescription" class="form-control">
    
  </div>
</div>
<div class="form-group">
					<label class="col-xs-4 control-label" for="product_name_fr">CategoryName</label>
					<div class="col-xs-6">
						<select name="category" id="categoryname" class="form-control">
							<option value="" class="form-control">Select Category</option>
							<c:forEach items="${categoryList}" var="category">
								<option value="${category.categoryName}">${category.categoryName}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-4 control-label" for="product_name_fr">SupplierName</label>
					<div class="col-xs-6">
						<select name="supplierName" id="suppliername" class="form-control">
							<option value="" class="form-control">Select Supplier</option>
							<c:forEach items="${supplierList}" var="supplier" varStatus="status">
								<option value="${supplier.supplierName}">${supplier.supplierName}</option>
							</c:forEach>
						</select>
					</div>
				</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">upload file</label>
  <div class="col-md-4">
    <input id="image" name="image" class="input-file" type="file">
  </div>
</div>

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