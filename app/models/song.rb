class Song < ActiveRecord::Base
  belongs_to :book
  belongs_to :composer
end
