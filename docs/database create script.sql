CREATE TABLE "manager" (
  "full_name" text,
  "manager_id" int PRIMARY KEY
);

CREATE TABLE "product" (
  "product_id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "client" (
  "full_name" text,
  "email" varchar PRIMARY KEY
);

CREATE TABLE "order" (
  "number" int,
  "status" text
);

CREATE TABLE "contract" (
  "date" datetime,
  "number" int PRIMARY KEY
);

CREATE TABLE "seller" (
  "full_name" text,
  "seller_id" int
);

CREATE TABLE "position" (
  "quantity" int,
  "contract_number" int,
  "product_id" int
);

ALTER TABLE "contract" ADD FOREIGN KEY ("number") REFERENCES "manager" ("manager_id");

CREATE TABLE "seller_contract" (
  "seller_seller_id" int,
  "contract_number" int,
  PRIMARY KEY ("seller_seller_id", "contract_number")
);

ALTER TABLE "seller_contract" ADD FOREIGN KEY ("seller_seller_id") REFERENCES "seller" ("seller_id");

ALTER TABLE "seller_contract" ADD FOREIGN KEY ("contract_number") REFERENCES "contract" ("number");


ALTER TABLE "contract" ADD FOREIGN KEY ("number") REFERENCES "product" ("product_id");

ALTER TABLE "order" ADD FOREIGN KEY ("number") REFERENCES "product" ("product_id");

ALTER TABLE "order" ADD FOREIGN KEY ("number") REFERENCES "client" ("full_name");

ALTER TABLE "order" ADD FOREIGN KEY ("number") REFERENCES "manager" ("manager_id");

ALTER TABLE "product" ADD FOREIGN KEY ("product_id") REFERENCES "position" ("product_id");

ALTER TABLE "contract" ADD FOREIGN KEY ("number") REFERENCES "position" ("contract_number");
