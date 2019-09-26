var mysql = require('mysql');
var inquirer = require('inquirer');

// mySQL connection
var connection = mysql.createConnection({
	host: "localhost",
	port: "3306",
	user: "root",
	password: "password",
	database: "bamazon"
});

connection.query("SELECT * FROM products", function (err, res) {
	if (err) throw err;
	console.log("Item Product Department Price Stock");
	for (var i = 0; i < res.length; i++) {
		console.log(res[i].ItemID + res[i].product_id + res[i].department_name + res[i].price + res[i].stock_quantity);
	}
	console.log("---");

	inquirer.prompt([{ 
		name: "product",
		type: "input",
		message: "Product Please:"
	},
	{
		name: "quantity",
		type: "input",
		message: "How many?"

	}]).then(function (productObj) {
			connection.query('SELECT * FROM products WHERE ?', { ItemID: productObj.product }, function (err, res) {
				if (err) throw err;
				// console.log(res)
				if (res[0].StockQuantity > productObj.qty) {

					var cost = res[0].Price * productObj.qty
					console.log("Thanks for ordering! It'll cost ya " + cost.toFixed(2))
					var newQty = res[0].StockQuantity - productObj.qty
					connection.query("UPDATE products SET ? WHERE ?", [{
						StockQuantity: newQty
					},
					{
						ProductName: productObj.product
					}],

						function (err, res) {
						});
				}
				else {
					console.log("Bummer. We're all out. Sorry!")
				}
			})
	})
});