class Recado < ActiveRecord::Base
  belongs_to :usuario

  attr_accessible :background_color, :conteudo, :font_family, :height, :left, :top, :width, :z_index
end
