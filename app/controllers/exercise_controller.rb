class ExerciseController < ApplicationController
    
    def print_question
        
        #Init session id compteur nombre question repondu
        
        #Anaïs/Clement : init score si existe pas
				if !@myscore
					@myscore = Score.create
					@myscore.score = 0
				end
				
        
        @vocables = Vocable.all.sample(4)
        @question = @vocables[Random.rand(0...3)].english
        @answer1 = @vocables[0].sweden
        @answer2 = @vocables[1].sweden
        @answer3 = @vocables[2].sweden
        @answer4 = @vocables[3].sweden
        
        @myscore = Score.all.first.score
        
    end
    
    def check
        #Anaïs/Clement : increment score
				@myscore.score = @myscore.score + 1
        
        #increment compteur nombre question repondu
        
    end
    
    def next_redirect
 
        # test #increment compteur nombre question repondu
        # si plus grand que x => congratz sinon print_question
    end
    
end
