class Owner < ApplicationRecord
    # 여러개의 Items를 가지고 있어요.
    has_many :items
    has_many :hobbies
end
