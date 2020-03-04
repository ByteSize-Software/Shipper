module Shipper
  class LabelResponse < Response
    attr_reader :labels
    attr_reader :total_price
    def initialize(success, message, params = {}, options = {})
      @labels = options[:labels]
      @total_price = options[:total_price]
      super
    end
  end
end
