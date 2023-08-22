class MainController < ApplicationController

    def team_member_1
        render html: 'Mike'
    end
    def team_member_2
        render html: 'Graham'
    end
end
