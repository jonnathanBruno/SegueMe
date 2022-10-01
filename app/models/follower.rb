class Follower < ApplicationRecord
  belongs_to :parish
  has_one :mounting, dependent: :destroy
  has_one :contact, dependent: :destroy
  accepts_nested_attributes_for :contact

  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :type_date, presence: true 

  scope :sem_inseridos, -> (ids) {where("id NOT IN(#{ids})") if ids.present?}
  scope :buscar_tipo_encontrista, -> (tipo) {where(type_date: tipo) if tipo.present?}
end
