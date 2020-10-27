module CommonConcern
  extend ActiveSupport::Concern

  def admin_role
    @admin_role ||= Role.find_by(name: "admin")
  end

  def customer_role
    @customer_role ||= Role.find_by(name: "customer")
  end
end
