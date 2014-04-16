class ExerciseController < ApplicationController
    
    def type1
        
        @vocables = Vocable.all.sample(4)
        @question = @vocables[Random.rand(1...4)].english
        @answer1 = @vocables[0].sweden
        @answer2 = @vocables[1].sweden
        @answer3 = @vocables[2].sweden
        @answer4 = @vocables[3].sweden
    end
    
end
