require 'json'

module CurrencyExchange
  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    # TODO: calculate and return rate
  end

  def self.show_data
    file = File.read('./data/data.json')
    data_hash = JSON.parse(file)
    p data_hash
  end
end