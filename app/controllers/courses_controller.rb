class CoursesController < ApplicationController

    get '/courses' do
        authenticate
        @courses = Course.all
        erb :'courses/index'
    end


end