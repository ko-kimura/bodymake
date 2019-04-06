class WelcomeController < ApplicationController
  def index
    first_name = '光佑'
    last_name = '木村'

    @x = 1 + 10 * 2 / 4

    @fullname = last_name + first_name
  end
end
