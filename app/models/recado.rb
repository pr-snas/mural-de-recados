class Recado < ActiveRecord::Base
  belongs_to :usuario

  attr_accessible :background_color, :conteudo, :font_family, :height,
                  :left, :top, :width, :z_index, :usuario, :text_color,
                  :pin_class

  before_save do
    unless self.persisted?
      r = Recado.order('z_index DESC').first
      self.z_index = r.z_index + 1 unless r.nil?
    end
  end
end
