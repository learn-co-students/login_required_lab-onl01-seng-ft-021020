
require 'pry'

class SecretsController < ApplicationController
 
    def show
        if current_user.nil?
            redirect_to(controller: "sessions", action: "new")
        else
            
        end
    end

end
