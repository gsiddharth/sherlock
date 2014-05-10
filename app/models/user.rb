class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  
  has_one :user_profile
  has_one :address, :through => :user_profile
  has_one :city, :through => :address
  has_one :state, :through => :city
  has_one :country, :through =>  :state
  
  has_many :guardianships,  :foreign_key => 'user_id',
                            :class_name => 'GuardianToUser'                           
  has_many :guardians, :through =>  :guardianships
  
  has_many :child_cares,  :foreign_key => 'guardian_id',
                          :class_name => 'GuardianToUser'         
  has_many :childrens, :through => :child_cares
  
  has_many :users_to_exams
  has_many :exams, :through => :users_to_exams 
         
  def self.find_for_oauth(auth, signed_in_resource=nil)
    
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else        
        user = User.create( provider: auth.provider,
                            uid: auth.uid,
                            email: auth.info.email,
                            password: Devise.friendly_token[0,20],
                          )
      end    end
  end
         
end
