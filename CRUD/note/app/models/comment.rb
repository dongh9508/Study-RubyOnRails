class Comment < ApplicationRecord
    belongs_to :post #하나의 포스트를 갖는다.
end
