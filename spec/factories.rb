FactoryGirl.define do
  factory :agreement do
    purchase_order_id { FactoryGirl.create(:purchase_order) }
    purchase_order_item_id { FactoryGirl.create(:purchase_order_item) }
    purchase_order_item_type_id { FactoryGirl.create(:purchase_order_item_type) }
    sequence(:account_id) { |n| "#{n}" }
    quantity 1
    sequence(:notes) { |n| "Agreement Notes #{n}" } 
    sequence(:exuberance_coordinator_id) { |n| "Exuberance Coordinator #{n}" } 
    start_date Date.new
    end_date Date.new
    funding_source 1
    status_id 1
    deleted false
    created_by "Billy Bob"
    modified_by "Willy Wob"
    net_suite_account_id { FactoryGirl.create(:net_suite_account) }
  end

  factory :license do
    agreement_id { FactoryGirl.create(:agreement) }
    license_type_id 1
    status_id 1
  end

  factory :license_type_lookup do
    item_id { FactoryGirl.create(:purchase_order_item) }
    license_type_id "1"
  end

  factory :license_history do
    license_id { FactoryGirl.create(:license) }
    event_id 1
    previous_agreement_id { FactoryGirl.create(:agreement) }
    current_agreement_id { FactoryGirl.create(:agreement) }
    previous_license_type_id 1
    current_license_type_id 2
    previous_license_status_id 1
    current_license_status_id 2
    reason_id 1
    sequence(:notes) { |n| "License History Notes #{n}" }
    created_by "Billy Bob"
  end

  factory :lookup do
    lookup_type
    sequence(:name) { |n| "Name #{n}" }
    sequence(:value) { |n| "#{n}" }
    sequence(:description) { |n| "Description #{n}" }
    sequence(:priority) { |n| "#{n}" }
  end

  trait :lookup_type do
    lookup_type "whatever"
  end
  
  factory :net_suite_account do
    sequence(:account_id) { |n| "#{n}" }
    sequence(:name) { |n| "Account Name #{n}" }
    sequence(:parent_name) { |n| "Parent Name #{n}" }
  end

  factory :opportunity do
    agreement_id { FactoryGirl.create(:agreement) }
    created_date Date.new
  end

  factory :purchase_order do
    sale_id 1
    account_id "1234"
    purchase_order_date Date.new
    number "123"
    amount 10.00
    discount 0.00
    tax 1.00
    invoice_number "12345"
    area_sales_manager_id "Billy Bob APM"
    region_id "1"
    field_technician_id "Billy Bob Field"
    sequence(:notes) { |n| "Purchase Order Notes #{n}" }
    deleted false
    created_by "Billy Bob"
    modified_by "Willy Wob"
    net_suite_account_id { FactoryGirl.create(:net_suite_account) }
  end

  factory :purchase_order_item do
    purchase_order_id { FactoryGirl.create(:purchase_order) }
    amount 10.00
    quantity 1
    allocated_quantity 1
    deleted false
    created_by "Billy Bob"
    modified_by "Willy Wob"
  end

  factory :purchase_order_item_lookup do
    purchase_order_id { FactoryGirl.create(:purchase_order) }
    purchase_order_item_type_id "1"
    fulfillment_type_id "1"
    sequence(:name) { |n| "Name #{n}" }
    sequence(:description) { |n| "Purchase Order Item Lookup Description #{n}" }
    standard true
    inactive false
  end

  factory :purchase_order_item_type do
    name "My type"
  end

  factory :sale do
    sequence(:number) { |n| "#{n}" }
    deleted false
    created_by "Billy Bob"
    modified_by "Willy Wob"
  end
end
