class HomeController < ApplicationController
    def landing
    end
    def raquel_page
        @fave = ['food', 'tv', 'dogs']
    end
    def bao_page
        @fave = ['computer', 'movies', 'sleep']
    end
end

