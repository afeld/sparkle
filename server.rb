require 'rubygems'
require 'bundler'

Bundler.require

def param_with_default(key, default)
  params[key] ? params[key] : default
end

def fixnum_param_with_default(key, default)
  param_with_default(key, default).to_i
end

def color_param_with_default(key, default)
  if params[key] === "transparent" 
   return params[key]
  elsif /^([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/ === params[key] 
    return "##{params[key]}"
  else
    return "##{default}"
  end
end


def generate_image(file_type)
  values = params[:values].split(',').map(&:to_f)
  background_color = color_param_with_default(:background_color, 'FFFFFF')
  line_color = param_with_default(:line_color, '4A8FED')

  # http://bit.ly/1qnR55Y
  blob = Sparklines.plot(values,
    background_color: background_color,
    dot_size: fixnum_param_with_default(:dot_size, 4),
    height: fixnum_param_with_default(:height, 30),
    line_color: "##{line_color}",
    step: fixnum_param_with_default(:step, 30)
  )

  content_type file_type
  blob
end

get '/' do
  redirect to('https://github.com/afeld/sparkle')
end

get '/api/v1.png' do
  generate_image(:png)
end

get '/api/v1.jpg' do
  generate_image(:jpg)
end

get '/api/v1.gif' do
  generate_image(:gif)
end
