class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:linkedin]

  def self.find_for_linkedin_oauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.email = auth.info.email
    # user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name   # assuming the user model has a name
    # user.image = auth.info.image # assuming the user model has an image
    user.save!
	  end
	end

end
