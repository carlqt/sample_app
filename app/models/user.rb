# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name
  email_regex = /[\w.\-+]+@[a-z.]+\.[a-z]+/i
  
  
  # validates the name field can't be blank
  validates :name,  :presence => true,
                    :length => { :maximum => 25}
  validates :email, :presence => true,
                    :format => { :with => email_regex},
                    :uniqueness => {:case_sensitive => false}
end
