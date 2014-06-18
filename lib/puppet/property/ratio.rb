require 'puppet/property'

class Puppet::Property::F5Ratio < Puppet::Property
  desc 'The ratio of the object.
  Valid options: <integer>'

  validate do |value|
    unless value =~ /^\d+$/
      raise ArgumentError, "#{name} must be an Integer"
    end
  end
end
