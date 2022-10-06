class Mounting < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :circle, optional: true
  belongs_to :lecture, optional: true

  belongs_to :follower, optional: true
  belongs_to :participant, optional: true
  belongs_to :speaker, optional: true

  validates :occupation, presence: true
  validates :year, presence: true

  scope :buscar_montagem_de_equipes, -> (valor) {where(team_id: valor) if valor.present?}
  scope :buscar_existe_funcao, -> (valor, funcao) {where(team_id:valor, occupation: funcao) if valor.present? if funcao.present? }
end
