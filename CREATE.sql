INSERT INTO customers (name,address,age) VALUES('oz_code','서울시 서초구',20);

INSERT INTO products (name,price,categories) VALUES('보조배터리',15000,5);

INSERT INTO employees (firstName,lastName,position) VALUES('inseop','Kim','foremen');

INSERT INTO offices (city,phone,officeID) VALUES ('서울','010-1234-5678','NOT');

INSERT INTO  orders (orderDate,customerID,status) VALUES ('2025-05-01','Notion','completion');

INSERT INTO orderdatails (orderID,productID,quantityOrdered,priceEach,ordermount) 
VALUES ('Notion',53221,7,10000,10);

INSERT INTO payments (customerID,amount,paymentDAte,special_amount) VALUES ('oz_code',
200.00,2025-05-01,15000);
 
INSERT INTO productlines (productLine,textDescription) VALUES (
'phone','Various phone','gakaxy,Iphone'
);

INSERT INTO customers (name,address,city,line_description) VALUES ('inseop','seocho destrict','seoul','good'
);

INSERT INTO products (name,price,productLine) VALUES ('oz',200,'phone');

