class PrincipalController < ApplicationController
  def index
  	@posts = Post.all
  end
end
