require 'rubygems'
require 'bundler'

Bundler.require

get '/v1' do
  values = params[:values].split(',').map(&:to_f)
  blob = Sparklines.plot(values,
    dot_size: 4,
    height: 30,
    line_color: '#4A8FED',
    step: 30
  )

  content_type :png
  blob
end
