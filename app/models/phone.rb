class Phone < ApplicationRecord
validates :p_id, presence: true
validates :e_id, presence: true
validates :phone_number, presence: true
validates :phone_type, presence: true

belong_to:employees
end
