drop sequence if exists ics_results_id_seq cascade;
create sequence ics_results_id_seq;
drop table if exists ics_results cascade;
create table ics_results(
  id integer not null default nextval('ics_results_id_seq'),
  question varchar(30),
  num1 int,
  num2 int,
  num3 int,
  num4 int,
  num5 int,
  primary key (id)
);

insert into results (question, num1, num2, num3, num4, num5) 
  values ('one',1,4,1,1,2);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('two',5,1,1,4,0);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('three',5,1,1,2,5);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('four',5,0,5,2,2);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('five',4,0,5,3,2);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('six',4,1,6,3,1);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('seven',5,1,1,5,1);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('eight',5,1,1,5,1);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('nine',1,1,6,5,1);
insert into results (question, num1, num2, num3, num4, num5) 
  values ('ten',1,2,4,5,1);

