<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="newProduct" class="form-horizontal" method="post" enctype="multipart/form-data">
<fieldset>

<!-- Form Name -->
<legend>PRODUCT</legend>



<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT NAME</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="productName" class="form-control">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">STOCK</label>
  <div class="col-md-4">
    <input type="text" id="product_name" name="stock" class="form-control">
    </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="price" class="form-control">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION</label>
  <div class="col-md-4">
    <input type="text" id="product_name_fr" name="productDescription" class="form-control">
    
  </div>
</div>
<div class="form-group">
					<label class="col-xs-4 control-label" for="product_name_fr">CategoryName</label>
					<div class="col-xs-6">
						<select name="category" id="category" class="form-control">
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
						<select name="supplierName" id="supplier" class="form-control">
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
    <input id="filebutton" name="image" class="input-file" type="file">
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