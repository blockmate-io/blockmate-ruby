=begin
#Blockmate

#Blockmate API OpenAPI documentation

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module Blockmate
  # AddressRiskReport
  class AddressRiskReport
    attr_accessor :case_id

    attr_accessor :request_datetime

    attr_accessor :response_datetime

    attr_accessor :address

    attr_accessor :chain

    attr_accessor :risk

    attr_accessor :details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'case_id' => :'case_id',
        :'request_datetime' => :'request_datetime',
        :'response_datetime' => :'response_datetime',
        :'address' => :'address',
        :'chain' => :'chain',
        :'risk' => :'risk',
        :'details' => :'details'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'case_id' => :'String',
        :'request_datetime' => :'String',
        :'response_datetime' => :'String',
        :'address' => :'String',
        :'chain' => :'String',
        :'risk' => :'Integer',
        :'details' => :'AddressRiskReportDetails'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Blockmate::AddressRiskReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Blockmate::AddressRiskReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'case_id')
        self.case_id = attributes[:'case_id']
      end

      if attributes.key?(:'request_datetime')
        self.request_datetime = attributes[:'request_datetime']
      end

      if attributes.key?(:'response_datetime')
        self.response_datetime = attributes[:'response_datetime']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'chain')
        self.chain = attributes[:'chain']
      end

      if attributes.key?(:'risk')
        self.risk = attributes[:'risk']
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @chain.nil?
        invalid_properties.push('invalid value for "chain", chain cannot be nil.')
      end

      if @risk.nil?
        invalid_properties.push('invalid value for "risk", risk cannot be nil.')
      end

      if @risk > 100
        invalid_properties.push('invalid value for "risk", must be smaller than or equal to 100.')
      end

      if @risk < 0
        invalid_properties.push('invalid value for "risk", must be greater than or equal to 0.')
      end

      if @details.nil?
        invalid_properties.push('invalid value for "details", details cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @address.nil?
      return false if @chain.nil?
      return false if @risk.nil?
      return false if @risk > 100
      return false if @risk < 0
      return false if @details.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] risk Value to be assigned
    def risk=(risk)
      if risk.nil?
        fail ArgumentError, 'risk cannot be nil'
      end

      if risk > 100
        fail ArgumentError, 'invalid value for "risk", must be smaller than or equal to 100.'
      end

      if risk < 0
        fail ArgumentError, 'invalid value for "risk", must be greater than or equal to 0.'
      end

      @risk = risk
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          case_id == o.case_id &&
          request_datetime == o.request_datetime &&
          response_datetime == o.response_datetime &&
          address == o.address &&
          chain == o.chain &&
          risk == o.risk &&
          details == o.details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [case_id, request_datetime, response_datetime, address, chain, risk, details].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Blockmate.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
