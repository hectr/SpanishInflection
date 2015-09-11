[![Build Status](https://travis-ci.org/hectr/SpanishInflection.svg)](https://travis-ci.org/hectr/SpanishInflection)
[![Version](https://img.shields.io/cocoapods/v/SpanishInflection.svg?style=flat)](http://cocoadocs.org/docsets/SpanishInflection)
[![License](https://img.shields.io/cocoapods/l/SpanishInflection.svg?style=flat)](http://cocoadocs.org/docsets/SpanishInflection)
[![Platform](https://img.shields.io/cocoapods/p/SpanishInflection.svg?style=flat)](http://cocoadocs.org/docsets/SpanishInflection)

# SpanishInflection

Spanish inflection rules for **[InflectorKit](https://www.github.com/mattt/InflectorKit)**.

```objc
TTTStringInflector *inflector = [[TTTStringInflector alloc] init];
[inflector addPluralizationRulesForEsESLocale];

NSLog(@"%@", [inflector pluralize:@"usuario"]);
NSLog(@"%@", [inflector singularize:@"comentarios"]);
```

If you want to customize which rules should be added to the *inflector* and in which order (*e.g. you only want rules for making the plural*), you can use any convination of the following methods instead of `addPluralizationRulesForEsESLocale`:

```objc
- (void)addSingularRulesForEsESLocale;
- (void)addPluralRulesForEsESLocale;
- (void)addIrregularsForEsESLocale;
- (void)addInvariantsForEsESLocale;
- (void)addUncontablesForEsESLocale;
```

## Usage

The *SpanishInflection.xcodeproj* does not provide an example application, but a set of tests that demonstrate how you use `TTTStringInflector+Spanish` category.

To run the `SpanishInflectionTests` target fetch submodules first.

## Installation

### CocoaPods

**SpanishInflection** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your *Podfile*:

```ruby
pod "SpanishInflection"
```

### Manually

Perform the following steps:

- Add the **[InflectorKit](https://www.github.com/mattt/InflectorKit)** library into your project.

- Copy *SpanishInflection* directory into your project.

## License

**SpanishInflection** is available under the MIT license. See the *LICENSE* file for more info.
