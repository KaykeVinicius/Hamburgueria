class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable

  has_many :menus, dependent: :destroy
  has_one_attached :image
  has_many_attached :pictures
  has_rich_text :body

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :trackable
end
