class PagesController < ApplicationController

  def home
    @time = Time.today
  end

  def about
  end

  def contact
  else search = params[:member]
    raise
    @members = ['Ben', 'Rebecca', 'Katherine', 'Alex', 'Celine', 'Lucien']

    if search.present?
      @members = @members.select{ |member| member.start_with?(params[:member]) }
    # remember to Keep the search context using params in your input.
    end
  end
end
