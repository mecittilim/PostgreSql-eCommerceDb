-- #1
Select * from products p
inner join categories c
on p.category_id = c.id;

-- #2
Select p.name as "ÜrünAdı", c.name as "CategoryAdı" from products p
inner join categories c
on p.category_id = c.id;

-- #3
Select * from customers c
inner join addreses a 
on c.id = a.customer_id;

-- #4
Select * from customers c
inner join addreses a 
on c.id = a.customer_id
inner join cities ct
on a.customer_id = ct.id
inner join countries co
on ct.country_id = co.id;

-- #5
Select * from countries co
left join cities ct
on co.id = ct.country_id;

-- #6
Select * from cities ct
right join countries co
on ct.country_id = co.id;

-- #7
Select * from products p
left join product_seller ps
on p.id = ps.product_id
full outer join sellers s
on ps.seller_id = s.id;

-- #8
Select ic.name, c.email from individual_customers ic
full outer join customers c
on c.id = ic.id;

-- #9
Select * from sellers s
right join product_seller ps
on s.id = ps.product_id
full outer join products p
on ps.seller_id = p.id;

-- #10
Select * from products p
inner join suppliers s
on p.supplier_id = s.id

-- #11
Select s.company_name, s.email, p.name from products p
inner join suppliers s
on p.supplier_id = s.id;

-- #12
Select ct.name, co.name from cities ct
right join countries co
on ct.country_id = co.id;

-- #13
Select a.street, c.name from addreses a
inner join cities c
on a.city_id = c.id;

-- #14
Select a.street, c.name, cu.email from addreses a
inner join customers cu
on a.customer_id = cu.id
inner join cities c
on a.city_id = c.id

-- #15
Select * from products p
inner join brands b
on b.product_id = p.id;
