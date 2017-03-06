class JobEntry < ApplicationRecord
  has_and_belongs_to_many :materials
  has_many :chargeables
  has_one :client_detail
end
