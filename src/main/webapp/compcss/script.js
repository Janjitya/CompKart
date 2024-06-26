

function add_to_cart(id,name,price){
	
	alert("Added Successfully");
	
	let cart = localStorage.getItem("cart");
	
	
	if(cart == null){
		
		let products =[];
		let product ={productId: id,productName: name, productQuantity: 1, productPrice: price};
		products.push(product);
		
		localStorage.setItem("cart", JSON.stringify(products));
		
		console.log("prduct is added for first time");
		
	}
	else{
		
		let pcart = JSON.parse(cart);
		
		let oldProduct	= pcart.find((item) => item.productId == id)
		
		if(oldProduct){
			
			oldProduct.productQuantity = oldProduct.productQuantity + 1;
			pcart.map((item) =>{
				
				if(item.productId == oldProduct.productId)
				{
					item.productQuantity = oldProduct.productQuantity;
				}
			})
			
			localStorage.setItem("cart", JSON.stringify(pcart));
			console.log("product quantity increased");
		}
		else{
			
			let product ={productId: id,productName: name, productQuantity: 1, productPrice: price};
			pcart.push(product)
			localStorage.setItem("cart", JSON.stringify(pcart));
			console.log("product added");
		}
			
	}
	
	updateCart();
	//getcartItems();
}


//update cart

function updateCart(){
	
	let cartString = localStorage.getItem("cart");
	let cart = JSON.parse(cartString);
	
	if(cart == null || cart.length==0)
	{
		console.log("Cart is empty");
		$(".cart-item").html("0");
		$(".cart-body").html("<h3>Your cart is empty</h3>");
		$(".checkout-btn").addClass('disabled');
	}
	else{
		
		console.log(cart); 
		
		$(".cart-item").html(`${cart.length}`);
		
		let table =`
		
		<table class ='table'>
		<thead class = 'thead-ligth'>
		<tr>
			<th>Product Name </th>
			<th>Price </th>
			<th>Quantity </th>
			<th>Total Price </th>
			<th> </th>
		
		</tr>
		</thead>
		
		
		
		`;
		
		
		
		let totalprice = 0;
		cart.map((item) =>{
			
			table+=`
			
			
			<tr>
			
			<td> ${item.productName}</td>
			<td> ${item.productPrice}</td>
			<td> ${item.productQuantity}</td>
			<td> ${item.productQuantity * item.productPrice}</td>
			<td> <button onclick='removeFromCart(${item.productId});' class ="btn btn-danger btn-sm">Remove</button></td>
			
			</tr>
			
			`;
			totalprice += item.productPrice * item.productQuantity;
			
		})
		table =table +`
		
		
		<tr><td colspan="5" class =" fw-bold text-end me-5" >Sub Total: ${totalprice}</td></tr>
		</table>`
		$(".cart-body").html(table);
		$(".checkout-btn").removeClass('disabled');
		 
		
	}
	getcartItems();
	
}

//remove product from cart 

function removeFromCart(pid){
	
	let cart = JSON.parse(localStorage.getItem('cart'));
	
	let newCart = cart.filter((item) => item.productId != pid)
	
	localStorage.setItem('cart',JSON.stringify(newCart));
	
	
	updateCart();
}

function getcartItems(){
	
	let cart= JSON.parse(localStorage.getItem('cart'));
	
	cart.map((item) =>{
		
		
	var id =(`${item.productId}`);
	document.getElementById("pid").value = id  ;
	
	console.log("id= "+ id);
	console.log("quantity:" + `${item.productQuantity}`);
	})
	
	
	
}

function placeOrder(){
	
	alert("Order Successfull");
}

$(document).ready(function (){
	
updateCart();


})



	

