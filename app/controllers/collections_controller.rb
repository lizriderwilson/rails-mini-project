class CollectionsController < ApplicationController

    def index
        @collections = Collection.all
    end

    def new
        @collection = Collection.new
    end

    def create
        @collection = Collection.find_by(params[:id])
    end

    def show
        @collection = Collection.find_by(id: params[:id])
    end

    def edit
        @collection = Collection.find_by(params[:id])
    end

    def update
        @collection = Collection.find_by(params[:id])
    end

    def destroy
    end

end