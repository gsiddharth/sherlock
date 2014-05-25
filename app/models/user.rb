class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  
  
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
  
  has_many :user_to_exams
  has_many :exams, :through => :user_to_exams
  
  #TODO: this method will be called again and again, so need to optimize  
  def active_exam
    user_to_exams.where("active=?", true)[0].exam
  end  
         
  def self.find_for_oauth(provider, auth, signed_in_resource=nil)
    
    print auth
    
    case provider
      when "facebook"
        return self.find_for_fb_oauth(auth, signed_in_resource)
      else
        return nil  
    end     
  end
  
  private
    def self.find_for_oauth(auth)      
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
                              email: auth.info.email                              
                            )
          UserProfile.create( user: user,
                              first_name: auth.info.first_name,
                              last_name: auth.info.last_name,
                              gender: auth.extra.raw_info.gender,
                              profile_photo: auth.info.image)
           return user
        end
      end
    end          
end