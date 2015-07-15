class OrderMailer < ApplicationMailer
  default from: 'notifications@lakestreetcinema.com'

  def send_receipt(order, email)
    @order = order
    @email = email
    mail(to: @email, subject: 'Your receipt from Lake Street Cinema')
  end
end
