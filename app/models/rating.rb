class rating < ApplicationRecord
    belongs_to :buyer, class_name: "User", foreing_key: "user_buyer_id"
    belongs_to :seller, class_name: "User", foreign_key: "user_seller_id"
end
