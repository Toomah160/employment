class Type < ActiveRecord::Base
    has_many :jobs
    
    validates :name, uniqueness:true, presence:true
end
