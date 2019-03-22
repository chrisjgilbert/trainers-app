require 'active_record'

class Trainer < ActiveRecord::Base
  validates :name, uniqueness: true
end
