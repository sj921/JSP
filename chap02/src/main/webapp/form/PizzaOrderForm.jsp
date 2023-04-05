<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="EUC-KR">
<title>Pizza Order Form</title>
<style>
	body {
		background-color: #FFFFF0;
	}
	
	#info {
		background-color: #FAEBD7;	
	}
	
	#order {
		background-color: #FAEBD7;	
	}
	
	h1 {
		text-align: center;
	}
	
	#info > input {
		margin-left : 50px;
	
	}
	
</style>
</head>
<body>
	<h1>Pizza Order Form</h1>

	<div id="info">
		<h3>Delivery Information</h3>
		Name: <input type="text" name="name" form="pizza-form"> <br>
		Street Address : <input type="text" name="address" form="pizza-form"> <br>
		City : <input type="text" name="city" form="pizza-form" value="Guri"> <br>
		Email : <input type="text" name="email" form="pizza-form"> <br>
		Phone : <input type="text" name="phone" form="pizza-form"> <br>
	</div>
		
	<div id="order">
		<h3>Order</h3>
		<h4>Crust</h4>
		<input type="radio" name="crust" value="Thin Crust" form="pizza-form" checked>Thin Crust
		<input type="radio" name="crust" value="Deep Dish" form="pizza-form" checked>Deep Dish
		
		<h4>Size</h4>
		<select name="size" form="pizza-form">
			<option value="s">Small</option>
			<option value="m" selected>Medium</option>
			<option value="l">Large</option>
			<option value="f">Family</option>
		</select>
		
		<h4>Topping(s)</h4>
		<input type="checkbox" name="topping" value="Pepperoni" form="pizza-form" checked> Pepperoni
		<input type="checkbox" name="topping" value="Sausage" form="pizza-form"> Sausage
		<input type="checkbox" name="topping" value="Green Peppers" form="pizza-form"> Green Peppers
		<input type="checkbox" name="topping" value="Onions" form="pizza-form" checked> Onions
		<input type="checkbox" name="topping" value="Extra Cheese" form="pizza-form"> Extra Cheese
		
		<h4>Special Instructions</h4>
		<textarea name="instruction" id="" cols="30" rows="10" form="pizza-form">Don't drop it!!</textarea>
		
	</div>
		
	<form id="pizza-form" action="./OrderSummary.jsp" method="POST">
		<input type="submit" value="Preview Order">	
	</form>
	
</body>
</html>