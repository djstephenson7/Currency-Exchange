require 'currency_exchange'
require 'date'

describe 'CurrencyExchange module rate calculator' do
  it 'Gets the correct rate between GBP and USD on 11/12/2018' do
    correct_rate = 1.2611384492618698
    date = Date.new(2018, 12, 11)
    expect(CurrencyExchange.rate(date, 'GBP', 'USD')).to eq correct_rate
  end

  it 'Gets the correct rate between CZK and AUD on 10/12/2018' do
    correct_rate = 0.061246423876904044
    date = Date.new(2018, 12, 10)
    expect(CurrencyExchange.rate(date, 'CZK', 'AUD')).to eq correct_rate
  end

  it 'Gets the correct rate between GBP and USD on 22/11/2018' do
    correct_rate = 1.2870493690602498
    date = Date.new(2018, 11, 22)
    expect(CurrencyExchange.rate(date, 'GBP', 'USD')).to eq correct_rate
  end

  it 'Raises an exception if currency is not found on the date' do
    date = Date.new(2018, 11, 22)
    expect { CurrencyExchange.rate(date, 'JPY', 'EUR') }
      .to raise_error('Currency not found')
  end
end
