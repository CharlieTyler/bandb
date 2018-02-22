class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @page = Page.friendly.find(params[:page_id])
    @page.photos.create(photo_params)
    redirect_to page_path(@page)
  end

  def destroy
    @photo = Photo.find(params[:page_id])
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Photo was successfully destroyed.' }
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
