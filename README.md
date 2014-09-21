[![Build Status](https://travis-ci.org/hectr/SpanishInflection.svg)](https://travis-ci.org/hectr/SpanishInflection)

# SpanishInflection

Spanish inflection rules for **[InflectorKit](https://www.github.com/mattt/InflectorKit)**.

## Installation

### From CocoaPods

Add `pod 'SpanishInflection'` to your `Podfile`.

### Manually

Drag the `SpanishInflection` folder into your project and make sure to have added **[InflectorKit](https://www.github.com/mattt/InflectorKit)** to your project too.

## Usage

```objc
TTTStringInflector *inflector = [[TTTStringInflector alloc] init];
[inflector addPluralizationRulesForEsESLocale];

NSLog(@"%@", [inflector pluralize:@"usuario"]);
NSLog(@"%@", [inflector singularize:@"comentarios"]);
```

## License

**SpanishInflection** is available under the MIT license. See the LICENSE file for more info.
