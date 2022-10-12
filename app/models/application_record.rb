class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :condicao_montagem, -> (campo, campoDois) {where("#{campo} IS NOT NULL AND #{campoDois} IS NOT NULL") if campo.present? if campoDois.present?}
  scope :sem_inseridos, -> (ids) {where("id NOT IN(#{ids})") if ids.present?}
end
