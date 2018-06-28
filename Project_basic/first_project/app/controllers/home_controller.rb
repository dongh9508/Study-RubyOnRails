class HomeController < ApplicationController
    def index
        
    end
    
    def attack
        @form = params[:userA]
        @to = params[:userB]
    end
    
    def defense
    end
    
    
end
