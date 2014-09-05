# Sparkle

API for generating sparkline images.

## Usage

Add the values as a comma-separated list of values, e.g.

http://sparklines.herokuapp.com/v1?values=1,4,5,3,2,5

## Development

Requires [ImageMagick](http://www.imagemagick.org/) >= 6.4.9.

```bash
bundle
bundle exec shotgun
open http://localhost:8080/api/v1?values=1,4,5,3,2,5
```
