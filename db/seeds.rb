
NetSuiteAccount.create(account_id: 1, name: "NetSuite Name", parent_name: "NetSuite Parent")

purchase_order = PurchaseOrder.create!(purchase_order_date: Date.today, number: "1234", sale_number: "2345", net_suite_account_id: 1, region_id: 1)
purchase_order.notes.build(description: 'purchase order note')

License.create(purchase_order_id: 1, license_type_id: 1, license_status_id: 1, quantity: 20, start_date: Date.today, end_date: Date.today)

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

LicenseStatus.create!(name: "New")
LicenseStatus.create!(name: "Pending")
LicenseStatus.create!(name: "Not Renewing")

ProductVersion.create!(name: "Odyssey")
ProductVersion.create!(name: "Pisces")
ProductVersion.create!(name: "Aquarius")
ProductVersion.create!(name: "Whitney")

#EngineType.create(name: "District")
#EngineType.create(name: "School")
