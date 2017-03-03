class PricingSystem < ApplicationRecord
  has_and_belongs_to_many :job_entries
end
