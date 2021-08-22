CREATE TABLE Item_registry (
  item_code  VARCHAR(100) NOT NULL, 
  Item_name   VARCHAR(100),
  PRIMARY KEY (item_code)
);

INSERT INTO
    Item_registry(item_code, Item_name) 
VALUES 
('ap001', 'Amul Paneer'),
('mp002', 'Mother Dairy  Paneer'),
('gj002', 'GopalJee Paneer');



CREATE TABLE purchase_log (
  purchase_id VARCHAR(100) PRIMARY KEY,
  item_code VARCHAR(100), 
  Qty  int,
  Amount numeric(8,2),
  FOREIGN KEY(item_code) REFERENCES Item_registry(item_code)
);

INSERT INTO 
    purchase_log(purchase_id, item_code,Qty,Amount) 
VALUES 
    ('002', 'mp002','2','20.00'),
    ('001', 'ap001','1','10.00'),
    ('003', 'gj002','3','30.00');



UPDATE Item_registry
SET item_name = 'LondondairyMilk' 
WHERE item_code = 'ap001';


SELECT purchase_id, item_code, Qty,Amount
FROM purchase_log
WHERE purchase_id='002';


SELECT purchase_log.Qty*purchase_log.Amount as TOTALAMOUNT FROM purchase_log;

select * from Item_registry;