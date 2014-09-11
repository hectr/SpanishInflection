// TTTStringInflector+Spanish.m
//
// Copyright (c) 2013 Héctor Marqués
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "TTTStringInflector.h"

/// Adds methods for configuring an inflector with spanish inflection rules.
@interface TTTStringInflector (Spanish)

/// Adds singular and plural rules, irregulars, invariants and uncontables to the receiver.
- (void)addPluralizationRulesForEsESLocale;

/// Adds singular rules to the receiver.
- (void)addSingularRulesForEsESLocale;

/// Adds plural rules to the receiver.
- (void)addPluralRulesForEsESLocale;

/// Adds irregular words to the receiver.
- (void)addIrregularsForEsESLocale;

/// Adds invariant words to the receiver.
- (void)addInvariantsForEsESLocale;

/// Adds uncontables to the receiver.
- (void)addUncontablesForEsESLocale;

@end
