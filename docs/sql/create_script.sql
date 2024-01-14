CREATE TABLE "manager" (
  "full_name" text,
  "manager_id" int PRIMARY KEY
);

CREATE TABLE "product" (
  "product_id" integer PRIMARY KEY,
  "name" text,
  "color" text,
  "price" int,
  "size" int,
  "quantity_in_total" int
);

CREATE TABLE "client" (
  "full_name" text,
  "email" varchar UNIQUE,
  "client_id" int PRIMARY KEY
);

CREATE TABLE "order" (
  "order_id" int PRIMARY KEY,
  "number" int,
  "status" text,
  "client_email" text,
  "manager_id" int
);

CREATE TABLE "contract" (
  "contract_id" int PRIMARY KEY,
  "date" timestamp,
  "number" int,
  "manager_id" int,
  "seller_id" int
);

CREATE TABLE "seller" (
  "full_name" text,
  "seller_id" int PRIMARY KEY
);

CREATE TABLE "position1" (
  "quantity" int,
  "contract_number" int,
  "product_id" int
);

CREATE TABLE "position2" (
  "quantity" int,
  "product_id" int,
  "order_number" int
);

ALTER TABLE "contract" ADD FOREIGN KEY ("manager_id") REFERENCES "manager" ("manager_id");

CREATE TABLE "seller_contract" (
  "seller_seller_id" int,
  "contract_seller_id" int,
  PRIMARY KEY ("seller_seller_id", "contract_seller_id")
);

ALTER TABLE "seller_contract" ADD FOREIGN KEY ("seller_seller_id") REFERENCES "seller" ("seller_id");

ALTER TABLE "seller_contract" ADD FOREIGN KEY ("contract_seller_id") REFERENCES "contract" ("seller_id");


ALTER TABLE "order" ADD FOREIGN KEY ("client_email") REFERENCES "client" ("email");

ALTER TABLE "order" ADD FOREIGN KEY ("manager_id") REFERENCES "manager" ("manager_id");

ALTER TABLE "product" ADD FOREIGN KEY ("product_id") REFERENCES "position1" ("product_id");

ALTER TABLE "contract" ADD FOREIGN KEY ("number") REFERENCES "position1" ("contract_number");

ALTER TABLE "product" ADD FOREIGN KEY ("product_id") REFERENCES "position2" ("product_id");

ALTER TABLE "order" ADD FOREIGN KEY ("number") REFERENCES "position2" ("order_number");
