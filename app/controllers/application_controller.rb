class ApplicationController < ActionController::Base
  before_action :print_display_message
  after_action :after_display_message
  private
  def print_display_message
    puts "I am an inherited before action filter"
  end
  def after_display_message
    puts "================================================="
    puts "I am an after action filter"
    puts "================================================="
  end
end
