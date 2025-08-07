create table User1(
user_id INT PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
full_name  VARCHAR(50),
email  VARCHAR(50) UNIQUE NOT NULL,
phone VARCHAR(20),
password1  VARCHAR(50) not null
);

create table Portfolio(
portfolio_id int PRIMARY KEY,
user_id int not null,
name1 varchar(100),
created_at DATE ,
FOREIGN KEY (user_id) REFERENCES User1(user_id)
);

create table Stock (
stock_symbol VARCHAR(100),
sector VARCHAR(50),
price DECIMAL(10, 2),
price_date DATE,
all_time_high DECIMAL(10, 2),
currency VARCHAR(10),
PRIMARY KEY (stock_symbol, price_date)
);

create table Holding (
holding_id INT PRIMARY KEY,
portfolio_id INT NOT NULL,
stock_symbol VARCHAR(10) NOT NULL,
price_date DATE NOT NULL,
price_purchase DECIMAL(10,2) NOT NULL,
price_purchase_sell DECIMAL(10,2) NOT NULL,
stop_loss DECIMAL(10,2),
take_profit DECIMAL(10,2),
FOREIGN KEY (portfolio_id) REFERENCES Portfolio(portfolio_id),
FOREIGN KEY (stock_symbol) REFERENCES Stock(stock_symbol)
);


insert into User1( user_id,username,full_name,email,phone,password1) values
(1, 'jdoe','john doe','hgr@email.com', '4444','jfjfjf');
insert into Portfolio values
(1,1,'hello','2025-01-01');
insert into Stock values
('aapl','techlogoy',190,'2025-08-08',193,'USD');
insert into Holding values
(1,1,'aapl','2025-08-08',10,150,135,150);


select * from User1 join Portfolio on User1.user_id=Portfolio.user_id 
join Holding on Portfolio.portfolio_id=Holding.

