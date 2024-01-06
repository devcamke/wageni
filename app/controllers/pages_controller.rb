class PagesController < ApplicationController
  skip_before_action :authenticate

  def home
    @visitor_counts = Visitor.group(:gender).count
  end
end
