class Account < ActiveRecord::Base
  accept_nested_attributes_for :users

  before_create :make_admin_user
  after_create :send_confirmation_email

  private
  def make_admin_user
    self.users.first.admin = true
  end

  def send_confirmation_email
    AccountMailer.confirmation(users.first).deliver
  end
end
