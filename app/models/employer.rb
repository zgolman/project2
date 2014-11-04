class Employer
  include Mongoid::Document
  field :pay_period, type: Date
  field :income, type: Float
  field :health_insurance, type: Mongoid::Boolean
  field :benefits, type: Mongoid::Boolean
end
