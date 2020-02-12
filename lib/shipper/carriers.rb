module Shipper
  module Carriers
    extend self

    attr_reader :registered
    @registered = []

    def register(class_name, autoload_require)
      Shipper.autoload(class_name, autoload_require)
      self.registered << class_name
    end

    def all
      Shipper::Carriers.registered.map { |name| Shipper.const_get(name) }
    end

    def find(name)
      all.find { |c| c.name.downcase == name.to_s.downcase } or raise NameError, "unknown carrier #{name}"
    end
  end
end

Shipper::Carriers.register :FedEx,            'shipper/carriers/fedex'
