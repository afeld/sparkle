# Sparkle

API for generating [sparklines](https://en.wikipedia.org/wiki/Sparkline) as images.

## Usage

Example:

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5

![Sparkline Example](https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5)

Use the file extension of your desired file type in the URL (`.png`, `.jpg`, or `.gif`). The following query string parameters are available:

parameter | default | unit | purpose
--- | --- | --- | ---
`values` | | | (required) comma-separated list of values to graph
`background_color` | `FFFFFF` | [color](https://rmagick.github.io/imusage.html#color_names) | background color (hex, `rgb(R,G,B)`, `transparent`, etc.)
`dot_size` | `4` | pixels | width of the line
`height` | `30` | pixels | height of image
`line_color` | `4A8FED` | [color](https://rmagick.github.io/imusage.html#color_names) | color of line
`step` | `30` | pixels | distance between steps
`width` | | pixels | fixed width of total graph (overrides step distance)

Example:

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5&height=150&line_color=F3F

![Sparkline Example](https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5&height=150&line_color=F3F)

## Development

Requires [ImageMagick](http://www.imagemagick.org/) >= 6.4.9.

Requires Ruby >=1.9.1
```bash
bundle
bundle exec shotgun
```

Then open [http://localhost:9393/api/v1.png?values=1,4,5,3,2,5](http://localhost:9393/api/v1.png?values=1,4,5,3,2,5).

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Troubleshooting

For Ubuntu (and other [Linux variants](http://stackoverflow.com/a/16775397/1476898)), the development packages are required in addition to the binaries for ImageMagick.                                                                                                        
 ```bash                                                                         
 apt-get install libmagickwand-dev imagemagick                                   
 ```                
