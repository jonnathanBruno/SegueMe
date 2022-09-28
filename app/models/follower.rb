class Follower < ApplicationRecord
  belongs_to :parish
  has_one :contact, dependent: :destroy
  accepts_nested_attributes_for :contact
  has_one :mounting

  validates :nome, presence: true
  validates :email, presence: true
  validates :endereco, presence: true
  validates :idade, presence: true, numericality: { only_integer: true }
  validates :tipo_encontrista, presence: true 

  scope :sem_inseridos, -> (ids) {where("id NOT IN(#{ids})") if ids.present?}
  scope :buscar_tipo_encontrista, -> (tipo) {where(tipo_encontrista: tipo) if tipo.present?}
end
