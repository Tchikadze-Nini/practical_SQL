//diagram
Table user {
id int [pk]
email varchar
}

Table customer {
 id int [pk]
 user int 
 full_name varchar
 image varchar 
 phone_number varchar 
 address varchar
 country varchar
 }

Table vendor {
  id int [pk]
  user int 
  vendor_name varchar
  shop_name varchar 
  owner_name varchar
  company_id varchar
  mobole_number varchar
  address varchar
}

Ref: customer.user > user.id
Ref: vendor.user > user.id

table blog_category {
 id int [pk]
 title varchar 
 slug varchar
}

Table blog_author {
id int [pk]
full_name varchar 
date_Joined datetime
}

table blog_post {
  id int [pk]
  title varchar 
  content varchar
  author int 
  category int
  image varcher
  is_Published boolean
}

table blog_comment {
 id int [pk]
 customer int 
 post int 
 content varchar
}

Ref: blog_post .category >
blog_category. id
Ref: blog_post.author > 
blog_author.id
Ref: blog_comment.post > 
blog_post.id

table product {
id int [pk]
title varchar 
slug varchar 
description varchar 
price decimal 
discount decimal 
size varchar
image varchar
rating int 
count_in_stock int 
category int
created_by int
}

table product_category {
id int [pk]
title varchar 
slug varchar
}

Ref: product.category
> product_category. id

Table order {
  id int [pk]
  zipcode varchar
  place varchar
  paid_amount decimal
  total_price decimal
  is_paid boolean
  paid_date datetime
  is_delivered boolean
  delivery_date datetime
  s_canceled boolean
  is_returned boolean
  order_create datetime
  customer int
  status varchar
}

Table order_item{
  id int [pk]
  product int
  order int
  quantity int
  vendor int
}

Ref:order_item.product >
product.id
Ref:order_item.order >
order.id
Ref:order_item.vendor >
vendor.id
Ref:product.created_by >
vendor.id
Ref:order.customer >
customer.id

//SQL online compiler
drop table customers;
drop table orders;
drop table shippings;

CREATE TABLE user (
    id INT NOT NULL, 
    email varchar
)

CREATE TABLE vendor(
    id INT NOT NULL,
    user int,
    vendor_name varchar,
    shop_logo varchar,
    owner_name varchar,
    company_id varchar,
    mobile_number varchar,
    address varchar 
     )

 CREATE TABLE costomer(
  id INT NOT NULL,
  user int,
  full_name varchar,
  image varchar,
  phone_number varchar,
  address varchar
  country varchar
   )   

 INSERT INTO user (id,email)
 VALUES (1,'jonh.doe@gmail.com')  

 INSERT INTO user (id,email)
 VALUES (2,'bob.smith@company.com')

 INSERT INTO Costomer(id,user,full_name,image,phone_number,address,country)
 VALUES (1,1,'jonh doe','image/john-doe-image.jpg','+34 585 545878','city name','country name')

 INSERT INTO vendor(id,user,vendor_name,shop_logo,owner_name,company_id,mobile_number,address)
 VALUES (1,2,'company a','image/companies/company-a.jpg','bob smith','aaa982bb','+34 685 545879',
 'another address')

 create table blog_category (
  id int not null,
  title varchar,
  slug varchar
  );
  create Table blog_author (
  id int not null,
  full_name varchar,
  date_Joined datetime 
 );
 create table blog_post (
    id int not null,
    title varchar,
    content varchar,
    author int,
    category int,
    image varcher,
    is_Published boolean 
 ); 
 create table blog_comment (
    id int not null,
    customer int,
    post int,
    content varchar
     )

 INSERT INTO BLOG_AUTHOR (id,full_name,date_joined)
 VALUES (1,'luka kakhadze','2022:05:26 00:11:22')    

 INSERT INTO BLOG_category (id,title,slug)
 VALUES (1,'reviews','reviews')

 INSERT INTO BLOG_category (id,title,slug)
 VALUES (2,'top 10 products','top-10-products')

INSERT INTO blog_post (id, title, content,author, category, image, is_published)
VALUES (1,'Review of outdoor Instruments,'test conotent',1, 1,'images/articles/article-1. jpg','true) 

INSERT INTO blog_comment (id,costomer,post,content)
VALUES (1, 1, 1,'this is amazing review!')

create table product (
id int not null,
title varchar,
slug varchar,
description varchar,
price decimal,
discount decimal,
size varchar,
image varchar,
rating int,
count_in_stock int, 
category int,
created_by int 
);
create table product_category (
    id int not null,
    title varchar,
    slug varchar 
    )

INSERT INTO product_category (id,title,slug)
VALUES (1,'Tech','tech')    

INSERT INTO product_category (id,title,slug)
VALUES (2,'outdoor','outdoor')

INSERT INTO product (id, title, slug, description, price, image, rating, count_in_stock, category, created_by)
VALUES (1,'Apple iPhone', 'apple-iphone-xs','short-desc','1000.00','images/product/iPhone. png', 4,500, 1, 1)

Table "order" (
  id int not null,
  zipcode varchar,
  place varchar,
  paid_amount decimal,
  total_price decimal,
  is_paid boolean,
  paid_date datetime,
  is_delivered boolean,
  delivery_date datetime,
  s_canceled boolean,
  is_returned boolean,
  order_create datetime,
  customer int,
  status varchar
);

Table order_item(
  id int not null,
  product int,
  "order" int,
  quantity int,
  vendor int
)

INSERT INTO custom_order ( 
 id, 
 zipcode,
 place,
 paid_amount,
 total_price, 
 is_paid,
 paid_date,
 is_delivered, 
 is_canceled,
 is_returned, 
 order_created,
 customer,
 status
) 

VALUES (
   1,'0100','tbilisi, chavchavadze 30','12.00','12.00','true','2022/10/20 20:49:30','false','false','false',
   '2022/10/20 20:49:00',1,'delivery-started',
)

INSERT INTO order_item (id,product,custom_order,quantity)
VALUES (1,1,1,5)

INSERT INTO order_item (id,product,custom_order,quantity)
VALUES (2,198,1,2)
