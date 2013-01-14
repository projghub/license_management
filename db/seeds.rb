Agreement.create(purchase_order_id: 1, purchase_order_item_id: 1, notes: 'This is the agreement')

Lookup.create(lookup_type: "lookup", name: "Name 1", value: "value 1", priority: 1)

License.create(agreement_id: 1, license_type_id: 1, status_id: 1)

LicenseTypeLookup.create(item_id: 1, license_type_id: 1)

NetSuiteAccount.create(account_id: 1, name: "NetSuite Name", parent_name: "NetSuite Parent")

PurchaseOrder.create(account_id: 1, purchase_order_date: Date.new, number: "1234", amount: 10, notes: "purchase order notes", net_suite_account_id: 1)
PurchaseOrderItem.create(purchase_order_id: 1, number: "1234", amount: 10, quantity: 2, allocated_quantity: 1, deleted: false)

Opportunity.create(agreement_id: 1, created_date: Date.new)

Sale.create(number: 1234, deleted: false)
