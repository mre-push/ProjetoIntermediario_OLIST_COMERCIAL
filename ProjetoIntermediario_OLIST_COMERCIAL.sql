/*
SELECT TOP 10 * FROM [dbo].[olist_custo_dataset]

CREATE TABLE TB_ACT_olist_custo_dataset
(
CUSTOMER_ID NVARCHAR(150),
CUSTOMER_UNIQUE_ID NVARCHAR(150),
CUSTOMER_ZIP_CODE_PREFIX NVARCHAR(15),
CUSTOMER_CITY NVARCHAR(100),
CUSTOMER_STATE CHAR(2)
)

SELECT * FROM TB_ACT_olist_custo_dataset

INSERT INTO TB_ACT_olist_custo_dataset
SELECT * FROM [dbo].[olist_custo_dataset]

SELECT * FROM TB_ACT_olist_custo_dataset

SELECT TOP 10 * FROM [dbo].[olist_geolocation_dataset]

CREATE TABLE TB_ACT_olist_geolocation_dataset
(
GEOLOCATION_ZIP_CODE_PREFIX NVARCHAR(15),
GEOLOCATION_LAT NVARCHAR(100),
GEOLOCATION_LNG NVARCHAR(100),
GEOLOCATION_CITY NVARCHAR(100),
GEOLOCATION_STATE CHAR(2)
)

INSERT INTO TB_ACT_olist_geolocation_dataset
SELECT * FROM [dbo].[olist_geolocation_dataset]

SELECT * FROM TB_ACT_olist_geolocation_dataset

SELECT TOP 10 * FROM [dbo].[olist_order_items_dataset]


CREATE TABLE TB_ACT_olist_order_items_dataset
(
ORDER_ID NVARCHAR(100),
ORDER_ITEM_ID NVARCHAR(15),
PRODUCT_ID NVARCHAR(100),
SELLER_ID NVARCHAR(100),
SHIPPING_LIMIT_DATE NVARCHAR(15),
PRICE INT,
FREIGHT_VALUE INT
)

INSERT INTO TB_ACT_olist_order_items_dataset
SELECT TOP 10 * FROM [dbo].[olist_order_items_dataset]

SELECT * FROM TB_ACT_olist_order_items_dataset

SELECT TOP 10 * FROM [dbo].[olist_order_payments_dataset]


CREATE TABLE TB_ACT_olist_order_payments_dataset
(
ORDER_ID NVARCHAR(100),
PAYMENT_SEQUENTIAL INT,
PAYMENT_TYPE NVARCHAR(100),
PAYMENT_INSTALLMENTS NVARCHAR(100),
PAYMENT_VALUE NVARCHAR(100),
)

INSERT INTO TB_ACT_olist_order_payments_dataset
SELECT TOP 10 * FROM [dbo].[olist_order_payments_dataset]

SELECT TOP 10 * FROM [dbo].[olist_order_reviews_dataset]

CREATE TABLE TB_ACT_olist_order_reviews_dataset
(
ORDER_ID NVARCHAR(100),
ORDER_SEQUENTIAL NVARCHAR(100),
COLUNA2 NVARCHAR(100),
COLUNA3 NVARCHAR(100),
COMENTARIO NVARCHAR(100),
DATAINGRESSO NVARCHAR(100),
DATARECISSAO NVARCHAR(100)
)

ALTER TABLE TB_ACT_olist_order_reviews_dataset
ALTER COLUMN COMENTARIO NVARCHAR(MAX);

INSERT INTO TB_ACT_olist_order_reviews_dataset
SELECT TOP 10 * FROM [dbo].[olist_order_reviews_dataset]

SELECT * FROM TB_ACT_olist_order_reviews_dataset

SELECT TOP 10 * FROM [dbo].[olist_orders_dataset]

CREATE TABLE TB_ACT_olist_orders_dataset
(
ORDER_ID NVARCHAR(1000),
CUSTOMER_ID NVARCHAR(1000),
ORDER_STATUS NVARCHAR(1000),
ORDER_PURCHASE_TIMESTAMP NVARCHAR(1000),
ORDER_APPROVED_AT NVARCHAR(100),
ORDER_DELIVERED_CARRIER_DATE NVARCHAR(1000),
ORDER_DELIVERED_CUSTOMER_DATE NVARCHAR(1000),
ORDER_ESTIMATED_DELIVERY_DATE NVARCHAR(1000)
)

INSERT INTO TB_ACT_olist_orders_dataset
SELECT TOP 10 * FROM [dbo].[olist_orders_dataset]

SELECT * FROM TB_ACT_olist_orders_dataset

SELECT TOP 10 * FROM [dbo].[olist_products_dataset]

CREATE TABLE TB_ACT_olist_products_dataset
(
PRODUCT_ID NVARCHAR(1000),
PRODUCT_CATEGORY_NAME_ID NVARCHAR(1000),
PRODUCT_NAME_LENGHT NVARCHAR(1000),
PRODUCT_DESCRIPTION_LENGHT NVARCHAR(1000),
PRODUCT_PHOTOS_QTY NVARCHAR(1000),
PRODUCT_WEIGHT_G NVARCHAR(1000),
PRODUCT_LENGTH_CM NVARCHAR(1000),
PRODUCT_HEIGHT_CM NVARCHAR(1000),
PRODUCT_WIDTH_CM NVARCHAR(1000)

)

INSERT INTO TB_ACT_olist_products_dataset
SELECT TOP 10 * FROM [dbo].[olist_products_dataset]

SELECT * FROM TB_ACT_olist_products_dataset

SELECT * FROM TB_ACT_olist_products_dataset

SELECT TOP 10 * FROM [dbo].[olist_sellers_dataset]

CREATE TABLE TB_ACT_olist_sellers_dataset
(
SELLER_ID NVARCHAR(150),
SELLER_ZIP_CODE_PREFIX NVARCHAR(150),
SELLER_CITY NVARCHAR(150),
SELLER_STATE NVARCHAR(100),
)

SELECT * FROM TB_ACT_olist_sellers_dataset

INSERT INTO TB_ACT_olist_sellers_dataset
SELECT * FROM [dbo].[olist_sellers_dataset]

SELECT * FROM TB_ACT_olist_sellers_dataset

SELECT * FROM [dbo].[olist_custo_dataset]



CREATE VIEW VW_PEDIDOS_POR_CLIENTE
AS

SELECT O * C.CUSTOMER_CITY
FROM [dbo].[TB_ACT_olist_order_items_dataset] AS O
INNER JOIN [TB_ACT_olist_custo_dataset] AS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID

SELECT * FROM VW_PEDIDOS_POR_CLIENTE

*/