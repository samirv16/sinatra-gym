class CoursesController < ApplicationController

    get '/courses' do
        authenticate
        @courses = Course.all
        erb :'courses/index'
    end

    get '/courses/new' do
        authenticate
        erb :'courses/new'
    end

    post '/courses' do
        authenticate
        u = current_user
        u.courses.build(name: params[:name], description: params[:description], price: params[:price])
        if u.save
            redirect '/courses'
        else
            @messege = "There was a problem creating your course!"
            erb :'courses/new'
        end
    end

    delete '/courses/:id' do 
        authenticate
        course = Course.find_by_id(params[:id])
        if course
            course.delete
            redirect '/courses'
        end
    end

    get '/courses/:id/edit' do 
        @course = Course.find_by_id(params[:id])
        authenticate_user(@course)
        if @course 
            erb :'courses/edit'
        else
            erb :error, layout: false
        end
    end

    patch '/courses/:id' do
        @course = Course.find_by_id(params[:id])
        authenticate_user(@course)

    end



end