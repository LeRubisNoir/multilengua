class VocablesController < InheritedResources::Base
	def index
		@myscore = Score.all.first.score
	end
end
