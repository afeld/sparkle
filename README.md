# Sparkle

API for generating sparklines as images.

## Usage

Example:

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5

Use the file extension of your desired file type in the URL (`.png`, `.jpg`, or `.gif`). The following query string parameters are available:

parameter  | default | purpose
-----------|---------|-----------------------------------
values     |         | (required) comma-separated list of values to graph
line_color | 4A8FED  | color of line in hex
height     | 30      | height of image in pixels
step       | 30      | distance between steps in pixels

Example:

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5&height=150&line_color=F3F

## Development

Requires [ImageMagick](http://www.imagemagick.org/) >= 6.4.9.

```bash
bundle
bundle exec shotgun
```

Then open [http://localhost:9393/api/v1.png?values=1,4,5,3,2,5](http://localhost:9393/api/v1.png?values=1,4,5,3,2,5).

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
