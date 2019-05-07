require 'json'

module CurrencyExchange
  @file = File.read('./data/data.json')
  @data_hash = JSON.parse(@file)
  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    if !@data_hash[date][to_currency] || !@data_hash[date][from_currency]
      raise 'Currency not found'
    else
      @data_hash[date][to_currency] / @data_hash[date][from_currency]
    end
  end
end
