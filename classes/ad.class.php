<?php 


class Ad extends DbConnect {

public function getAllCategories(){	
	$sql = 'select * from categories order by title asc';
	$query = $this -> connect() -> query ($sql);
	$categories = $query -> fetchAll();
	return $categories;

}// getAllCategories


public function getAllSubCategories(){	
	$sql = 'select * from subcategories order by title asc';
	$query = $this -> connect() -> query ($sql);
	$subcategories = $query -> fetchAll();
	return $subcategories;

}// getAllSubCategories


public function getAllConditions(){	
	$sql = 'select * from conditions order by title asc';
	$query = $this -> connect() -> query ($sql);
	$conditions = $query -> fetchAll();
	return $conditions;

}// getAllConditions


public function getAllCurrencies(){	
	$sql = 'select * from currencies order by title asc';
	$query = $this -> connect() -> query ($sql);
	$currencies = $query -> fetchAll();
	return $currencies;

}// getAllCurrencies


public function getAllPaymentMethods(){	
	$sql = 'select * from payment_methods order by title asc';
	$query = $this -> connect() -> query ($sql);
	$payment_methods = $query -> fetchAll();
	return $payment_methods;

}// getAllPaymentMethods


public function getAllPriceTypes(){	
	$sql = 'select * from price_types order by title asc';
	$query = $this -> connect() -> query ($sql);
	$price_types = $query -> fetchAll();
	return $price_types;

}// getAllPriceTypes

public function getAllSendingMethods(){	
	$sql = 'select * from sending_methods order by title asc';
	$query = $this -> connect() -> query ($sql);
	$sending_methods = $query -> fetchAll();
	return $sending_methods;

}// getAllSendingMethods




}//Ad
