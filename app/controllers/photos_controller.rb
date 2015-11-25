class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    # @user_contributor_id = Photo.pluck(user_id)
    # @user_contributor_name = Users.findby(@user_contributor_id).username
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new

    @photo.caption = params[:caption]

    @photo.image = params[:image]

    @photo.user_id = params[:user_id]



    if @photo.save
      redirect_to "/photos", :notice => "Photo created successfully."
    else
      render 'new'
    end

  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])


    @photo.caption = params[:caption]

    @photo.image = params[:image]

    @photo.user_id = params[:user_id]



    if @photo.save
      redirect_to "/photos", :notice => "Photo updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy


    redirect_to "/photos", :notice => "Photo deleted."

  end



end
