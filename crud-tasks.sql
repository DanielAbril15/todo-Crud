CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "is_active" bool DEFAULT true
);

CREATE TABLE "todos" (
  "id" int PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "todo_date" date,
  "title" varchar NOT NULL,
  "content" varchar NOT NULL,
  "is_complete" boolean DEFAULT false
);

ALTER TABLE "todos" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
