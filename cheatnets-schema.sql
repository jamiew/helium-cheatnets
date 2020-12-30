-- temporarily erase existing data
-- in the future this should be non-destructive
DROP TABLE cheatnets;

CREATE TABLE IF NOT EXISTS "cheatnets" (
  "address" character varying not null
  ,"rating" integer default 0
  ,"created_at" timestamp(6) not null
);

CREATE UNIQUE INDEX IF NOT EXISTS "index_cheatnets_on_address" ON cheatnets (address);
