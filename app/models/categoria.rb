class Categoria < ActiveRecord::Base
  has_many :recados

  attr_accessible :background_color, :nome
end
