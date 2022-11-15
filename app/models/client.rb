# == Schema Information
#
# Table name: clients
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  nombre                 :string
#  apellido_uno           :string
#  apellido_dos           :string
#  tipo_documento         :integer
#  fecha_nacimiento       :date
#  peso                   :integer
#  altura                 :integer
#  id_clientable_type     :string           not null
#  id_clientable_id       :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :id_clientable, polymorphic: true
  enum tipo_documento: [:"C.C", :"C.E", :"T.I"]
end
