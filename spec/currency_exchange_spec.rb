require 'currency_exchange'
require 'date'

describe 'CurrencyExchange module rate calculator' do
  it 'Gets the correct rate between GBP and USD on 22/11/2018' do
    correct_rate = 1.2870493690602498
    date = Date.new(2018, 11, 22)
    expect(CurrencyExchange.rate(date, 'GBP', 'USD')).to eq correct_rate
  end

  it 'Gets the correct rate between GBP and USD on 22/11/2018' do
    correct_rate = 0.007763975155279502
    date = Date.new(2018, 11, 22)
    expect(CurrencyExchange.rate(date, 'JPY', 'EUR')).to eq correct_rate
  end
end
