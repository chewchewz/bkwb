begin
  require 'hirb'
  require 'wirb'
  Wirb.start
  Hirb.enable({:width => 155, :height => 500})
rescue
  warn 'Failed to load console gems, starting anyway'
end
