insert into Product values('C','1321','Laptop');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('A','1401','Printer');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('A','1408','Printer');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('D','1433','Printer');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('E','1434','Printer');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('B','1750','Laptop');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('A','1752','PC');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('E','2113','PC');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('F','123','Cellphone');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('F','456','Cellphone');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(1,'1232',500,64,5,'12x','600');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(2,'1121',750,128,14,'40x','850');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(3,'1233',500,64,5,'12x','600');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(4,'1121',600,128,14,'40x','850');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(5,'1121',600,128,8,'40x','850');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(6,'1233',750,128,20,'50x','950');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(7,'1232',500,32,10,'12x','400');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(8,'1232',450,64,8,'24x','350');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(9,'1232',450,32,10,'24x','350');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(10,'1260',500,32,10,'12x','350');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(11,'1233',900,128,40,'40x','980');
;-- -. . -..- - / . -. - .-. -.--
insert into PC values(12,'1233',800,128,20,'50x','970');
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(1,'1298',350,32,4,'700',11);
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(2,'1321',500,64,8,'970',12);
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(3,'1750',750,128,12,'1200',14);
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(4,'1298',600,64,10,'1050',15);
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(5,'1752',750,128,10,'1150',14);
;-- -. . -..- - / . -. - .-. -.--
insert into Laptop values(6,'1298',450,64,10,'950',12);
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(1,'1276','n','Laser','400');
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(2,'1433','y','Jet','270');
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(3,'1434','y','Jet','290');
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(4,'1401','n','Matrix','150');
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(5,'1408','n','Matrix','270');
;-- -. . -..- - / . -. - .-. -.--
insert into Printer values(6,'1288','n','Laser','400');
;-- -. . -..- - / . -. - .-. -.--
insert into Product values('E', '2112', 'PC');
;-- -. . -..- - / . -. - .-. -.--
update Product 
set type = 'Laptop'
where model = '1752';
;-- -. . -..- - / . -. - .-. -.--
delete from Product 
where maker = 'F';
;-- -. . -..- - / . -. - .-. -.--
select model 
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model, price
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where price < 600;
;-- -. . -..- - / . -. - .-. -.--
select model, price, ram
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where price <600 and speed > 450;
;-- -. . -..- - / . -. - .-. -.--
select model, price, cd
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where price < 600 and hd > 20;
;-- -. . -..- - / . -. - .-. -.--
select model, price, hd
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model, speed
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model, cd
from PC;
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where cd is not '24x' and cd is not '12x';
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where cd is not "24x" and cd is not "12x";
;-- -. . -..- - / . -. - .-. -.--
select model
from PC
where not (cd = '24x' or cd = '12x');
;-- -. . -..- - / . -. - .-. -.--
select distinct model
from PC
where not (cd = '24x' or cd = '12x');
;-- -. . -..- - / . -. - .-. -.--
select model, price, speed
from PC;
;-- -. . -..- - / . -. - .-. -.--
select distinct model
from PC
where (price < 600) and not (speed = 450);
;-- -. . -..- - / . -. - .-. -.--
select type, model 
from Printer;
;-- -. . -..- - / . -. - .-. -.--
select distinct model
from Printer
where type in ('Laser', 'Matrix');
;-- -. . -..- - / . -. - .-. -.--
select ram, model
from Laptop;
;-- -. . -..- - / . -. - .-. -.--
select code, model
from Laptop;
;-- -. . -..- - / . -. - .-. -.--
select screen, model
from Laptop;
;-- -. . -..- - / . -. - .-. -.--
select distinct model
from Laptop
where screen not in (11, 14);
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product
where type like 'Printer';
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product
where type LIKE 'P%';
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product
where type like '__';
;-- -. . -..- - / . -. - .-. -.--
select maker
from Product
where type like '%t%';
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product
where type like '%t%';
;-- -. . -..- - / . -. - .-. -.--
select count(*)
from Product;
;-- -. . -..- - / . -. - .-. -.--
select *
from Product;
;-- -. . -..- - / . -. - .-. -.--
select max(model)
from Product;
;-- -. . -..- - / . -. - .-. -.--
select min(model)
from Product;
;-- -. . -..- - / . -. - .-. -.--
select avg(price)
from Printer;
;-- -. . -..- - / . -. - .-. -.--
select sum(price)
from Printer;
;-- -. . -..- - / . -. - .-. -.--
select price
from Printer;
;-- -. . -..- - / . -. - .-. -.--
select maker
from Product
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select maker, type
from Product
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select maker, type
from Product;
;-- -. . -..- - / . -. - .-. -.--
select maker, type
from Product
group by model;
;-- -. . -..- - / . -. - .-. -.--
select maker, count(model)
from Product
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select screen, max(price), min(price), avg(price)
from Laptop
group by screen;
;-- -. . -..- - / . -. - .-. -.--
select screen, max(price), min(price), avg(price), count(price)
from Laptop
group by screen;
;-- -. . -..- - / . -. - .-. -.--
select type, sum(price)
from Printer
group by type;
;-- -. . -..- - / . -. - .-. -.--
select maker, model
from Product;
;-- -. . -..- - / . -. - .-. -.--
select maker, count(model)
from Product
group by maker
having count(model) > 5;
;-- -. . -..- - / . -. - .-. -.--
select type, avg(price)
from Printer
group by type
having avg(price) < 300;
;-- -. . -..- - / . -. - .-. -.--
select color, sum(price)
from Printer
group by color;
;-- -. . -..- - / . -. - .-. -.--
select cd
from PC
group by cd
having max(price) < 800;
;-- -. . -..- - / . -. - .-. -.--
select hd
from PC
group by hd
having max(price) < 800;
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product;
;-- -. . -..- - / . -. - .-. -.--
select screen 
from Laptop
group by screen
having min(hd) = 10;
;-- -. . -..- - / . -. - .-. -.--
select maker, type
from Product
group by maker, type;
;-- -. . -..- - / . -. - .-. -.--
select distinct maker, type
from Product;
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model, price
from Product
  inner join PC on Product.model = PC.model
  inner join Printer on Product.model = Printer.model
  inner join Laptop on Product.model = Laptop.model;
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model, PC.price
from Product
  inner join PC on Product.model = PC.model
  inner join Printer on Product.model = Printer.model
  inner join Laptop on Product.model = Laptop.model;
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model, PC.price
from Product
  inner join PC on Product.model = PC.model;
;-- -. . -..- - / . -. - .-. -.--
select distinct maker, Product.model, PC.price
from Product
  inner join PC on Product.model = PC.model;
;-- -. . -..- - / . -. - .-. -.--
select model, maker, price
from Product 
  inner join Printer on Product.model = Printer.model;
;-- -. . -..- - / . -. - .-. -.--
select Product.model, maker, price
from Product
  inner join Printer on Product.model = Printer.model;
;-- -. . -..- - / . -. - .-. -.--
select maker, screen
from Product
  inner join Laptop on Product.model = Laptop.model
where screen > 14;
;-- -. . -..- - / . -. - .-. -.--
select maker, avg(price)
from Product
  inner join PC on Product.model = PC.model
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select maker, max(price), min(price)
from Product 
  inner join Printer on Product.model = Printer.model
where color = 'y'
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select maker, max(price), min(price), color
from Product
  inner join Printer on Product.model = Printer.model
where color = 'y'
group by maker;
;-- -. . -..- - / . -. - .-. -.--
select maker, max(price), min(price), color
from Product
  inner join Printer on Product.model = Printer.model
where color = 'y'
group by maker, color;
;-- -. . -..- - / . -. - .-. -.--
select distinct maker, Product.model, price
from PC
  inner join Product on Product.model = PC.model
union 
select distinct maker, Product.model, price
from Printer
  inner join Product on Product.model = Printer.model
union
select distinct maker, Product.model, price
from Laptop
  inner join Product on Product.model = Laptop.model;
;-- -. . -..- - / . -. - .-. -.--
select Product.model, price, maker
from Product  
  inner join PC on Product.model = PC.model
where maker = 'B'
union
select Product.model, price 
from Product  
  inner join Printer on Product.model = Printer.model
where maker = 'B'
union 
select Product.model, price 
from Product  
  inner join Laptop on Product.model = Laptop.model
where maker = 'B';
;-- -. . -..- - / . -. - .-. -.--
select Product.model, price, maker
from Product
  inner join PC on Product.model = PC.model
where maker = 'B'
union
select Product.model, price, maker
from Product
  inner join Printer on Product.model = Printer.model
where maker = 'B'
union
select Product.model, price, maker
from Product
  inner join Laptop on Product.model = Laptop.model
where maker = 'B';
;-- -. . -..- - / . -. - .-. -.--
select Product.model, price, maker, Product.type
from Product
  inner join PC on Product.model = PC.model
where maker = 'B'
union
select Product.model, price, maker, Product.type
from Product
  inner join Printer on Product.model = Printer.model
where maker = 'B'
union
select Product.model, price, maker, Product.type
from Product
  inner join Laptop on Product.model = Laptop.model
where maker = 'B';
;-- -. . -..- - / . -. - .-. -.--
select distinct maker
from Product
where type = 'PC'
intersect 
select distinct maker
from Product
where type = 'Printer';
;-- -. . -..- - / . -. - .-. -.--
select distinct maker 
from Product 
where type = 'PC'
except 
select distinct maker
from Product
  inner join Printer on Product.model = Printer.model
where color = 'y';
;-- -. . -..- - / . -. - .-. -.--
select max(price) - min(price) as diff
from PC;
;-- -. . -..- - / . -. - .-. -.--
select maker, type, model, speed
from (select model, speed
  from Laptop
  where speed > 600) as lap
inner join 
     (select maker, type, model
       from Product) as prod
on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
select maker, type, prod.model, speed
from (select model, speed
  from Laptop
  where speed > 600) as lap
inner join
     (select maker, type, model
       from Product) as prod
on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
select avg(price)
from Laptop;
;-- -. . -..- - / . -. - .-. -.--
select avg(price)
from PC;
;-- -. . -..- - / . -. - .-. -.--
select avg(Laptop.price) - avg(PC.price) as diff2
from Laptop, PC;
;-- -. . -..- - / . -. - .-. -.--
select avg(lap.price) - avg(pc.price) as diff3
from (select price
  from Laptop) as lap,
     (select price 
       from PC) as pc;
;-- -. . -..- - / . -. - .-. -.--
select avg(lap.price) - avg(pc.price) as diff3
from (select price
  from Laptop) as lap,
     (select price
       from PC) as pc;
;-- -. . -..- - / . -. - .-. -.--
with lap(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
with prod(maker, type, model)
  as (
  (select maker, type, model
       from Product)
  )
select maker, type, prod.model, speed
from lap
  inner join prod on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
WITH prod(maker, type, model)
  as (
  (select maker, type, model
       from Product)
  )
select maker, type, prod.model, speed
from lap
  inner join prod on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap()
as (
  select model, speed
  from Laptop
  where speed > 600
  )
WITH prod(maker, type, model)
  as (
  (select maker, type, model
       from Product)
  )
select maker, type, prod.model, speed
from lap
  inner join prod on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
WITH prod(maker, type, model)
  as (
  (select maker, type, model
       from Product)
  )
select maker, type, lap.model, speed
from lap
  inner join prod on prod.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap1(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
WITH prod1(maker, type, model)
  as (
  (select maker, type, model
       from Product)
  )
select maker, type, lap1.model, speed
from lap1
  inner join prod1 on prod1.model = lap1.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap1(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
select maker, type, lap1.model, speed
from lap1
  inner join Product on Product.model = lap1.model;
;-- -. . -..- - / . -. - .-. -.--
WITH lap(model, speed)
as (
  select model, speed
  from Laptop
  where speed > 600
  )
select maker, type, lap.model, speed
from lap
  inner join Product on Product.model = lap.model;
;-- -. . -..- - / . -. - .-. -.--
select maker
from Product
where type = 'PC'
union 
select maker
from Product
where type = 'Printer';
;-- -. . -..- - / . -. - .-. -.--
select maker
from Product
where type = 'PC'
union all
select maker
from Product
where type = 'Printer';
;-- -. . -..- - / . -. - .-. -.--
select maker
from Product
where model in (
  select model
  from Printer
  where color = 'y'
  );
;-- -. . -..- - / . -. - .-. -.--
select model, color, 
       case 
            when color = 'y' then 'colored'
        else 'uncolored'
        end 
from Printer;
;-- -. . -..- - / . -. - .-. -.--
drop table public.salary;
;-- -. . -..- - / . -. - .-. -.--
create table public.salary (
name varchar(120),
dt date,
speed smallint,
salary_amt decimal(12,2),
salary_type smallint
);
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model
  from Product 
    left join Printer on Product.model = Printer.model
where color = 'n';
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model
  from Product
    left join Printer on Product.model = Printer.model
where color = 'n' or color is null;
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model, coalesce(Laptop.price, PC.price, Printer.price)
  from Product full join Laptop on Product.model = Laptop.model
full join PC on Product.model = PC.model
full join Printer on Product.model = Printer.model;
;-- -. . -..- - / . -. - .-. -.--
select maker, Product.model, coalesce(Laptop.price, PC.price, Printer.price)
  from Product full join Laptop on Product.model = Laptop.model
full join PC on Product.model = PC.model
full join Printer on Product.model = Printer.model
where coalesce(Laptop.price, PC.price, Printer.price) is not null;
;-- -. . -..- - / . -. - .-. -.--
alter table salary drop speed;
;-- -. . -..- - / . -. - .-. -.--
delete from salary
  where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Роздухова Нина','2019-02-25',2999.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Роздухова Нина','2019-03-05',5100.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Роздухова Нина','2019-03-05',6800.00, 3);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Халяпов Александр','2019-02-25',10499.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Халяпов Александр','2019-03-05',13000.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Меркурьева Надежда','2019-02-25',2999.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Меркурьева Надежда','2019-02-25',5800.00, 2);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Меркурьева Надежда','2019-03-05',6400.00, 1);
;-- -. . -..- - / . -. - .-. -.--
insert into Salary values('Меркурьева Надежда','2019-03-05',8300.00, 2);
;-- -. . -..- - / . -. - .-. -.--
select name
from salary
where salary_amt = (
  select min(salary_amt)
  from salary
  );
;-- -. . -..- - / . -. - .-. -.--
select name, case 
                when salary_type = 1 then 'семинарские'
                else 'лекционные'
              end
from salary
where salary_amt = (
  select salary_amt
  from salary
  where salary_type = 1
  group by salary_type
  having salary_amt = max(salary_amt)
  ) or salary_amt = (
    select salary_amt
  from salary
  where salary_type = 2
  group by salary_type
  having salary_amt = max(salary_amt)
  );
;-- -. . -..- - / . -. - .-. -.--
select name, case
                when salary_type = 1 then 'семинарские'
                else 'лекционные'
              end
from salary
where salary_amt = (
  select salary_amt
  from salary
  where salary_type = 1
  group by salary_type, salary_amt
  having salary_amt = max(salary_amt)
  ) or salary_amt = (
    select salary_amt
  from salary
  where salary_type = 2
  group by salary_type, salary_amt
  having salary_amt = max(salary_amt)
  );
;-- -. . -..- - / . -. - .-. -.--
select salary_amt
  from salary
  where salary_type = 1
  group by salary_type, salary_amt
  having salary_amt = max(salary_amt);
;-- -. . -..- - / . -. - .-. -.--
select salary_amt
  from salary
  where salary_type = 1
  group by salary_type, salary_amt
  having salary_amt = (
    select max(salary_amt)
    from salary 
    where salary_type = 1
    group by salary_type
    );
;-- -. . -..- - / . -. - .-. -.--
select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 1
    group by salary_type
    );
;-- -. . -..- - / . -. - .-. -.--
select name, case
                when salary_type = 1 then 'семинарские'
                else 'лекционные'
              end
from salary
where salary_amt = (
  select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 1
    group by salary_type
    )
  ) or salary_amt = (
    select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 2
    group by salary_type
    )
  );
;-- -. . -..- - / . -. - .-. -.--
select name, case
                when salary_type = 1 then 'семинарские'
                when salary_type = 3 then 'премия'
                else 'лекционные'
              end
from salary
where salary_amt = (
  select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 1
    group by salary_type
    )
  ) or salary_amt = (
    select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 2
    group by salary_type
    )
  ) or salary_amt = (
    select salary_amt
  from salary
  where salary_amt = (
    select max(salary_amt)
    from salary
    where salary_type = 3
    group by salary_type
    )
  );
;-- -. . -..- - / . -. - .-. -.--
(
  select name 
  where salary_type = 3
  );
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
where name in (
  select name
  from salary
  where salary_type = 3
  )
group by salary_type;
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
where name in (
  select name
  from salary
  where salary_type = 3
  )
group by name, salary_type;
;-- -. . -..- - / . -. - .-. -.--
(
  select name
  from salary
  where salary_type = 3
  );
;-- -. . -..- - / . -. - .-. -.--
(
  select name
  from salary
  where salary_type = 2
  );
;-- -. . -..- - / . -. - .-. -.--
(
  select distinct name
  from salary
  where salary_type = 2
  );
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
where name in (
  select distinct name
  from salary
  where salary_type = 2
  )
group by name, salary_type;
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
group by name, salary_type
having exists (
  select name
  from salary
  group by name, salary_type
  having salary_type = 2
         );
;-- -. . -..- - / . -. - .-. -.--
select name
  from salary
  group by name, salary_type
  having salary_type = 2;
;-- -. . -..- - / . -. - .-. -.--
select name as names, salary_type, sum(salary_amt)
from salary
group by names, salary_type;
;-- -. . -..- - / . -. - .-. -.--
select name as names, salary_type, sum(salary_amt)
from salary
group by names, salary_type
having exists (
  select name
  from salary
  group by name, salary_type
  having names = salary.name and salary_type = 2
         );
;-- -. . -..- - / . -. - .-. -.--
select case 
              when salary_type = 2 then 1
  end
  from salary
  group by name, salary_type;
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
group by name, salary_type
having exists (
  select case
              when salary_type = 2 then 1
  end
  from salary
  group by name, salary_type
         );
;-- -. . -..- - / . -. - .-. -.--
select name, count(salary_amt) over (partition by dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, count(salary_amt) over (partition by dt
  order by name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, count(salary_amt) over (partition by name, dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, count(salary_amt) over (partition by name, dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, dt, count(salary_amt) over (partition by name, dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, dt, count(salary_amt) over (partition by dt, name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, dt, count(salary_amt) over (partition by dt, name order by dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dt, count(salary_amt) over (partition by dt, name order by dt)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dt, count(salary_amt) over (partition by dt, name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct nam, dt, sum(*) over (partition by dt, name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dt, sum(*) over (partition by dt, name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dt, sum(salary_amt) over (partition by dt, name)
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dt, sum(salary_amt) over (partition by dt, name order by dt)
from salary
order by dt asc;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by name) as "rank"
from salary
where salary_amt = (
  select min(salary_amt)
  from salary
  );
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE organization;
;-- -. . -..- - / . -. - .-. -.--
create table public.organization as
select 1 as id_org, 'АО Тинькофф Банк' as name_org
union
select 2, 'X5 Retail Group'
union
select 3, 'АО Ромашка';
;-- -. . -..- - / . -. - .-. -.--
drop table teacher;
;-- -. . -..- - / . -. - .-. -.--
create table public.teacher (id_teach, last_name, first_name, birth_date, salary_amt, id_org) as
select 1, 'Роздухова', 'Нина', '1992-04-15', 15000.00, 1
union
select 2, 'Меркурьева', 'Надежда', '1995-03-12', 25000.00, 1
union
select 3, 'Халяпов', 'Александр', '1994-09-30', 17000.00, 2
union
select 4, 'Иванов', 'Иван', NULL, 100000.00, 3
union
select 5, 'Петров', 'Петр', NULL, 3000.00, 3;
;-- -. . -..- - / . -. - .-. -.--
select * 
from organization;
;-- -. . -..- - / . -. - .-. -.--
select *
from teacher;
;-- -. . -..- - / . -. - .-. -.--
/*ex 3*/
create view v_3 as (
  select teacher.id_teach, teacher.last_name, teacher.first_name, teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
);
;-- -. . -..- - / . -. - .-. -.--
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name, teacher.first_name, teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
select *
from v_3;
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name + teacher.first_name as "Фамилия Имя", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name, teacher.first_name as "Фамилия Имя", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name, teacher.first_name as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name, teacher.first_name ::text as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name + teacher.first_name ::text as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, (teacher.last_name + '' + teacher.first_name) as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, (teacher.last_name || teacher.first_name) as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, teacher.last_name || teacher.first_name as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_3 as (
  select teacher.id_teach, concat(teacher.last_name, teacher.first_name) as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_4 as (
  select teacher.id_teach, concat(teacher.last_name, teacher.first_name) as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_4 as (
  select teacher.id_teach, teacher.last_name || teacher.first_name as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_4 as (
  select teacher.id_teach, teacher.last_name || ' ' || teacher.first_name as "surname", teacher.birth_date, name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
select *
from v_4;
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_4 as (
  select teacher.id_teach, teacher.last_name || ' ' || teacher.first_name as "Фамилия Имя", teacher.birth_date as "Дата рождения", name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace view v_5 as (
  select teacher.id_teach, teacher.last_name || ' ' || teacher.first_name as "Фамилия Имя", teacher.birth_date as "Дата рождения", name_org
  from teacher
    inner join organization on teacher.id_org = organization.id_org
  order by teacher.id_teach asc
);
;-- -. . -..- - / . -. - .-. -.--
select *
from v_5;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (name)
from salary
where salary_amt = (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select distinct on (name)
*
from salary
where salary_amt = (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select min(salary_amt)
  from salary
  group by name;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (name)
*
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select distinct on (name)
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select distinct on (name)
name
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
*
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  );
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
*
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  )
group by name;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
*
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  )
group by name, dt;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
name, dt
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  )
group by name, dt;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
name, dt
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  )
group by name;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt))
name
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
  )
group by name;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 0 
  union all 
  select n + 1
  from t where n < 10
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n + 1
  from t
  where n < 100
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 3
  union all 
  select n + 5
  from t
  where n < 48
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select count(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  where n < 1000000
)

select count(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select * from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  where n < 19683
)

select * from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  where n < 19683
)

select sum(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  where n < 19684
)

select sum(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  where n < 19685
)

select sum(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select sum(n) from t limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select sum(n) from t limit 5;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
);
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 3
  union all
  select n + 5
  from t
  where n < 48
);
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  (select n * 3
  from t limit 10)
)

select sum(n) from t
limit 10;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  (select n * 3
  from t limit 10)
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t limit 10
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  limit 10
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
)

select sum(n) from t
option (maxrecursion 10);
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select 1
  union all
  select n * 3
  from t
  option (maxrecursion 10)
)

select sum(n) from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select '2019-02-04'
  union all 
  select n + 1
  from t
  where n < '2019-03-04'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select '2019-02-04'
  union all
  select n + '1'
  from t
  where n < '2019-03-04'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 1 day
  from t
  where n < '2019-03-04'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 1 
  from t
  where n < '2019-03-04'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 1
  from t
  where n < '2019-03-04'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all 
  select n + 7
  from t
  where n < '2019-06-01'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 7
  from t
  where n - 1 < '2019-06-01'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 7
  from t
  where n + 1 < '2019-06-01'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
with recursive t(n) as (
  select date('2019-02-04')
  union all
  select n + 7
  from t
  where n + 7 < '2019-06-01'
)

select * from t;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f()
returns varchar as $$
  begin 
    return "hello world!"
    end;
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f()
returns varchar(12) as $$
  begin
    return "hello world!"
    end;
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f()
returns varchar(12) as $$
  begin
    return "hello world!"
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f(integer i)
returns varchar(12) as $$
  begin
    return "hello world!"
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f(i integer)
returns varchar(12) as $$
  begin
    return "hello world!"
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f(i integer)
returns varchar(12) as $$
  begin
    return "hello world!";
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f(i integer)
returns varchar(12) as $$
  begin
    return 'hello world!';
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
select f(1) as answer;
;-- -. . -..- - / . -. - .-. -.--
/*ex 1*/
create or replace function f()
returns varchar(13) as $$
  begin
    return 'hello, world!';
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
select f() as answer;
;-- -. . -..- - / . -. - .-. -.--
create or replace function rev(s string)
returns string as $$
  begin
    return reverse(s);
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
/*ex 2*/
create or replace function rev(s text)
returns text as $$
  begin
    return reverse(s);
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
select rev('hello') as answer;
;-- -. . -..- - / . -. - .-. -.--
select rev('hiiii moom') as answer;
;-- -. . -..- - / . -. - .-. -.--
select rev('apple pineapple') as answer;
;-- -. . -..- - / . -. - .-. -.--
/*ex 4*/
create or replace function add(i integer, a date)
returns date as $$
  begin 
    return a + i;
  end;
  $$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
select add(3, '2019-09-19') as answer;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by name) as "rank"
from salary
where rank == 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary
where dense_rank() over (partition by salary_amt) == 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary
where rank = 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select name from (
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary)
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank from (
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (partition by salary_amt) as "rank"
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, dense_rank() over (partition by salary_amt) as "rank"
from salary;
;-- -. . -..- - / . -. - .-. -.--
select name, dense_rank() over (order by salary_amt) as "rank"
from salary;
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank from (
select distinct name, dense_rank() over (order by salary_amt) as "rank"
from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct name, dense_rank() over (order by salary_amt) as "rank"
from salary;
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank
from (
       select distinct name, row_number() over (order by salary_amt, dt, name) as "rank"
       from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank
from (
       select name, dense_rank() over (order by salary_amt) as "rank"
       from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select name, row_number() over (order by salary_amt, dt, name) as "rank"
       from salary) as t;
;-- -. . -..- - / . -. - .-. -.--
(
       select name, row_number() over (order by salary_amt, dt, name) as "rank"
       from salary);
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank
from (
       select name, row_number() over (order by dt, salary_amt, name) as "rank"
       from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select name, salary_amt, row_number() over (order by dt, salary_amt, name) as "rank"
       from salary;
;-- -. . -..- - / . -. - .-. -.--
select t.name, t.rank
from (
       select name, row_number() over (order by salary_amt, dt, name) as "rank"
       from salary) as t
where "rank" = 1;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (min(salary_amt)) name
from salary
where salary_amt in (
  select min(salary_amt)
  from salary
  group by name
)
group by name;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (salary_amt) name, salary_amt
  from salary;
;-- -. . -..- - / . -. - .-. -.--
select *
from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (order by salary_amt, name) name, salary_amt
  from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (salary_amt, name) name, salary_amt
  from salary;
;-- -. . -..- - / . -. - .-. -.--
select distinct on (salary_amt, dt, name) name, salary_amt
  from salary;
;-- -. . -..- - / . -. - .-. -.--
/*ex 3*/
create or replace function fac(i integer)
  returns integer as
$$
begin
  return i * fac(i - 1);
end;
$$ language plpgsql;
;-- -. . -..- - / . -. - .-. -.--
select fac(5) as answer;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE foo (c1 integer, c2 text);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO foo
SELECT
i
, md5(random()::text)
FROM
generate_series(1, 1000000) AS i;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO foo
SELECT
i
, md5(random()::text)
FROM
generate_series(1, 10) AS i;
;-- -. . -..- - / . -. - .-. -.--
analyze foo;
;-- -. . -..- - / . -. - .-. -.--
explain select * from foo;
;-- -. . -..- - / . -. - .-. -.--
explain(analyze) select * from foo;
;-- -. . -..- - / . -. - .-. -.--
explain(analyse) select * from foo where c1 > 500;
;-- -. . -..- - / . -. - .-. -.--
select count(*)
from foo;
;-- -. . -..- - / . -. - .-. -.--
create index on foo(c1);
;-- -. . -..- - / . -. - .-. -.--
select *
from foo;
;-- -. . -..- - / . -. - .-. -.--
select name, salary_type, sum(salary_amt)
from salary
WHERE EXISTS(SELECT s.name FROM salary s WHERE s.salary_type = 2 AND s.name = name)
group by name, salary_type;
;-- -. . -..- - / . -. - .-. -.--
select s1.name, s1.salary_type, sum(s1.salary_amt)
from salary s1
WHERE EXISTS(SELECT s.name FROM salary s WHERE s.salary_type = 2 AND s.name = s1.name)
group by s1.name, s1.salary_type;
;-- -. . -..- - / . -. - .-. -.--
select s1.name, s1.salary_type, sum(s1.salary_amt)
from salary s1
WHERE EXISTS(SELECT 1 FROM salary s WHERE s.salary_type = 2 AND s.name = s1.name)
group by s1.name, s1.salary_type;