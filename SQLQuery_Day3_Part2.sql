create table pets(no int,name varchar(20),owner varchar(20),species varchar(20), sex varchar(10))
drop table pets
insert into pets values(1,'claws','gwen','cat','m');
insert into pets values(2,'fang','benny','dog','m');
insert into pets values(3,'bowser','diane','dog','m');
insert into pets values(4,'chirpy','gwen','bird','f');
insert into pets values(5,'whistler','gwen','bird',null);
insert into pets values(6,'slim','benny','snake','m');
insert into pets values(7,'puffball','diane','hamster','f');
insert into pets values(8,'angel','benny','dog','f');
insert into pets values(9,'rober','gwen','cat','f');

select * from pets;
select * from pets where sex='m';
select owner,species from pets;
select * from pets where sex='m' and species='dog';
select * from pets where species in ('snake','bird');