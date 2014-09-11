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

#import "TTTStringInflector+Spanish.h"


@implementation TTTStringInflector (Spanish)

#pragma mark Public

- (void)addPluralizationRulesForEsESLocale
{
    [self addSingularRulesForEsESLocale];
    [self addPluralRulesForEsESLocale];
    [self addIrregularsForEsESLocale];
    [self addInvariantsForEsESLocale];
    [self addUncontablesForEsESLocale];
}

#pragma mark Private

- (void)addPluralRulesForEsESLocale
{
    [self addPluralRule:@"$" withReplacement:@"s"];
    
    [self addPluralRule:@"([^aeiouáéíóús])$" withReplacement:@"$1es"];
    
    [self addPluralRule:@"([aeiou])$" withReplacement:@"$1s"];
    [self addPluralRule:@"([áéó])$" withReplacement:@"$1s"];
    [self addPluralRule:@"([íú])$" withReplacement:@"$1es"];
    
    [self addPluralRule:@"á([sn])$" withReplacement:@"a$1es"];
    [self addPluralRule:@"é([sn])$" withReplacement:@"e$1es"];
    [self addPluralRule:@"í([sn])$" withReplacement:@"i$1es"];
    [self addPluralRule:@"ó([sn])$" withReplacement:@"o$1es"];
    [self addPluralRule:@"ú([sn])$" withReplacement:@"u$1es"];
    
    [self addPluralRule:@"x$" withReplacement:@"xes"];
    [self addPluralRule:@"z$" withReplacement:@"ces"];
    [self addPluralRule:@"([aeiou])y$" withReplacement:@"$1yes"];
    [self addPluralRule:@"([aeiou]s)$" withReplacement:@"$1"];
    
    [self addPluralRule:@"é([^aeiouáéíóú])imen$" withReplacement:@"e$1ímenes"];
    [self addPluralRule:@"á([^aeiouáéíóú])acter$" withReplacement:@"a$1acteres"];

    [self addPluralRule:@"([aeo])ís$" withReplacement:@"$1íses"];
    [self addPluralRule:@"([aeo])ús$" withReplacement:@"$1úses"];
    
    [self addIrregularWithSingular:@"mes" plural:@"meses"];
}

- (void)addSingularRulesForEsESLocale
{
    // Known issues in singular rules:
    // - words ending in 'ene'
    // - words ending in a stressed vowel followed by 's'
    
    [self addSingularRule:@"s$" withReplacement:@""];
    [self addSingularRule:@"es$" withReplacement:@""];
    [self addSingularRule:@"ces$" withReplacement:@"z"];
    
    [self addSingularRule:@"ereses$" withReplacement:@"erés"];
    [self addSingularRule:@"ones$" withReplacement:@"ón"];
    [self addSingularRule:@"oneses$" withReplacement:@"onés"];
    [self addSingularRule:@"bres$" withReplacement:@"bre"];
    [self addSingularRule:@"lles$" withReplacement:@"lle"];
    [self addSingularRule:@"ches$" withReplacement:@"che"];
    [self addSingularRule:@"efes$" withReplacement:@"efe"];
    [self addSingularRule:@"ntes$" withReplacement:@"nte"];
    
    [self addSingularRule:@"e([^aeiouáéíóú])ímenes$" withReplacement:@"é$1imen"];
    [self addPluralRule:@"a([^aeiouáéíóú])acteres$" withReplacement:@"á$1acter"];
}

- (void)addIrregularsForEsESLocale
{
    [self addIrregularWithSingular:@"cien" plural:@"cientos"];
    [self addIrregularWithSingular:@"el" plural:@"los"];
    [self addIrregularWithSingular:@"él" plural:@"ellos"]; // not anymore
    [self addIrregularWithSingular:@"este" plural:@"estos"];
    [self addIrregularWithSingular:@"ese" plural:@"esos"];
    [self addIrregularWithSingular:@"aquel" plural:@"aquellos"];
    [self addIrregularWithSingular:@"aquél" plural:@"aquellos"]; // not anymore
    
    [self addIrregularWithSingular:@"curriculum" plural:@"curricula"];
    [self addIrregularWithSingular:@"hipérbaton" plural:@"hipérbatos"];
    
    [self addIrregularWithSingular:@"cualquiera" plural:@"cualesquiera"];
    [self addIrregularWithSingular:@"quienquiera" plural:@"quienesquiera"];
    
    [self addIrregularWithSingular:@"ají" plural:@"ajís"];
    [self addIrregularWithSingular:@"bit" plural:@"bits"];
    [self addIrregularWithSingular:@"byte" plural:@"bytes"];
    [self addIrregularWithSingular:@"champú" plural:@"champús"];
    [self addIrregularWithSingular:@"gachí" plural:@"gachís"];
    [self addIrregularWithSingular:@"guaraní" plural:@"guaranís"];
    [self addIrregularWithSingular:@"MB" plural:@"MBs"];
    [self addIrregularWithSingular:@"menú" plural:@"menús"];
    [self addIrregularWithSingular:@"pirulí" plural:@"pirulís"];
    [self addIrregularWithSingular:@"popurrí" plural:@"popurrís"];
    [self addIrregularWithSingular:@"tupí" plural:@"tupís"];
    [self addIrregularWithSingular:@"tutú" plural:@"tutús"];
    [self addIrregularWithSingular:@"vermú" plural:@"vermús"];
}

- (void)addUncontablesForEsESLocale
{
    [self addUncountable:@"norte"];
    [self addUncountable:@"sur"];
    [self addUncountable:@"este"];
    [self addUncountable:@"oeste"];
    [self addUncountable:@"oriente"];
    [self addUncountable:@"occidente"];
    
    [self addUncountable:@"adolescencia"];
    [self addUncountable:@"caos"];
    [self addUncountable:@"decrepitud"];
    [self addUncountable:@"eternidad"];
    [self addUncountable:@"generosidad"];
    [self addUncountable:@"nada"];
    [self addUncountable:@"nadie"];
    [self addUncountable:@"pánico"];
    [self addUncountable:@"pereza"];
    [self addUncountable:@"salud"];
    
    [self addUncountable:@"albricias"];
    [self addUncountable:@"andurriales"];
    [self addUncountable:@"añicos"];
    [self addUncountable:@"enseres"];
    [self addUncountable:@"esponsales"];
    [self addUncountable:@"exequias"];
    [self addUncountable:@"fauces"];
    [self addUncountable:@"maitines"];
    [self addUncountable:@"nupcias"];
    [self addUncountable:@"vacaciones"];
    [self addUncountable:@"víveres"];
}

- (void)addInvariantsForEsESLocale
{
    [self addIrregularWithSingular:@"lunes" plural:@"lunes"];
    [self addIrregularWithSingular:@"martes" plural:@"martes"];
    [self addIrregularWithSingular:@"miércoles" plural:@"miércoles"];
    [self addIrregularWithSingular:@"jueves" plural:@"jueves"];
    [self addIrregularWithSingular:@"viernes" plural:@"viernes"];

    [self addIrregularWithSingular:@"abrelatas" plural:@"abrelatas"];
    [self addIrregularWithSingular:@"alicates" plural:@"alicates"];
    [self addIrregularWithSingular:@"análisis" plural:@"análisis"];
    [self addIrregularWithSingular:@"caries" plural:@"caries"];
    [self addIrregularWithSingular:@"cáterin" plural:@"cáterin"];
    [self addIrregularWithSingular:@"cascarrabias" plural:@"cascarrabias"];
    [self addIrregularWithSingular:@"cortaplumas" plural:@"cortaplumas"];
    [self addIrregularWithSingular:@"crisis" plural:@"crisis"];
    [self addIrregularWithSingular:@"cuelgacapas" plural:@"cuelgacapas"];
    [self addIrregularWithSingular:@"crisis" plural:@"crisis"];
    [self addIrregularWithSingular:@"dosis" plural:@"dosis"];
    [self addIrregularWithSingular:@"éxtasis" plural:@"éxtasis"];
    [self addIrregularWithSingular:@"gratis" plural:@"gratis"];
    [self addIrregularWithSingular:@"isósceles" plural:@"isósceles"];
    [self addIrregularWithSingular:@"iPhone" plural:@"iPhone"];
    [self addIrregularWithSingular:@"isósceles" plural:@"isósceles"];
    [self addIrregularWithSingular:@"lavacoches" plural:@"lavacoches"];
    [self addIrregularWithSingular:@"limpiabotas" plural:@"limpiabotas"];
    [self addIrregularWithSingular:@"matarratas" plural:@"matarratas"];
    [self addIrregularWithSingular:@"mondadientes" plural:@"mondadientes"];
    [self addIrregularWithSingular:@"ómnibus" plural:@"ómnibus"];
    [self addIrregularWithSingular:@"oxímoron" plural:@"oxímoron"];
    [self addIrregularWithSingular:@"palmarés" plural:@"palmarés"];
    [self addIrregularWithSingular:@"páncreas" plural:@"páncreas"];
    [self addIrregularWithSingular:@"parabrisas" plural:@"parabrisas"];
    [self addIrregularWithSingular:@"parachoques" plural:@"parachoques"];
    [self addIrregularWithSingular:@"paraguas" plural:@"paraguas"];
    [self addIrregularWithSingular:@"pararrayos" plural:@"pararrayos"];
    [self addIrregularWithSingular:@"paréntesis" plural:@"paréntesis"];
    [self addIrregularWithSingular:@"pasamontañas" plural:@"pasamontañas"];
    [self addIrregularWithSingular:@"pisapapeles" plural:@"pisapapeles"];
    [self addIrregularWithSingular:@"portaaviones" plural:@"portaaviones"];
    [self addIrregularWithSingular:@"quitamanchas" plural:@"quitamanchas"];
    [self addIrregularWithSingular:@"rompecabezas" plural:@"rompecabezas"];
    [self addIrregularWithSingular:@"rompeolas" plural:@"rompeolas"];
    [self addIrregularWithSingular:@"sacacorchos" plural:@"sacacorchos"];
    [self addIrregularWithSingular:@"saltamontes" plural:@"saltamontes"];
    [self addIrregularWithSingular:@"salvavidas" plural:@"salvavidas"];
    [self addIrregularWithSingular:@"síntesis" plural:@"síntesis"];
    [self addIrregularWithSingular:@"tesis" plural:@"tesis"];
    [self addIrregularWithSingular:@"test" plural:@"test"];
    [self addIrregularWithSingular:@"tórax" plural:@"tórax"];
    [self addIrregularWithSingular:@"trabalenguas" plural:@"trabalenguas"];
    [self addIrregularWithSingular:@"trávelin" plural:@"trávelin"];
    [self addIrregularWithSingular:@"viacrucis" plural:@"viacrucis"];
    [self addIrregularWithSingular:@"virus" plural:@"virus"];
}

@end
