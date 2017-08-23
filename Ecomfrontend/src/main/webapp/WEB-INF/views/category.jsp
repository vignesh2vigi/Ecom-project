<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="newCategory" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>CATEGORY</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name">CATEGORY NAME</label>
  <div class="col-md-4">
    <input type="text" id="category_name" name="categoryName" class="form-control">
    </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="category_name_fr">CATEGORY DESCRIPTION</label>
  <div class="col-md-4">
    <input type="text" id="category_name_fr" name="categoryDescription" class="form-control">
    
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