class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :id_employetable, polymorphic: true
  enum tipo_documento: [:"C.C", :"C.E", :"T.I"]


  validates :gyms, presence: true
end
