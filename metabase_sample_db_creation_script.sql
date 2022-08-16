-- DATABASE NAME........: metabase_sample_db_creation_scripts.sql
-- Compatible with RDBMS: PostgreSQL & MySQL


DROP TABLE IF EXISTS ORDERS, REVIEWS, PRODUCTS, PEOPLE;

CREATE TABLE PRODUCTS (
  ID INT8 NOT NULL,
  EAN VARCHAR(13) NULL,
  TITLE VARCHAR(28) NULL,
  CATEGORY VARCHAR(9) NULL,
  VENDOR VARCHAR(35) NULL,
  PRICE NUMERIC(16, 2) NULL,
  RATING NUMERIC(16, 1) NULL,
  CREATED_ON DATE NULL,
  CONSTRAINT PK_PRODUCTS PRIMARY KEY(ID)
);

CREATE TABLE PEOPLE (
  ID INT8 NOT NULL,
  ADDRESS VARCHAR(50) NULL,
  EMAIL VARCHAR(40) NULL,
  SECRET_PASSWORD VARCHAR(36) NULL,
  FULL_NAME VARCHAR(100) NULL,
  CITY VARCHAR(45) NULL,
  LONGITUDE NUMERIC(16, 1) NULL,
  STATE_ABBREV VARCHAR(2) NULL,
  DATA_SOURCE VARCHAR(9) NULL,
  BIRTH_DATE DATE NULL,
  ZIP VARCHAR(9) NULL,
  LATITUDE NUMERIC(16, 1) NULL,
  CREATED_ON DATE NULL,
  CONSTRAINT PK_PEOPLE PRIMARY KEY(ID)
);

CREATE TABLE REVIEWS (
  ID INT8 NOT NULL,
  PRODUCT_ID INT8 NULL,
  REVIEWER VARCHAR(22) NULL,
  RATING INT8 NULL,
  BODY VARCHAR(325) NULL,
  CREATED_ON DATE NULL,
  CONSTRAINT PK_REVIEWS PRIMARY KEY(ID),
  CONSTRAINT FK_REVIEWS_PRODUCTS FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(ID)
);

CREATE TABLE ORDERS (
  ID INT8 NOT NULL,
  USER_ID INT8 NULL,
  PRODUCT_ID INT8 NULL,
  SUBTOTAL NUMERIC(16, 2) NULL,
  TAX NUMERIC(16, 2) NULL,
  TOTAL NUMERIC(16, 2) NULL,
  DISCOUNT NUMERIC(16, 2) NULL,
  CREATED_DATE DATE NULL,
  QUANTITY INT8 NULL,
  CONSTRAINT PK_ORDERS PRIMARY KEY(ID),
  CONSTRAINT FK_ORDERS_PEOPLE FOREIGN KEY(USER_ID) REFERENCES PEOPLE(ID),
  CONSTRAINT FK_ORDERS_PRODUCTS FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(ID)
);
