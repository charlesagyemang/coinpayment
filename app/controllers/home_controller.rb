class HomeController < ApplicationController
  def welcome

  	@rate = Coinpayments.rates.USD.rate_btc

  	@transaction = Coinpayments.create_transaction(100, 'USD', 'BTC')
	@address = @transaction.status_url
  end
end
