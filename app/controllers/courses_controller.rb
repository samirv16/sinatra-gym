class CoursesController < ApplicationController

    get '/courses' do
        authenticate
        erb :'courses/index'
    end


end