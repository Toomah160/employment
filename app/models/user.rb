class User < ActiveRecord::Base
    belongs_to :role
    has_many :jobs
    
    validates :name, :email, :password, :role_id, :admin , presence:true
    validates :admin , default:false
    validates :email, uniqueness:true
    
    before_save :email, format: {with: /\A[a-z]+_?[a-z]+\z/}
    

 
end

