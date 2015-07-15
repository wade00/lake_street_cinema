class ApplicationMailer < ActionMailer::Base
  add_template_helper(OrdersHelper)
  add_template_helper(ShowtimesHelper)

  default from: "from@example.com"
  layout 'mailer'
end
