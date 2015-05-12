PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  # resourses :posts, except: [:destroy]
end
