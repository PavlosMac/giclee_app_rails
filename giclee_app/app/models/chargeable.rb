class Chargeable < ApplicationRecord
  belongs_to :job_entry, optional: true
end
