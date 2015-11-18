# Sparkle

API for generating sparklines as PNGs.

## Usage

Add the values as a comma-separated list, e.g.

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5

Accepts optional parameters for dot_size, height, line_color, step, and background_color, e.g.

https://sparklines.herokuapp.com/api/v1.png?values=1,4,5,3,2,5&height=100&background_color=FF0000

## Development

Requires [ImageMagick](http://www.imagemagick.org/) >= 6.4.9.

```bash
bundle
bundle exec shotgun
```

Then open [http://localhost:9393/api/v1.png?values=1,4,5,3,2,5](http://localhost:9393/api/v1.png?values=1,4,5,3,2,5).
