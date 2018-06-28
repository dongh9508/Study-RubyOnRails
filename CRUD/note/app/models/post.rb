class Post < ApplicationRecord
    has_many :comments #여러개의 커맨트(댓글)들을 가진다.
end
