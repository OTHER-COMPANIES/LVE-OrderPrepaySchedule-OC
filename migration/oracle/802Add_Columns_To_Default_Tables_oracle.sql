-- 30/08/2013 11:46:26 AM VET
-- Order Prepay
ALTER TABLE C_Order ADD IsPayScheduleValid CHAR(1) DEFAULT NULL  CHECK (IsPayScheduleValid IN ('Y','N'))
;

