class Restaurant < ActiveRecord::Base
  has_many :reviews

  def as_json(options = nil)
    {id: id,
     name: name,
     reviews: reviews}
  end
end
