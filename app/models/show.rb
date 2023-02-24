class Show < ActiveRecord::Base
  has_one :network
  has_many :characters
  has_many :actors, through: :characters
  accepts_nested_attributes_for :characters

  def actors_list
    actors.map(&:full_name)
  end
  def build_network(attributes)
    self.network = Network.new(attributes.merge(show_id: self.id))
  end
  
end