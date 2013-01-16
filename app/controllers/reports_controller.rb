class ReportsController < ApplicationController
  def thirty_sixty_ninety 
    @start = Time.now.to_date
    @end = @start + 3.months

    @licenses = License.select('SUM(licenses.quantity) AS count_all, STRFTIME("%Y-%m", licenses.end_date) AS date_expiring')
      .joins('INNER JOIN purchase_orders ON licenses.purchase_order_id = purchase_orders.id')
      .where('licenses.end_date BETWEEN ? AND ?', @start, @end)

    @licenses =  @licenses.group('STRFTIME("%Y-%m", licenses.end_date)') if Rails.env.development?
    @licenses =  @licenses.group("DATE_TRUNC('month', licenses.end_date)") if Rails.env.production?

    @categories = Array.new
    @licenses_total = Array.new

    months = months_between(@start, @end)

    months.each do |month|
      @categories << month

      licenses_count = @licenses.find { |v| v.date_expiring == month }
      @licenses_total << (licenses_count.present? ? licenses_count.count_all : 0)
    end
  end

  def month_expire_by_type
    now = Time.now
    @month = Date.strptime(params[:month], "%Y-%m") if params[:month].present?
    @month ||= now.beginning_of_month.to_date

    @licenses = License.select('SUM(licenses.quantity) AS count_all, license_types.name')
    .joins('INNER JOIN license_types ON licenses.license_type_id = license_types.id')
    .where('STRFTIME("%Y-%m", licenses.end_date) = ?', @month.strftime('%Y-%m'))
    .group('license_types.name')

    license_types = LicenseType.all

    @categories = Array.new
    @licenses_total = Array.new

    license_types.each do |license_type|
      @categories << license_type.name

      licenses_count = @licenses.find { |l| l.name == license_type.name }
      @licenses_total << (licenses_count.present? ? licenses_count.count_all : 0)
    end
  end

  def license_type
    @licenses = License.select('SUM(licenses.quantity) AS count_all, license_types.name')
    .joins('INNER JOIN license_types ON licenses.license_type_id = license_types.id')
    .group('license_types.name')

    license_types = LicenseType.all
    license_total = License.sum('quantity')

    @categories = Array.new
    @licenses_total = Array.new
    @license_data = Array.new

    license_types.each do |license_type|
      @categories << license_type.name

      licenses_count = @licenses.find { |l| l.name == license_type.name }
      license_count = (licenses_count.present? ? licenses_count.count_all : 0)
      @licenses_total << license_count
      license_percent = get_percentage(license_count.to_f, license_total.to_f)

      @license_data << "'" + license_type.name + "', " + license_percent
    end 

    @data = @license_data.collect{ |l| "[#{l}]" }.join(",")
  end

  def funding_source
    @purchase_orders = PurchaseOrder.select('SUM(purchase_orders.quantity) AS count_all, funding_sources.name')
    .joins('INNER JOIN funding_sources ON purchase_orders.funding_source_id = funding_sources.id')
    .group('funding_sources.name')

    funding_source_types = FundingSource.all
    purchase_order_total = PurchaseOrder.sum('quantity')

    @categories = Array.new
    @purchase_orders_total = Array.new
    @purchase_order_data = Array.new

    funding_source_types.each do |funding_source|
      @categories << funding_source.name

      purchase_orders_count = @purchase_orders.find { |po| po.name == funding_source.name }
      purchase_order_count = (purchase_orders_count.present? ? purchase_orders_count.count_all : 0)
      @purchase_orders_total << purchase_order_count
      purchase_order_percent = get_percentage(purchase_order_count.to_f, purchase_order_total.to_f)

      @purchase_order_data << "'" + funding_source.name + "', " + purchase_order_percent
    end 
    logger.info "PO DATA " + @purchase_order_data.inspect

    @data = @purchase_order_data.collect{ |l| "[#{l}]" }.join(",")
  end

  def get_percentage(count, total)
    return "0.00" if count == 0
    sprintf("%.2f", ((count.to_f / total.to_f) * 100))
  end

  def months_between(start_month, end_month)
    months = []
    ptr = start_month
    while ptr <= end_month do
      months << "#{ptr.year}-#{sprintf('%02d', ptr.month)}"
      ptr = ptr >> 1
    end
    months
  end
end
