class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
 
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader

    posts = [{
        id: 0,
        title: "Iron Man",
        body: "This is the first Marvel Movie to watch"
    }];

    get '/' do

      @title = 'Marvel Movies'

      @posts = posts

      erb :'index'
    end

     get '/' do

    post = Post.new
    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
 
  
  end

  end

end