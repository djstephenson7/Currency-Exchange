require 'currency_exchange'
require 'date'

class DummyClass
end

describe 'Thing' do
  before(:each) do
    @dummy_class = DummyClass.new
    @dummy_class.extend(CurrencyExchange)
  end

  it 'get hello string' do
    expect(@dummy_class.hello).to eq 'Hello'
  end
end
