class TeamController < ApplicationController


    def landing
        
    end

    def member_one
        @hobbies = ['Coding', 'Sleeping', 'Hiking']
    end

    def member_two
       @hobbies = ['Crafting', 'Reading', 'Travel']
    end
    # We do not need this method, implement hobbies in member_one method
    # def member_one_hobbies
        
    # end

end
