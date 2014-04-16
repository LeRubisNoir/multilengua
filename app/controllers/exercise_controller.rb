class ExerciseController < ApplicationController
    
    def print_question
        
        #Init session id compteur nombre question repondu
        if session[:cpt_question].blank?
          session[:cpt_question] = 0
        end
        
        #Anais/Clement : init score si existe pas
        
        @vocables = Vocable.all.sample(4)
        @vocable_true = @vocables[Random.rand(0...3)]
        @question = @vocable_true.english
        @result = @vocable_true.sweden
        @answer1 = @vocables[0].sweden
        @answer2 = @vocables[1].sweden
        @answer3 = @vocables[2].sweden
        @answer4 = @vocables[3].sweden
        
        #@score = (valeur actuel)
        
    end
    
    def check

        @question = params[:question]
        @answer1 = params[:answer1]
        @answer2 = params[:answer2]
        @answer3 = params[:answer3]
        @answer4 = params[:answer4]
        
        if params[:answer] == params[:result]
            #Anais/Clement : increment score
          @result_string = "OK"
        else
          @result_string = "NOK"
        end
        
        
        #aw session[:cpt_question]
        #session[:cpt_question] = session[:cpt_question] + 1
        
    end
    
    def next_redirect
 
        if session[:cpt_question] == 5
          redirect_to action: 'congratz'
        else
          redirect_to action: 'print_question'
        end
        
    end
    
    
    def congratz
        
        #@score = (valeur actuel)

        
    end
    
end
