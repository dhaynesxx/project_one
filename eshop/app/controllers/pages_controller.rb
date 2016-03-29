class PagesController < ApplicationController

def home
end

def contact
    @business = Business.first
end

end
