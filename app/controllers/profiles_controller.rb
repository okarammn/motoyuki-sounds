class ProfilesController < ApplicationController
  
  before_action :move_to_top, except: [:show]
  
  def show
    @profile = Profile.find(1)
  end
  
  def edit
    @profile = Profile.find(1)
  end
  
  def update
    profile = Profile.find(1)
    profile.update(profile_params)
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:title, :text, :mini_text, :image)
  end
  
  def move_to_top
    redirect_to controller: :articles, action: :index unless user_signed_in?
  end 
    
end
