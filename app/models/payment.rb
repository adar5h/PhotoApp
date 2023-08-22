class Payment < ApplicationRecord
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year
  # The credit card details are not going to be stored in our DB but the Payment model needs to work with attributes.
  # in order for the JS to send the information to Stripe and then get rid of it.
  belongs_to :user

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map({|name,i| ["#{i+1} -  #{name}", i+1] })
  end

  def self.year_options
    (Date.today.year..(Date.today.year+10)).to_a
  end

  def process_payment
    customer = Stripe::Customer.create email: email, card: token

    Stripe::Charge.create customer: customer.id,
                          amount: 1000, #cents
                          description: 'Premium',
                          currency: 'usd'

  end
end
