CREATE TABLE supply (
	supply_id SERIAL PRIMARY KEY,  -- в mySQL для авто инкремента пишем: supply_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),
	author VARCHAR(30), 
	price DECIMAL(8,2),
	amount INT
)