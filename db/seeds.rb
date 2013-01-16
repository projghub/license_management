
NetSuiteAccount.create(account_id: 1, name: "NetSuite Name", parent_name: "NetSuite Parent")

100.times.with_index do |element, index|
  purchase_order = PurchaseOrder.create!(purchase_order_date: Date.today, number: index + 100, sale_number: index + 1000, net_suite_account_id: 1, region_id: 1, quantity: 100, funding_source_id: (index % 5) + 1)
  purchase_order.notes.build(description: 'purchase order note')
end

500.times.with_index do |element, index|
  License.create(purchase_order_id: (index % 100), license_type_id: (index % 10)+1, license_status_id: 1, quantity: rand(1..30), start_date: Date.today, end_date: rand(100.days).from_now)
end

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

LicenseStatus.create!(name: "Active")
LicenseStatus.create!(name: "Pending Renewal")
LicenseStatus.create!(name: "Not Renewing")

ProductVersion.create!(name: "Odyssey")
ProductVersion.create!(name: "Pisces")
ProductVersion.create!(name: "Aquarius")
ProductVersion.create!(name: "Whitney")

#EngineType.create(name: "District")
#EngineType.create(name: "School")
