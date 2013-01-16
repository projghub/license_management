FactoryGirl.define do
  factory :funding_source do
    name "Title 1"
  end

  factory :license_type do
    name :initial
  end

  factory :license_status do
    name :active
  end

  factory :license do
    purchase_order_id { FactoryGirl.create(:purchase_order) }
    quantity 1
    start_date Date.today
    end_date Date.today
    license_type_id 1
    license_status_id 1
    net_suite_account_id { FactoryGirl.create(:net_suite_account) }
  end

  factory :license_history do
    license_id { FactoryGirl.create(:license) }
    event_id 1
    previous_license_type_id 1
    current_license_type_id 2
    previous_license_status_id 1
    current_license_status_id 2
    reason_id 1
    created_by "Billy Bob"
  end

  factory :net_suite_account do
    sequence(:account_id) { |n| "#{n}" }
    sequence(:name) { |n| "Account Name #{n}" }
    sequence(:parent_name) { |n| "Parent Name #{n}" }
  end

  factory :purchase_order do
    funding_source_id 1
    number "123"
    sale_number 1
    invoice_number "12345"
    purchase_order_date Date.today
    apm "Billy Bob APM"
    region_id 1
    sts "Billy Bob STS"
    quantity 100
    deleted false
    created_by "Billy Bob"
    modified_by "Willy Wob"
    net_suite_account_id { FactoryGirl.create(:net_suite_account) }
  end

  factory :product_version do
    name :whitney
  end

  factory :region do
    name :mountain
  end
end
