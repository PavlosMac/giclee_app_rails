class JobEntry < ApplicationRecord
  has_and_belongs_to_many :pricing_systems, :materials
end
