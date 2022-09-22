CREATE TABLE "todos" (
  "id" int PRIMARY KEY,
  "todo_date" date,
  "title" varchar NOT NULL,
  "content" varchar NOT NULL,
  "is_complete" boolean DEFAULT false
);
insert into todos(
id,
todo_date,
title,
content,
is_complete
)values(
1,
'2022/09/19', 
'Aprendizaje', 
'Aprender lo necesario para desarrollar un Crud de forma adecuada',
false
),(
2,
'2022/09/20', 
'Ejercicio', 
'Ir al gimnasio a las 10 am',
true
),(
3,
'2022/09/21', 
'CV', 
'presentar cv para conseguir trabajo',
true
)

select * from todos 

select * from todos where is_complete = true