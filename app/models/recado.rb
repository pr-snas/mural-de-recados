class Recado < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :categoria

  attr_accessible :conteudo, :height, :left, :top,
                  :width, :z_index, :usuario

  before_save do
    unless self.persisted?
      r = Recado.order('z_index DESC').first
      self.z_index = r.z_index + 1 unless r.nil?
    end
  end
end
