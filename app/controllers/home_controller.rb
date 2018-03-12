class HomeController < ApplicationController
  before_action :set_project, only: [:show]



  def index
    @profiles = Profile.all
    @educations = Education.all
    @experiences = Experience.all
    @networks = Network.all
    @projects = Project.all
  end
end
