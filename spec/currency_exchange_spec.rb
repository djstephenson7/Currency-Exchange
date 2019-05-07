require 'currency_exchange'
require 'date'

describe '#rate Gets the correct calculations successfully' do
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

  it 'Gets the correct rate between USD and GBP on 22/11/2018' do
    correct_rate = 0.7769709725510829
    date = Date.new(2018, 11, 22)
    expect(CurrencyExchange.rate(date, 'USD', 'GBP')).to eq correct_rate
  end
end

describe '#rate error handling' do
  it 'Raises an exception if currency is not found on the date' do
    date = Date.new(2018, 11, 22)
    expect { CurrencyExchange.rate(date, 'JPY', 'EUR') }
      .to raise_error('No currency found on date')
  end

  it 'Raises an exception if the date does not exist' do
    date = Date.new(2019, 11, 22)
    expect { CurrencyExchange.rate(date, 'GBP', 'USD') }
      .to raise_error('That date does not exist')
  end

  it 'Raises an exception if input is invalid' do
    date = Date.new(2018, 11, 22)
    expect { CurrencyExchange.rate(date, 123, []) }
      .to raise_error('Invalid input')
  end
end
