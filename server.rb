require 'rubygems'
require 'bundler'

Bundler.require

get '/' do
  redirect to('https://github.com/afeld/sparkle')
end

get '/api/v1.png' do
  values = params[:values].split(',').map(&:to_f)

  # http://bit.ly/1qnR55Y
  blob = Sparklines.plot(values,
    dot_size: 4,
    height: 30,
    line_color: '#4A8FED',
    step: 30
  )

  content_type :png
  blob
end
