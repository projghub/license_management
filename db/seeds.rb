Agreement.create(purchase_order_id: 1, purchase_order_item_id: 1, notes: 'This is the agreement')

Lookup.create(lookup_type: "lookup", name: "Name 1", value: "value 1", priority: 1)

License.create(agreement_id: 1, license_type_id: 1, status_id: 1)

LicenseTypeLookup.create(item_id: 1, license_type_id: 1)

NetSuiteAccount.create(account_id: 1, name: "NetSuite Name", parent_name: "NetSuite Parent")

PurchaseOrder.create(purchase_order_date: Date.new, number: "1234", sale_number: "2345", notes: "purchase order notes", net_suite_account_id: 1)
PurchaseOrderItem.create(purchase_order_id: 1, number: "1234", amount: 10, quantity: 2, allocated_quantity: 1, deleted: false) 

Opportunity.create(agreement_id: 1, created_date: Date.new)

Sale.create(number: 1234, deleted: false)

Region.create(name: "Central")
Region.create(name: "Mountain")
Region.create(name: "North Eastern")
Region.create(name: "North Western")
Region.create(name: "River")
Region.create(name: "South Eastern")
Region.create(name: "Southern California")
Region.create(name: "Texas")

LicenseType.create(name: "Initial")
LicenseType.create(name: "Renewal")
LicenseType.create(name: "Free")
LicenseType.create(name: "Perpetual")
LicenseType.create(name: "Converted To Perpetual")
LicenseType.create(name: "Pilot")
LicenseType.create(name: "Spanish Initial")
LicenseType.create(name: "Spanish Renewal")
LicenseType.create(name: "Spanish Free")
LicenseType.create(name: "Spanish Perpetual")
LicenseType.create(name: "Spanish Converted To Perpetual")
LicenseType.create(name: "Spanish Pilot")
LicenseType.create(name: "SES")

FundingSource.create(name: "Pre K")
FundingSource.create(name: "Special Ed")
FundingSource.create(name: "Title 1")
FundingSource.create(name: "Title 3")
FundingSource.create(name: "Parent Center")

AgreementStatus.create(name: "New")
AgreementStatus.create(name: "Pending")
AgreementStatus.create(name: "Not Renewing")
