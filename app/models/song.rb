# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  book_id     :integer
#  start_page  :integer
#  end_page    :integer
#  title       :string(255)
#  composer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :book
  belongs_to :composer
  
  has_many :assignments
  
  def pages
    if start_page == end_page
      return "Page #{start_page}"
    else
      return "Pages #{start_page}-#{end_page}"
    end
  end
end
