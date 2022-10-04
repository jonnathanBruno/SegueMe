class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :sem_inseridos, -> (ids) {where("id NOT IN(#{ids})") if ids.present?}
  scope :condicao_montagem, -> (campo) {where("#{campo} IS NOT NULL") if campo.present?}
end
