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
        course = Course.find_by_id(params[:id])
        authenticate_user(course)
        if course
            course.delete
            redirect '/courses'
        end
    end

    get '/courses/:id/edit' do 
        @course = Course.find_by_id(params[:id])
        authenticate_user(@course)
            erb :'courses/edit'
    end

    patch '/courses/:id' do
        @course = Course.find_by_id(params[:id])
        authenticate_user(@course)
        @course.update(name: params[:name], description: params[:description], price: params[:price])
        redirect '/courses'
    end

    get '/courses/search/:term' do
        @courses = Course.find_by(name: params[:term])
        binding.pry
        erb :'courses/index'
    end



end