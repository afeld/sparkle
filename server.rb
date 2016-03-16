require 'rubygems'
require 'bundler'

Bundler.require

def width_with_default(num_values)
  if params[:width]
    params[:width].to_i / (num_values - 1)
  else
    fixnum_param_with_default(:step, 30)
  end
end

def fixnum_param_with_default(key, default)
  (params[key] || default).to_i
end

def hex_color?(val)
  /^([a-f0-9]{6}|[a-f0-9]{3})$/i =~ val
end

def convert_color_param(val)
  if hex_color?(val)
    "##{val}"
  else
    val
  end
end

def generate_image(file_type)
  values = params[:values].split(',').map(&:to_f)
  background_color = params[:background_color] || 'FFFFFF'
  background_color = convert_color_param(background_color)
  line_color = params[:line_color] || '4A8FED'
  step_width = width_with_default(values.length)
  # http://bit.ly/1qnR55Y
  blob = Sparklines.plot(values,
    background_color: background_color,
    dot_size: fixnum_param_with_default(:dot_size, 4),
    height: fixnum_param_with_default(:height, 30),

    line_color: "##{line_color}",
    step: step_width
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
