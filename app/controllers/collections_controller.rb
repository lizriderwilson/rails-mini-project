class CollectionsController < ApplicationController

    def index
        @collections = Collection.all
    end

    def new
        @collection = Collection.new
    end

    def create
        @collection = Collection.new(collection_params)
        @collection.save
        redirect_to collection_path(@collection)
    end

    def show
        @collection = Collection.find_by(id: params[:id])
    end

    def edit
        @collection = Collection.find_by(id: params[:id])
    end

    def update
        @collection = Collection.find_by(id: params[:id])
        @collection.update(collection_params)
        redirect_to collection_path(@collection)
    end

    def destroy
        @collection = Collection.find_by(id: params[:id])
        if @collection
            @collection.destroy
        end
        redirect_to collections_path
    end

    private

    def collection_params
        params.require(:collection).permit(:name)
    end

end