class ExerciseController < ApplicationController
    
    def print_question
        
        #Init session id compteur nombre question repondu
        #if session[:cpt_question].blank?
        #session[:cpt_question] = 0
        #end
        
        @hack = params[:hack].to_i
        
        if @hack.blank?
            @hack = 0
        end
        
        #Anaïs/Clement : init score si existe pas
		if @myscore.blank?
			@myscore = Score.create
			@myscore.score = 0
		end
				
        
        @vocables = Vocable.all.sample(4)
        @vocable_true = @vocables[Random.rand(0...3)]
        @question = @vocable_true.english
        @result = @vocable_true.sweden
        @answer1 = @vocables[0].sweden
        @answer2 = @vocables[1].sweden
        @answer3 = @vocables[2].sweden
        @answer4 = @vocables[3].sweden        
    end
    
    def check

                #Anaïs/Clement : init score si existe pas
        if @myscore.blank?
            @myscore = Score.create
             @myscore.score = params[:score_session].to_i
        end
        
        @hack = params[:hack].to_i
        
        @question = params[:question]
        @answer1 = params[:answer1]
        @answer2 = params[:answer2]
        @answer3 = params[:answer3]
        @answer4 = params[:answer4]

        
        if params[:answer] == params[:result]
            #Anais/Clement : increment score
          @result_string = "OK"
          @myscore.score =  @myscore.score + 1
        else
          @result_string = "NOK"
        end

        
        
        #aw session[:cpt_question]
        #session[:cpt_question] = session[:cpt_question] + 1
        @hack = @hack + 1
        
    end
    
    def next_redirect
        
        @hack = params[:hack].to_i
        
        if @hack == 3
          redirect_to action: 'congratz'
        else
        redirect_to :action=>'print_question', :hack=>@hack
        end
        
    end
    
    
    def congratz
        
        #@score = (valeur actuel)

        
    end
    
end
