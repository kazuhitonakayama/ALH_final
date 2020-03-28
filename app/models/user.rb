class User < ApplicationRecord
  # has_manyは、他のモデルとの間に「1対多」のつながりがあることを示します。(「1側」にhas_manyを追加します。）
  has_many :posts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
