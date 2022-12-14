class Mounting < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :circle, optional: true
  belongs_to :lecture, optional: true

  belongs_to :follower, optional: true
  belongs_to :participant, optional: true
  belongs_to :speaker, optional: true


  validates :year, presence: true
  validates :occupation, presence: true

  scope :buscar_montagem_de_equipes, -> (valor) {where(team_id: valor) if valor.present?}
  scope :buscar_existe_funcao, -> (valor, funcao, ano) {where(team_id:valor, occupation: funcao, year: ano) if valor.present? if funcao.present? if ano.present? }
  scope :buscar_existe_funcao_geral, -> (valor, funcao, ano) {where(team_id:valor, occupation: funcao, year: ano) if valor.present? if funcao.present? if ano.present?}
  scope :montagem_palestras, -> (valor) {where(lecture_id: valor) if valor.present?}
  
  scope :coordenador, -> (id) {where(circle_id: id, occupation: "Coordenador") if id.present? }
  scope :casal_apoio, -> (id) {where(circle_id: id, occupation: "Casal Apoio") if id.present? }
  scope :buscar_existe_circulo, -> (id) {where(circle_id: id) if id.present? }
  scope :buscar_funcao_circulo, -> (id, funcao) {where(circle_id: id, occupation: funcao) if id.present? if funcao.present?}
end
