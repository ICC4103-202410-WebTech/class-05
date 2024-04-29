class AuthorsController < ApplicationController
    before_action :find_author, only: [:show, :edit, :update]

    def index
        @authors = Author.all
    end

    def new
        @author = Author.new
    end

    def show ; end

    def create
        author = Author.new author_params
        if author.save
            redirect_to authors_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @author.update author_params
            redirect_to authors_path
        else
            render :edit
        end
    end

    private
        def author_params
            params.require(:author).permit(:name)
        end

        def find_author
            @author = Author.find params['id']
        end
end