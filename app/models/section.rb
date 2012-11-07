class Section < ActiveRecord::Base
  attr_accessible :name, :sort_order

  validates :name, :presence => true
  validates :sort_order, :presence => true, :numericality => {:only_integer => true}

  has_many :pages
end
