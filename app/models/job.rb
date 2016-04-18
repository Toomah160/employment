class Job < ActiveRecord::Base
    belongs_to :type
    belongs_to :user
    
    validates :filled, default:false
    validates :type_id, presence:true
    
    scope :filled, ->{where(open:false)}
end
