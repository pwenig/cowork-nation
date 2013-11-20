class MainController < ApplicationController

def index
	if session[:user_id] == nil
	render :index and return
	else
	user_id = session[:user_id]
	@user = User.find(user_id)
  	render :index and return
  end
end

def listing_details
	if session[:user_id] == nil
	city = params["city"]
	@listing = CoworkSite.where("city ilike ?", "%#{city}%")
	@header = "Coworking Sites in #{city}"
	render :listing and return
	else
	user_id = session[:user_id]
	@user = User.find(user_id)
	city = params["city"]
	@listing = CoworkSite.where("city ilike ?", "%#{city}%")
	@header = "Coworking Sites in #{city}"
	render :listing and return
	end
end

def login
	render :login and return
end

def login_post
	username = params["username"]
	password = params["password"]
	@user = User.find_by(username: username)
	if @user == nil
		flash[:error] =  "Unknown User"
		redirect_to "/login" and return
	elsif @user.authenticate(password) != false
		session[:user_id] = @user.id
		render :index and return
	else
		flash[:error] = "Incorrect Password"
		redirect_to "/login" and return
	end
end

def new_user 
	@user = User.new
	render :new_user and return
end

def new_user_post
	@user = User.new
	@user.username = params["username"]
	@user.password = params["password"]
	@user.password_confirmation = params["password_confirmation"]
	if @user.save == true
		session[:user_id] = @user.id
		render :login and return
	else
		render :login and return
	end
end

def new_cowork
	user_id = session[:user_id]
	@user = User.find(user_id)
	@listing = CoworkSite.new
	render :new_or_edit and return
end 

def new_cowork_post
	user_id = session[:user_id]
	@user = User.find(user_id)
	@listing 			= CoworkSite.new
	@listing.name		= params["name"]
	@listing.address	= params["address"]
	@listing.city		= params["city"]
	@listing.state		= params["state"]
	@listing.zip 		= params["zip"]
	@listing.short_desc	= params["short_desc"]
	@listing.long_desc	= params["long_desc"]
	@listing.phone		= params["phone"]
	@listing.email		= params["email"]
	if @listing.save == true
		redirect_to "/" and return
	else 
		render :new_or_edit and return
	end
end

def new_or_edit_details
	user_id = session[:user_id]
	@user = User.find(user_id)
	name = params["name"]
	@listing = CoworkSite.find_by(name: name)
	render :new_or_edit and return
end


def new_or_edit_details_post
	user_id = session[:user_id]
	@user = User.find(user_id)
	name = params["name"]
	@listing 			= CoworkSite.find_by(name: name)
	@listing.name 		= params["name"]
	@listing.address 	= params["address"]
	@listing.city 		= params["city"]
	@listing.state 		= params["state"]
	@listing.zip 		= params["zip"]
	@listing.short_desc = params["short_desc"]
	@listing.long_desc 	= params["long_desc"]
	@listing.phone 		= params["phone"]
	@listing.email 		= params["email"]
	@listing.save!
	redirect_to "/listing" and return
end

def detail_details
	if 	session[:user_id] == nil
	name = params["name"]
	@listing = CoworkSite.find_by(name: name)
	render :detail and return
	else
	user_id = session[:user_id]
	@user = User.find(user_id)
	name = params["name"]
	@listing = CoworkSite.find_by(name: name)
	render :detail and return
	end
end 

def logout
	flash[:error] = "Goodbye"
  	session.clear
  	render :index and return
end

	
end
