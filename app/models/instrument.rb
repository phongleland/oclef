class Instrument < ActiveRecord::Base
  has_many :musicalities, dependent: :destroy
  has_many :teachers, :through => :musicalities
end
