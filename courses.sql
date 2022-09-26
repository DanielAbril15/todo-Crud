CREATE TABLE "users" (
  "id" uuid UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "acive" boolean DEFAULT true,
  "role" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid UNIQUE,
  "title" varchar NOT NULL,
  "description" varchar,
  "level_id" int NOT NULL,
  "teacher_id" uuid,
  "categorie_id" uuid NOT NULL,
  "video_id" uuid UNIQUE NOT NULL
);

CREATE TABLE "courses_video" (
  "id" uuid UNIQUE,
  "title" varchar,
  "url" varchar UNIQUE NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid UNIQUE,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" int UNIQUE,
  "name" varchar NOT NULL
);

CREATE TABLE "selected_courses" (
  "id" int UNIQUE,
  "user_id" uuid,
  "course_id" uuid
);

CREATE TABLE "level" (
  "id" int UNIQUE,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("categorie_id") REFERENCES "categories" ("id");

ALTER TABLE "selected_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "selected_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("video_id") REFERENCES "courses_video" ("id");

insert into roles (id,name)
values (1,'admin'),(2,'teacher'),(3,'student');

insert into users (id, name, email,password,role)
values(
'9ed1886b-33d7-41fa-8ead-4a1af4496002',
'Daniel',
'daniel@gmail.com',
'root',
1),(
'b6dac834-dc45-43ed-bc69-62d5e9cd81ac',
'Sahid',
'sahid@gmail.com',
'root123',
2);
insert into users (id, name, email,password,age,role)
values(
'c3757268-5da0-4f78-92f2-26a556ed5f1f',
'Anni',
'anni@gmail.com',
'123root',
20,
3),(
'608a70c3-e95f-49b4-a82e-ee96b5229040',
'Eduardo',
'eduardo@gmail.com',
'123root123',
29,
3);

insert into categories (id,name)
values ('1de1cd4a-6b61-4c1d-947c-84762c4dd0c7','Javascript'),
('53b09d49-b237-46e6-b583-6bfe9091a2cb','Node.js'),
('97ad3ad5-4b1b-4773-9b4a-b8baf5b899f3','React.js');

insert into level (id,name)
values (1,'begginer'),(2,'mid level'),(3,'expert');

insert into courses_video (id,title,url)
values (
'd514c543-57fd-4f9b-8e7b-0bdde274b783',
'introduccion a bases de datos', 
'https://www.youtube.com/watch?v=uUdKAYl-F7g&t=919s'
),(
'66fd00b4-8173-4a15-97ad-0d0a6643c7c7',
'Bases de datos avanzadas',
'https://www.youtube.com/watch?v=3oCPir1KU-Q');

insert into courses (id, title, description, level_id, teacher_id, categorie_id, video_id)
values(
'64cbd5f1-a547-44a5-917a-4515dea4a13c',
'Introduccion a Bases de datos',
'En este curso encontraras todo lo necesario para crear tu primera base de datos',
 1,
'b6dac834-dc45-43ed-bc69-62d5e9cd81ac',
'53b09d49-b237-46e6-b583-6bfe9091a2cb',
'd514c543-57fd-4f9b-8e7b-0bdde274b783'
),(
'ac9beb2b-2ff2-47ad-804c-c0f174bf3abf',
'Bases de datos avanzadas',
'Curso de bases de datos para expertos',
3,
'b6dac834-dc45-43ed-bc69-62d5e9cd81ac',
'53b09d49-b237-46e6-b583-6bfe9091a2cb',
'66fd00b4-8173-4a15-97ad-0d0a6643c7c7'
);

insert into selected_courses (id, user_id, course_id)
values(
1,
'c3757268-5da0-4f78-92f2-26a556ed5f1f',
'64cbd5f1-a547-44a5-917a-4515dea4a13c'
),(
2,
'c3757268-5da0-4f78-92f2-26a556ed5f1f',
'ac9beb2b-2ff2-47ad-804c-c0f174bf3abf'
),(
3,
'608a70c3-e95f-49b4-a82e-ee96b5229040',
'64cbd5f1-a547-44a5-917a-4515dea4a13c'
);

