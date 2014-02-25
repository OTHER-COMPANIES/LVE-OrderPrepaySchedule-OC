-- 30/08/2013 10:12:08 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET TableName='LVE_OrderPrePaySchedule',Updated=TO_TIMESTAMP('2013-08-30 10:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000207
;

-- 30/08/2013 10:13:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LVE_OrderPrePaySchedule_ID',Updated=TO_TIMESTAMP('2013-08-30 10:13:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000218
;

-- 30/08/2013 10:13:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LVE_OrderPrePaySchedule_ID', Name='Order Pre-Payment Schedule', Description=NULL, Help=NULL WHERE AD_Element_ID=3000218
;

-- 30/08/2013 10:13:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LVE_OrderPrePaySchedule_ID', Name='Order Pre-Payment Schedule', Description=NULL, Help=NULL, AD_Element_ID=3000218 WHERE UPPER(ColumnName)='LVE_ORDERPREPAYSCHEDULE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/08/2013 10:13:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LVE_OrderPrePaySchedule_ID', Name='Order Pre-Payment Schedule', Description=NULL, Help=NULL WHERE AD_Element_ID=3000218 AND IsCentrallyMaintained='Y'
;

-- 30/08/2013 10:20:06 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Value='LVE_OrderPaySchedule Validate',Updated=TO_TIMESTAMP('2013-08-30 10:20:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000200
;

-- 30/08/2013 10:20:14 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Classname='org.spin.process.OrderPrePayScheduleValidate',Updated=TO_TIMESTAMP('2013-08-30 10:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000200
;

-- 30/08/2013 10:21:26 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeBar (AD_Tree_ID,AD_User_ID,Node_ID, AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy)VALUES (10,100,53012,0,0,'Y',CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100)
;

-- 30/08/2013 10:21:42 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET ModelValidationClass='org.spin.model.PrePayValidator',Updated=TO_TIMESTAMP('2013-08-30 10:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=3000201
;

