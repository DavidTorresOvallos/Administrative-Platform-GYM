# == Schema Information
#
# Table name: employees
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  nombre                 :string
#  apellido               :string
#  tipo_documento         :integer
#  num_documento          :string
#  fecha_nacimiento       :date
#  fecha_ingreso          :date
#  id_employetable_type   :string           not null
#  id_employetable_id     :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :gyms
  belongs_to :id_employetable, polymorphic: true
  enum tipo_documento: { CC: 0, CE: 1, TI: 2 }


  validates :gyms, presence: true
end
