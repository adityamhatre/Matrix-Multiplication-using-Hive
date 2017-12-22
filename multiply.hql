drop table M;
drop table N;

create table M(
	i int,
	j int,
	v double)
row format delimited fields terminated by ',' stored as textfile;

create table N(
	i int,
	j int,
	v double)
row format delimited fields terminated by ',' stored as textfile;

load data local inpath '${hiveconf:M}' overwrite into table M;
load data local inpath '${hiveconf:N}' overwrite into table N;


select count(*), avg(valueAtIJ) from (
	select sum(m.v*n.v) valueAtIJ
	from M as m
	join N as n
	on m.j=n.i
	group by m.i,n.j) as resultQuery;


