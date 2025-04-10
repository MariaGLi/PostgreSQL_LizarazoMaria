create table full_order_info(
	order_id serial primary key,
	product_id integer not null,
	quantity smallint not null,
	price numeric (10, 2) not null,
	orderdate date not null,
	user_id varchar(10),
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null,
	last_connection inet not null,
	website varchar(200) not null,
	name varchar(50) not null,
	description text null,
	stock smallint default 0,
	stock_price numeric (10, 2) not null,
	stockmin smallint default 0,
	stockmax smallint default 0
);

select first_name, name, sum(stock * stock_price) as stock_price from full_order_info group by 1, 2;

select * from stock_product_vista;
create view stock_product_vista as
select  name, sum(stock * stock_price) as stock_price from full_order_info group by 1;

create view stock_product_range as
select name, stockmin, stockmax, sum(stock * stock_price) as stock_price from full_order_info group by 1, 2, 3;
select * from stock_product_range;

create materialized view stock_avg as
select name, stockmin, stockmax, sum(stock * stock_price) as stock_price from full_order_info group by 1, 2, 3;
refresh materialized view stock_avg;
select * from stock_avg;

INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    1, 9, 5, 544.2,
    '2025-02-16', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Webcam', 'Meet make compare sign history American school free we feeling light doctor.', 68,
    544.2, 15, 106
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    38, 9, 5, 544.2,
    '2025-02-16', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Mouse', 'Meet make compare sign history American school free we feeling light doctor.', 68,
    544.2, 15, 106
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    37, 9, 5, 544.2,
    '2025-02-16', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Webcam', 'Meet make compare sign history American school free we feeling light doctor.', 68,
    544.2, 15, 106
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    2, 10, 2, 428.26,
    '2025-03-06', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'USB Drive', 'Ahead he cup fine course exactly.', 89,
    428.26, 45, 172
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    3, 2, 4, 250.73,
    '2025-03-25', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Smartphone', 'Task nearly agree game rich box store five throw research up each drive.', 22,
    250.73, 18, 93
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    17, 4, 5, 1432.67,
    '2025-02-17', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Monitor', 'Her too bad office have relate perform you mission attention short.', 72,
    1432.67, 35, 123
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    7, 4, 5, 1432.67,
    '2025-02-11', '6', 'Zachary', 'Smith',
    'zachary.smith@yahoo.com', '45.15.227.28', 'https://www.johnson-blackburn.com/',
    'Monitor', 'Her too bad office have relate perform you mission attention short.', 72,
    1432.67, 35, 123
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    18, 5, 1, 1146.23,
    '2025-03-14', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Keyboard', 'Dinner off probably mean reveal protect character.', 71,
    1146.23, 48, 85
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    5, 5, 1, 1146.23,
    '2025-03-10', '1', 'Riley', 'Murphy',
    'riley.murphy@protonmail.com', '38.4.82.180', 'https://www.gibson.info/',
    'Keyboard', 'Dinner off probably mean reveal protect character.', 71,
    1146.23, 48, 85
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    11, 5, 3, 1146.23,
    '2025-02-17', '10', 'Stephanie', 'Parker',
    'stephanie.parker@hotmail.com', '139.92.112.71', 'https://best-campbell.com/',
    'Keyboard', 'Dinner off probably mean reveal protect character.', 71,
    1146.23, 48, 85
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    6, 6, 1, 322.04,
    '2025-02-13', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Mouse', 'Our defense central together similar security reflect.', 68,
    322.04, 50, 161
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    10, 6, 4, 322.04,
    '2025-03-22', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Mouse', 'Our defense central together similar security reflect.', 68,
    322.04, 50, 161
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    32, 6, 1, 322.04,
    '2025-03-11', '7', 'Michael', 'Williams',
    'michael.williams@gmail.com', '174.222.224.15', 'http://www.stewart-martin.info/',
    'Mouse', 'Our defense central together similar security reflect.', 68,
    322.04, 50, 161
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    12, 8, 2, 560.26,
    '2025-03-07', '6', 'Zachary', 'Smith',
    'zachary.smith@yahoo.com', '45.15.227.28', 'https://www.johnson-blackburn.com/',
    'Headphones', 'Want performance as rest director key.', 13,
    560.26, 12, 112
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    34, 7, 3, 517.03,
    '2025-03-28', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Printer', 'We must nor list continue president director professional article investment.', 24,
    517.03, 12, 119
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    25, 7, 1, 517.03,
    '2025-03-13', '6', 'Zachary', 'Smith',
    'zachary.smith@yahoo.com', '45.15.227.28', 'https://www.johnson-blackburn.com/',
    'Printer', 'We must nor list continue president director professional article investment.', 24,
    517.03, 12, 119
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    9, 7, 1, 517.03,
    '2025-02-27', '2', 'Ann', 'York',
    'ann.york@protonmail.com', '149.151.103.224', 'https://www.peterson.com/',
    'Printer', 'We must nor list continue president director professional article investment.', 24,
    517.03, 12, 119
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    23, 3, 1, 1329.51,
    '2025-03-22', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Tablet', 'Sea often meet government star participant one detail machine business drive.', 24,
    1329.51, 9, 105
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    26, 3, 5, 1329.51,
    '2025-03-22', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Tablet', 'Sea often meet government star participant one detail machine business drive.', 24,
    1329.51, 9, 105
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    27, 3, 4, 1329.51,
    '2025-03-23', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Tablet', 'Sea often meet government star participant one detail machine business drive.', 24,
    1329.51, 9, 105
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    14, 3, 3, 1329.51,
    '2025-03-10', '1', 'Riley', 'Murphy',
    'riley.murphy@protonmail.com', '38.4.82.180', 'https://www.gibson.info/',
    'Tablet', 'Sea often meet government star participant one detail machine business drive.', 24,
    1329.51, 9, 105
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    21, 1, 4, 811.79,
    '2025-03-01', '5', 'Christopher', 'Charles',
    'christopher.charles@yahoo.com', '8.132.55.99', 'https://barrera.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    4, 1, 5, 811.79,
    '2025-03-18', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    22, 1, 5, 811.79,
    '2025-02-18', '3', 'Richard', 'Romero',
    'richard.romero@outlook.com', '177.25.110.80', 'http://www.keller.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    24, 1, 1, 811.79,
    '2025-03-08', '1', 'Riley', 'Murphy',
    'riley.murphy@protonmail.com', '38.4.82.180', 'https://www.gibson.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    8, 1, 1, 811.79,
    '2025-03-16', '9', 'Margaret', 'Lewis',
    'margaret.lewis@protonmail.com', '145.10.59.236', 'http://garcia-gomez.net/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    35, 1, 3, 811.79,
    '2025-03-31', '9', 'Margaret', 'Lewis',
    'margaret.lewis@protonmail.com', '145.10.59.236', 'http://garcia-gomez.net/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    19, 1, 2, 811.79,
    '2025-02-14', '2', 'Ann', 'York',
    'ann.york@protonmail.com', '149.151.103.224', 'https://www.peterson.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    31, 1, 1, 811.79,
    '2025-02-20', '2', 'Ann', 'York',
    'ann.york@protonmail.com', '149.151.103.224', 'https://www.peterson.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    16, 1, 4, 811.79,
    '2025-02-22', '10', 'Stephanie', 'Parker',
    'stephanie.parker@hotmail.com', '139.92.112.71', 'https://best-campbell.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    15, 1, 1, 811.79,
    '2025-03-19', '8', 'Desiree', 'Cox',
    'desiree.cox@gmail.com', '128.116.29.129', 'https://goodwin.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    20, 1, 4, 811.79,
    '2025-03-29', '8', 'Desiree', 'Cox',
    'desiree.cox@gmail.com', '128.116.29.129', 'https://goodwin.com/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    28, 1, 4, 811.79,
    '2025-03-12', '7', 'Michael', 'Williams',
    'michael.williams@gmail.com', '174.222.224.15', 'http://www.stewart-martin.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    29, 1, 4, 811.79,
    '2025-03-13', '7', 'Michael', 'Williams',
    'michael.williams@gmail.com', '174.222.224.15', 'http://www.stewart-martin.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    30, 1, 3, 811.79,
    '2025-02-25', '4', 'Christina', 'Porter',
    'christina.porter@yahoo.com', '200.175.247.128', 'https://sanchez-morris.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);
INSERT INTO full_order_info (
    order_id, product_id, quantity, price, orderdate, user_id,
    first_name, last_name, email, last_connection, website,
    name, description, stock, stock_price, stockmin, stockmax)
VALUES (
    33, 1, 4, 811.79,
    '2025-03-24', '4', 'Christina', 'Porter',
    'christina.porter@yahoo.com', '200.175.247.128', 'https://sanchez-morris.info/',
    'Laptop', 'Brother marriage animal dream all relationship writer.', 16,
    811.79, 7, 92
);

create table users(
	id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null,
	last_connection inet not null,
	website varchar(200) not null
);
select * from users;

INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00001', 'Pamela', 'Harvey', 'pamela.harvey@icloud.com', '130.169.26.40', 'https://www.cummings-myers.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00002', 'Zachary', 'Lopez', 'zachary.lopez@icloud.com', '71.36.0.117', 'https://www.jimenez.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00003', 'Heather', 'Tucker', 'heather.tucker@hotmail.com', '149.255.250.172', 'https://jones.net/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00004', 'Amanda', 'Khan', 'amanda.khan@icloud.com', '131.155.80.238', 'http://hebert.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00005', 'Tammy', 'Cordova', 'tammy.cordova@yahoo.com', '114.150.104.42', 'http://www.horton.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00006', 'Steven', 'Carr', 'steven.carr@yahoo.com', '68.70.110.86', 'https://www.nelson.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00007', 'Jon', 'Harris', 'jon.harris@gmail.com', '51.171.236.174', 'https://jennings-johnson.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00008', 'Jonathan', 'Rosales', 'jonathan.rosales@yahoo.com', '192.250.4.45', 'http://www.banks.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00009', 'Juan', 'Taylor', 'juan.taylor@hotmail.com', '108.144.245.239', 'https://carrillo-garrison.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00010', 'Cynthia', 'Gomez', 'cynthia.gomez@gmail.com', '166.180.144.101', 'https://www.bautista.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00011', 'Jeremy', 'Monroe', 'jeremy.monroe@outlook.com', '217.91.149.219', 'https://gardner.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00012', 'Justin', 'Brady', 'justin.brady@yahoo.com', '128.228.157.13', 'https://white.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00013', 'Kimberly', 'Jones', 'kimberly.jones@outlook.com', '203.198.239.224', 'http://www.bruce.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00014', 'Cindy', 'Rhodes', 'cindy.rhodes@yahoo.com', '222.134.190.254', 'https://www.romero.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00015', 'Christopher', 'Johns', 'christopher.johns@outlook.com', '172.48.250.134', 'https://www.keller.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00016', 'Karen', 'Taylor', 'karen.taylor@yahoo.com', '75.32.21.153', 'http://www.carr-gardner.net/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00017', 'Donna', 'Kidd', 'donna.kidd@icloud.com', '216.170.193.57', 'http://www.gomez.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00018', 'Samantha', 'Mcclure', 'samantha.mcclure@hotmail.com', '81.236.20.151', 'http://www.jones.org/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00019', 'Katherine', 'Richardson', 'katherine.richardson@protonmail.com', '28.123.28.50', 'https://morgan.org/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00020', 'Jasmin', 'Williams', 'jasmin.williams@protonmail.com', '87.83.115.178', 'https://cummings.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00021', 'Hector', 'West', 'hector.west@gmail.com', '178.92.208.234', 'http://randall-martin.biz/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00022', 'Daniel', 'Foster', 'daniel.foster@gmail.com', '132.55.175.77', 'http://www.fuentes-lambert.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00023', 'James', 'Patton', 'james.patton@hotmail.com', '222.174.26.127', 'https://www.bryant.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00024', 'Nicole', 'Martinez', 'nicole.martinez@yahoo.com', '46.218.182.124', 'https://www.zimmerman.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00025', 'Tony', 'Murphy', 'tony.murphy@protonmail.com', '9.16.26.180', 'http://walker.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00026', 'Danielle', 'Smith', 'danielle.smith@gmail.com', '196.95.185.175', 'http://shah.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00027', 'Joseph', 'Cook', 'joseph.cook@yahoo.com', '207.142.24.181', 'https://www.jones.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00028', 'Kristina', 'White', 'kristina.white@outlook.com', '63.166.114.85', 'http://www.hurst-campbell.com/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00029', 'Mark', 'Wilson', 'mark.wilson@outlook.com', '14.149.117.19', 'https://www.anderson.info/');
INSERT INTO users ("id", "first_name", "last_name", "email", "last_connection", "website") 
VALUES ('00030', 'Wanda', 'Robinson', 'wanda.robinson@hotmail.com', '209.210.46.192', 'http://morris.com/');

create table products(
	id serial primary key,
	name varchar(50) not null,
	description text not null,
	stock numeric(10, 2) not null,
	price numeric(10, 2) not null,
	stockmin smallint default 0,
	stockmax smallint default 0
);

INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Laptop', 'Lot old magazine learn close art physical.', 97, 1084.85, 10, 98);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Smartphone', 'Unit economy bad including recent three seem offer continue rest.', 74, 545.58, 9, 172);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Tablet', 'Attorney ground hair senior customer exist.', 31, 1309.25, 1, 86);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Monitor', 'Trial per movement fast day help and hold.', 40, 234.68, 6, 111);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Keyboard', 'Doctor hear lay white ready color action option tough past she.', 99, 1052.35, 87, 199);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Mouse', 'West end year he quickly life with left list hospital describe unit possible.', 32, 1208.06, 13, 54);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Printer', 'Before test for information teach least go wear.', 74, 884.87, 42, 103);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Headphones', 'First political pattern anything news be machine while.', 44, 56.86, 21, 119);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Webcam', 'Standard second believe prove physical end future again both account century.', 32, 377.28, 8, 62);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('USB Drive', 'Rate trouble rich prepare visit total sell spring save here pick manager.', 73, 359.74, 33, 124);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('External HDD', 'Notice true record policy theory above claim cut.', 31, 115.21, 24, 67);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Router', 'Help reality send most rock tax character mouth.', 69, 1410.72, 59, 112);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Smartwatch', 'Buy task kitchen which firm every wide build book.', 35, 933.21, 28, 135);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Speaker', 'Economic I involve move back debate type practice cup.', 79, 790.44, 58, 95);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Microphone', 'On others where body option voice chance true.', 33, 1418.06, 11, 109);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Projector', 'Ten cost small need situation window strategy service drop school.', 52, 1167.77, 6, 89);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Drone', 'Mind note politics news still order also reflect home.', 18, 1151.97, 5, 87);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Graphics Card', 'Call current once join term office read per main catch son.', 100, 484.15, 99, 107);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Motherboard', 'Large see beyond many lead eye school cause financial actually bring relationship everything.', 42, 322.49, 14, 61);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('RAM Module', 'Decide front the democratic between structure culture sea wrong.', 41, 464.58, 12, 54);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('SSD', 'Past accept manage program half care friend outside can public rule.', 69, 1167.34, 58, 135);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Power Supply', 'Door event thing herself capital strong within interview home.', 76, 337.75, 35, 110);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Cooling Fan', 'Life role stage decade office call board customer.', 19, 856.91, 12, 99);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Gaming Chair', 'Medical so job spend become current various less.', 56, 741.41, 50, 69);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Desk Lamp', 'Particularly include old miss song well.', 44, 385.24, 23, 71);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Surge Protector', 'Color Republican show above white agreement long.', 81, 644.79, 59, 179);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Ethernet Cable', 'Different successful street truth wind one few.', 47, 964.07, 28, 106);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('VR Headset', 'Above short accept responsibility personal if officer visit surface pass arrive skin.', 67, 135.91, 35, 124);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Bluetooth Adapter', 'Service fund road indicate language into huge including writer sort college.', 53, 107.56, 25, 133);
INSERT INTO products ("name", "description", "stock", "price", "stockmin", "stockmax") 
VALUES ('Portable Charger', 'Reduce control improve laugh already at professional study by.', 27, 1079.04, 7, 59);

-- drop table products;
create table orders(
	id serial primary key,
	orderdate date not null,
	user_id integer not null
);
select * from orders;
alter table orders add constraint fk_users foreign key (user_id) references users(id);

INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (1, '2025-02-16', '00005');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (2, '2025-03-06', '00005');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (3, '2025-03-25', '00005');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (4, '2025-03-18', '00003');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (5, '2025-03-10', '00001');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (6, '2025-02-13', '00003');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (7, '2025-02-11', '00006');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (8, '2025-03-16', '00009');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (9, '2025-02-27', '00002');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (10, '2025-03-22', '00003');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (11, '2025-02-17', '00010');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (12, '2025-03-07', '00006');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (13, '2025-03-31', '00005');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (14, '2025-03-10', '00001');
INSERT INTO orders ("id", "orderdate", "user_id")
VALUES (15, '2025-03-19', '00008');

create table order_details(
	id serial primary key,
	order_id integer not null,
	product_id integer not null,
	quantity smallint not null,
	price numeric (10, 2) not null
);

alter table order_details add constraint fk_order foreign key (order_id) references orders(id);
alter table order_details add constraint fk_product foreign key (product_id) references products(id);
alter table order_details drop constraint fk_product;

INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (1, 1, 9, 5, 544.2);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (2, 2, 10, 2, 428.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (3, 3, 2, 4, 250.73);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (4, 4, 1, 5, 811.79);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (5, 4, 10, 5, 428.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (6, 5, 4, 1, 1432.67);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (7, 5, 5, 1, 1146.23);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (8, 6, 6, 1, 322.04);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (9, 7, 4, 5, 1432.67);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (10, 8, 1, 1, 811.79);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (11, 9, 7, 1, 517.03);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (12, 9, 10, 5, 428.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (13, 10, 6, 4, 322.04);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (14, 11, 9, 2, 544.2);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (15, 11, 5, 3, 1146.23);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (16, 12, 10, 4, 428.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (17, 12, 8, 2, 560.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (18, 12, 4, 5, 1432.67);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (19, 13, 10, 5, 428.26);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (20, 14, 3, 3, 1329.51);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (21, 15, 9, 1, 544.2);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (22, 15, 2, 1, 250.73);
INSERT INTO order_details ("id", "order_id", "product_id", "quantity", "price")
VALUES (23, 15, 1, 1, 811.79);

select u.id, u.first_name, o.orderdate
from users u
right join orders o on u.id = o.user_id;

select u.id, u.first_name, o.orderdate
from users u
right join orders o on u.id = o.user_id;

select u.id, u.first_name, o.id, o.orderdate
from users u
left join orders o on u.id = o.user_id where o.id is null;

select u.id, u.first_name, o.orderdate
from users u
right outer join orders o on u.id = o.user_id;

select users.id, users.first_name, orders.id, orders.orderdate, od.product_id, od.price, od.quantity, p.name 
from users
right join orders on users.id = orders.user_id 
left join order_details od on orders.id = od.order_id
left join products p on od.product_id = p.id;

select *
from users u
left join orders o on u.id = o.user_id;

create view order_detail_view as
select users.id as user_id, users.first_name, orders.id as order_id, orders.orderdate, od.product_id, od.price, od.quantity, p.name 
from users
right join orders on users.id = orders.user_id 
left join order_details od on orders.id = od.order_id
left join products p on od.product_id = p.id;

create or replace procedure total_amount(p_id_user varchar(20))
language plpgsql
as $$
declare
	total numeric;
begin
	select sum(quantity::numeric * price::numeric)
	into total
	from order_detail_view
	where user_id = p_id_user;

	raise notice 'El total gastado % es: %', p_id_user, total;
end;
$$;

call total_amount('');

create or replace procedure total_amount2(p_id_user varchar(20))
language plpgsql 
as $$
	declare 
		total numeric;
	begin
		select sum(quantity::numeric * price::numeric)
		into total
		from order_details_view
		where user_id = p_id_user;

		raise notice 'El total de $ gastado % es %',p_id_user, total;
	end;
$$;

call total_amount2('00005');