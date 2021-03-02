class PhotosController < ApplicationController

    def create
        image = Cloudinary::Uploader.upload(:image)
        byebug
        photo = Photo.create(image: image["url"])
        render json: photo
    end

    # def delete
        # photo = Photo.find(params[:id])
    #     photo.destroy
    #     image = Cloudinary::Uploader.destroy(id)
    # end
    def image_params 
        params.require(:photo).permit(:image)
    end

end

