class Order < ApplicationRecord

  monetize :amount_cents

  belongs_to :teddy
  belongs_to :user

end
