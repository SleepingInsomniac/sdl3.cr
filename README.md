# [SDL3](https://www.libsdl.org) bindings for [Crystal](https://crystal-lang.org)

## Installation

1. Install sdl3

```bash
brew install sdl3
brew install sdl3_image # optional
brew install sdl3_ttf # optional
```

2. Add the dependency to your `shard.yml`:

```yaml
dependencies:
 sdl3:
   github: sleepinginsomniac/sdl3.cr
```

3. Run `shards install`

## Usage

```crystal
require "sdl3"
```

## Contributing

1. Fork it (<https://github.com/sleepinginsomniac/sdl3.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Alex Clink](https://github.com/sleepinginsomniac) - creator and maintainer
