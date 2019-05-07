require 'json'

module CurrencyExchange
  @file = File.read('./data/data.json')
  @data_hash = JSON.parse(@file)
  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  # TODO: calculate and return rate
  def self.rate(date, from_currency, to_currency)
    date = date.strftime('%Y-%m-%d')
    first_rate = @data_hash[date][from_currency]
    second_rate = @data_hash[date][to_currency]
    p second_rate / first_rate
    # Iterate over @data_hash
    # Match date to date in JSON
    # If it matches, calculatedifference between 2nd and 3rd arg
    # FORMULA: to_currency / from_currency
  end
end
