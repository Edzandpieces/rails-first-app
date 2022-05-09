class PagesController < ApplicationController
  def home
    @time = Time.now
  end

  def about
    # automatically renders about.html.erb
  end

  def contact
    @members = [ 'Ben', 'Rebecca', 'Katherine', 'Alex', 'Celine', 'Lucien' ]
    if (params[:member])
      @members = @members.select { |member| member.start_with?(params[:member]) }
      # remember to Keep the search context using params in your input.
    end
  end
end
