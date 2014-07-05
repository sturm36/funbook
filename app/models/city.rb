class City < ActiveRecord::Base

	has_many :pages


	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted,lambda {order ("cities.position ASC")}
	scope :newest_first, lambda { order("cities.created_at DESC") }
	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])
		}


end	