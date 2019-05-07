require 'json'
require 'date'

module CurrencyExchange
  @file = File.read('./data/data.json')
  @data_hash = JSON.parse(@file)

  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    if !@data_hash[date][to_currency] || !@data_hash[date][from_currency]
      raise 'There is no currency on this date.'
    else
      @data_hash[date][to_currency] / @data_hash[date][from_currency]
    end
  end
end
