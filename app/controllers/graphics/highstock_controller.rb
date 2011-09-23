class Graphics::HighstockController < ApplicationController
  protect_from_forgery

  def examples
    @example = params[:example] || "basic_line"
  end

  def default
    example = params[:example] || "basic_line"
    render :partial => "default", :locals => {:example => example}
  end

  def grid
    example = params[:example] || "basic_line"
    render :partial => "grid", :locals => {:example => example}
  end

  def skies
    example = params[:example] || "basic_line"
    render :partial => "skies", :locals => {:example => example}
  end

  def gray
    example = params[:example] || "basic_line"
    render :partial => "gray", :locals => {:example => example}
  end

  def blue
    example = params[:example] || "basic_line"
    render :partial => "blue", :locals => {:example => example}
  end

  def green
    example = params[:example] || "basic_line"
    render :partial => "green", :locals => {:example => example}
  end

  def data
    render :file => File.join(RAILS_ROOT, "app/views/graphics/highstock/#{params[:file]}")
  end
end
