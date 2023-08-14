class NotifierMailer < ApplicationMailer

  def new_account(recipient)
    mail(
      to: recipient,
      subject: "New account information",
      content_type: "text/html",
      body: "<html><strong>Hello there</strong></html>"
    )
  end

end
