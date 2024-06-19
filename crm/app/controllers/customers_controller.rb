class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  def alphabetized
    @customers = Customer.order(:FullName)
  end
  def missing_email
    @customers = Customer.where(EmailAddress: "")
  end
end
