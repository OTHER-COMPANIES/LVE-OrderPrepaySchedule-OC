-- Apr 10, 2013 10:32:53 PM VET
-- Order Prepay Schedule
CREATE TABLE CUST_OrderPrePaySchedule (AD_Client_ID DECIMAL(10) NOT NULL, AD_Org_ID DECIMAL(10) NOT NULL, C_Order_ID DECIMAL(10) NOT NULL, C_PaySchedule_ID DECIMAL(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy DECIMAL(10) NOT NULL, CUST_OrderPrePaySchedule_ID DECIMAL(10) NOT NULL, DiscountAmt DECIMAL(22, 10) NOT NULL, DiscountDate DATE NOT NULL, DueAmt DECIMAL(22, 10) NOT NULL, DueDate DATE NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy DECIMAL(10) NOT NULL, CONSTRAINT CUST_OrderPrePaySchedule_Key PRIMARY KEY (CUST_OrderPrePaySchedule_ID)) ENGINE=InnoDB
;

