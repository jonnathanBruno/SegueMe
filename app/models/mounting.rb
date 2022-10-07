class Mounting < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :circle, optional: true
  belongs_to :lecture, optional: true

  belongs_to :follower, optional: true
  belongs_to :participant, optional: true
  belongs_to :speaker, optional: true

  validates :occupation, presence: true
  validates :team, presence: { strict: true }
  validates :follower, presence: { strict: true }
  validates :circle, presence: { strict: true }
  validates :participant, presence: { strict: true }
  validates :lecture, presence: { strict: true }
  validates :speaker, presence: { strict: true }
  validates :year, presence: true

  scope :buscar_montagem_de_equipes, -> (valor) {where(team_id: valor) if valor.present?}
  scope :buscar_existe_funcao, -> (valor, funcao) {where(team_id:valor, occupation: funcao) if valor.present? if funcao.present? }
  scope :montagem_palestras, -> (valor) {where(lecture_id: valor) if valor.present?}
end
