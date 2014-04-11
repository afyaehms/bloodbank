/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.bloodbank;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.openmrs.api.APIException;
import org.openmrs.module.bloodbank.model.BloodStock;
import org.openmrs.module.bloodbank.model.BloodStockReceipt;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 */
@Transactional
public interface BloodStockReceiptService {
	
	
	public BloodStockReceipt saveBloodStockreceipt(BloodStockReceipt bloodStockReceipt) throws APIException;
	
	public BloodStockReceipt getBloodStockReceiptFromId(int receiptId) throws APIException;

	public Collection<BloodStockReceipt> listAll();

	public Collection<BloodStockReceipt> searchBloodStockReceipt(
			String description, Date fromDate, Date toDate);
	
}
