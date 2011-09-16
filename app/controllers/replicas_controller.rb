class ReplicasController < ApplicationController
  
  
  RAND_TOKENS = %w( a b c d e f 0 1 2 3 4 5 6 7 8 9 )
  
  def index
    session[:key] ||= Array.new(32).map { |i| RAND_TOKENS[rand(RAND_TOKENS.size)] }.join('')
  end
end
