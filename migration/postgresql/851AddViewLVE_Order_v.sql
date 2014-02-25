CREATE OR REPLACE VIEW LVE_Order_v AS 
SELECT 
	o.AD_client_ID, o.AD_org_ID, o.AD_orgtrx_ID, o.AD_user_ID, 
	o.amountrefunded, o.amounttendered, o.bill_bpartner_ID, o.bill_location_ID, 
	o.bill_user_ID, o.c_activity_ID, o.c_bpartner_ID, o.c_bpartner_location_ID, 
	o.c_campaign_ID, o.c_cashline_ID, o.c_charge_ID, o.c_conversiontype_ID, 
	o.c_currency_ID, o.c_doctype_ID, o.c_doctypetarget_ID, o.chargeamt, 
	o.copyfrom, o.C_Order_ID, o.C_Ordersource_ID, o.c_payment_ID, 
	o.c_paymentterm_ID, o.c_pos_ID, o.c_project_ID, o.created, o.createdby, 
	o.dateacct, o.dateordered, o.dateprinted, o.datepromised, o.deliveryrule, 
	o.deliveryviarule, o.description, o.docaction, o.docstatus, o.documentno, 
	o.dropship_bpartner_ID, o.dropship_location_ID, o.dropship_user_ID, 
	o.freightamt, o.freightcostrule, 
	CASE
	WHEN o.ispayschedulevalid = 'N'::bpchar THEN o.grandtotal
	ELSE pps.dueamt
	END AS grandtotal, 
	o.invoicerule, o.isactive, o.isapproved, o.iscreditapproved, o.isdelivered, 
	o.isdiscountprinted, o.isdropship, o.isinvoiced, o.ispayschedulevalid, 
	o.isprinted, o.isselected, o.isselfservice, o.issotrx, o.istaxincluded, 
	o.istransferred, o.link_order_ID, o.m_freightcategory_ID, o.m_pricelist_ID, 
	o.m_shipper_ID, o.m_warehouse_ID, o.ordertype, o.pay_bpartner_ID, 
	o.pay_location_ID, o.paymentrule, o.poreference, o.posted, o.priorityrule, 
	o.processed, o.processedon, o.processing, o.promotioncode, o.ref_order_ID, 
	o.salesrep_ID, o.sendemail, o.totallines, o.updated, o.updatedby, 
	o.user1_ID, o.user2_ID, o.volume, o.weight, pps.LVE_OrderPrePaySchedule_ID, 
	pps.dueamt, pps.duedate
FROM C_Order o
LEFT JOIN LVE_OrderPrePaySchedule pps ON pps.C_Order_ID = o.C_Order_ID;
