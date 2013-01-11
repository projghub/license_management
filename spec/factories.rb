FactoryGirl.define do
  factory :agreement, class: Agreement do
    purchase_order_id { FactoryGirl.create(:purchase_order) }
    purchase_order_item_id { FactoryGirl.create(:purchase_order_item) }
    purchase_order_item_type_id { FactoryGirl.create(:purchase_order_item_type) }
    sequence(:account_id) { |n| "#{n}" }
    net_suite_account_id { FactoryGirl.create(:net_suite_account) }
  end

  factory :license, class: License do
    agreement_id { FactoryGirl.create(:agreement) }
  end

  factory :license_history, class: LicenseHistory do
    agreement_id { FactoryGirl.create(:agreement) }
  end

  factory :net_suite_account, class: Agreement do
    sequence(:account_id) { |n| "#{n}" }
    sequence(:name) { |n| "Account Name #{n}" }
    sequence(:parent_name) { |n| "Parent Name #{n}" }
  end

  factory :puchase_order, class: Agreement do
  end

  factory :puchase_order_item, class: Agreement do
  end

  factory :puchase_order_item_type, class: Agreement do
  end
end
