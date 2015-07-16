class ApplicationMailer < ActionMailer::Base
  add_template_helper(OrdersHelper)
  add_template_helper(ShowtimesHelper)

  default from: "wade.novak@gmail.com"
  layout 'mailer'
end
