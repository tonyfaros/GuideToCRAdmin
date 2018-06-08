class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         def active_for_authentication?
          # Uncomment the below debug statement to view the properties of the returned 
          # self model values.
          # logger.debug self.to_yaml
          
          
          super && admin?
        end

        def after_sign_up_path_for(resource)
          '/admin' # Or :prefix_to_your_route
        end
end
