
#import <XCTest/XCTest.h>
#import "TTTStringInflector+Spanish.h"


// SpanishInflection tests.
@interface SpanishInflectionTests : XCTestCase
@end


@implementation SpanishInflectionTests

// Test that `addInvariantsForEsESLocale` adds rules for the words being tested.
- (void)testInvariantRules
{
    TTTStringInflector *invariants = [[TTTStringInflector alloc] init];
    [invariants addInvariantsForEsESLocale];
    
    TTTStringInflector *others = [[TTTStringInflector alloc] init];
    [others addSingularRulesForEsESLocale];
    [others addPluralRulesForEsESLocale];
    [others addIrregularsForEsESLocale];
    [others addUncontablesForEsESLocale];
    
    XCTAssertFalse([[invariants pluralize:@"lunes"] isEqualToString:[others pluralize:@"lunes"]]
                   && [[invariants singularize:@"lunes"] isEqualToString:[others singularize:@"lunes"]]);
    XCTAssertFalse([[invariants pluralize:@"martes"] isEqualToString:[others pluralize:@"martes"]]
                   && [[invariants singularize:@"martes"] isEqualToString:[others singularize:@"martes"]]);
    XCTAssertFalse([[invariants pluralize:@"miércoles"] isEqualToString:[others pluralize:@"miércoles"]]
                   && [[invariants singularize:@"miércoles"] isEqualToString:[others singularize:@"miércoles"]]);
    XCTAssertFalse([[invariants pluralize:@"jueves"] isEqualToString:[others pluralize:@"jueves"]]
                   && [[invariants singularize:@"jueves"] isEqualToString:[others singularize:@"jueves"]]);
    XCTAssertFalse([[invariants pluralize:@"viernes"] isEqualToString:[others pluralize:@"viernes"]]
                   && [[invariants singularize:@"viernes"] isEqualToString:[others singularize:@"viernes"]]);
    
    XCTAssertFalse([[invariants pluralize:@"abrelatas"] isEqualToString:[others pluralize:@"abrelatas"]]
                   && [[invariants singularize:@"abrelatas"] isEqualToString:[others singularize:@"abrelatas"]]);
    XCTAssertFalse([[invariants pluralize:@"alicates"] isEqualToString:[others pluralize:@"alicates"]]
                   && [[invariants singularize:@"alicates"] isEqualToString:[others singularize:@"alicates"]]);
    XCTAssertFalse([[invariants pluralize:@"análisis"] isEqualToString:[others pluralize:@"análisis"]]
                   && [[invariants singularize:@"análisis"] isEqualToString:[others singularize:@"análisis"]]);
    XCTAssertFalse([[invariants pluralize:@"caries"] isEqualToString:[others pluralize:@"caries"]]
                   && [[invariants singularize:@"caries"] isEqualToString:[others singularize:@"caries"]]);
    XCTAssertFalse([[invariants pluralize:@"cáterin"] isEqualToString:[others pluralize:@"cáterin"]]
                   && [[invariants singularize:@"cáterin"] isEqualToString:[others singularize:@"cáterin"]]);
    XCTAssertFalse([[invariants pluralize:@"cascarrabias"] isEqualToString:[others pluralize:@"cascarrabias"]]
                   && [[invariants singularize:@"cascarrabias"] isEqualToString:[others singularize:@"cascarrabias"]]);
    XCTAssertFalse([[invariants pluralize:@"cortaplumas"]isEqualToString:[others pluralize:@"cortaplumas"]]
                   && [[invariants singularize:@"cortaplumas"] isEqualToString:[others singularize:@"cortaplumas"]]);
    XCTAssertFalse([[invariants pluralize:@"crisis"] isEqualToString:[others pluralize:@"crisis"]]
                   && [[invariants singularize:@"crisis"] isEqualToString:[others singularize:@"crisis"]]);
    XCTAssertFalse([[invariants pluralize:@"cuelgacapas"]isEqualToString:[others pluralize:@"cuelgacapas"]]
                   && [[invariants singularize:@"cuelgacapas"] isEqualToString:[others singularize:@"cuelgacapas"]]);
    XCTAssertFalse([[invariants pluralize:@"crisis"] isEqualToString:[others pluralize:@"crisis"]]
                   && [[invariants singularize:@"crisis"] isEqualToString:[others singularize:@"crisis"]]);
    XCTAssertFalse([[invariants pluralize:@"dosis"] isEqualToString:[others pluralize:@"dosis"]]
                   && [[invariants singularize:@"dosis"] isEqualToString:[others singularize:@"dosis"]]);
    XCTAssertFalse([[invariants pluralize:@"éxtasis"] isEqualToString:[others pluralize:@"éxtasis"]]
                   && [[invariants singularize:@"éxtasis"] isEqualToString:[others singularize:@"éxtasis"]]);
    XCTAssertFalse([[invariants pluralize:@"gratis"] isEqualToString:[others pluralize:@"gratis"]]
                   && [[invariants singularize:@"gratis"] isEqualToString:[others singularize:@"gratis"]]);
    XCTAssertFalse([[invariants pluralize:@"isósceles"] isEqualToString:[others pluralize:@"isósceles"]]
                   && [[invariants singularize:@"isósceles"]isEqualToString:[others singularize:@"isósceles"]]);
    XCTAssertFalse([[invariants pluralize:@"iPhone"] isEqualToString:[others pluralize:@"iPhone"]]
                   && [[invariants singularize:@"iPhone"] isEqualToString:[others singularize:@"iPhone"]]);
    XCTAssertFalse([[invariants pluralize:@"isósceles"] isEqualToString:[others pluralize:@"isósceles"]]
                   && [[invariants singularize:@"isósceles"]isEqualToString:[others singularize:@"isósceles"]]);
    XCTAssertFalse([[invariants pluralize:@"lavacoches"] isEqualToString:[others pluralize:@"lavacoches"]]
                   && [[invariants singularize:@"lavacoches"] isEqualToString:[others singularize:@"lavacoches"]]);
    XCTAssertFalse([[invariants pluralize:@"limpiabotas"]isEqualToString:[others pluralize:@"limpiabotas"]]
                   && [[invariants singularize:@"limpiabotas"] isEqualToString:[others singularize:@"limpiabotas"]]);
    XCTAssertFalse([[invariants pluralize:@"matarratas"] isEqualToString:[others pluralize:@"matarratas"]]
                   && [[invariants singularize:@"matarratas"] isEqualToString:[others singularize:@"matarratas"]]);
    XCTAssertFalse([[invariants pluralize:@"mondadientes"] isEqualToString:[others pluralize:@"mondadientes"]]
                   && [[invariants singularize:@"mondadientes"] isEqualToString:[others singularize:@"mondadientes"]]);
    XCTAssertFalse([[invariants pluralize:@"ómnibus"] isEqualToString:[others pluralize:@"ómnibus"]]
                   && [[invariants singularize:@"ómnibus"] isEqualToString:[others singularize:@"ómnibus"]]);
    XCTAssertFalse([[invariants pluralize:@"oxímoron"] isEqualToString:[others pluralize:@"oxímoron"]]
                   && [[invariants singularize:@"oxímoron"] isEqualToString:[others singularize:@"oxímoron"]]);
    XCTAssertFalse([[invariants pluralize:@"palmarés"] isEqualToString:[others pluralize:@"palmarés"]]
                   && [[invariants singularize:@"palmarés"] isEqualToString:[others singularize:@"palmarés"]]);
    XCTAssertFalse([[invariants pluralize:@"páncreas"] isEqualToString:[others pluralize:@"páncreas"]]
                   && [[invariants singularize:@"páncreas"] isEqualToString:[others singularize:@"páncreas"]]);
    XCTAssertFalse([[invariants pluralize:@"parabrisas"] isEqualToString:[others pluralize:@"parabrisas"]]
                   && [[invariants singularize:@"parabrisas"] isEqualToString:[others singularize:@"parabrisas"]]);
    XCTAssertFalse([[invariants pluralize:@"parachoques"] isEqualToString:[others pluralize:@"parachoques"]]
                   && [[invariants singularize:@"parachoques"] isEqualToString:[others singularize:@"parachoques"]]);
    XCTAssertFalse([[invariants pluralize:@"paraguas"] isEqualToString:[others pluralize:@"paraguas"]]
                   && [[invariants singularize:@"paraguas"] isEqualToString:[others singularize:@"paraguas"]]);
    XCTAssertFalse([[invariants pluralize:@"pararrayos"] isEqualToString:[others pluralize:@"pararrayos"]]
                   && [[invariants singularize:@"pararrayos"] isEqualToString:[others singularize:@"pararrayos"]]);
    XCTAssertFalse([[invariants pluralize:@"paréntesis"] isEqualToString:[others pluralize:@"paréntesis"]]
                   && [[invariants singularize:@"paréntesis"] isEqualToString:[others singularize:@"paréntesis"]]);
    XCTAssertFalse([[invariants pluralize:@"pasamontañas"] isEqualToString:[others pluralize:@"pasamontañas"]]
                   && [[invariants singularize:@"pasamontañas"] isEqualToString:[others singularize:@"pasamontañas"]]);
    XCTAssertFalse([[invariants pluralize:@"pisapapeles"] isEqualToString:[others pluralize:@"pisapapeles"]]
                   && [[invariants singularize:@"pisapapeles"] isEqualToString:[others singularize:@"pisapapeles"]]);
    XCTAssertFalse([[invariants pluralize:@"portaaviones"] isEqualToString:[others pluralize:@"portaaviones"]]
                   && [[invariants singularize:@"portaaviones"] isEqualToString:[others singularize:@"portaaviones"]]);
    XCTAssertFalse([[invariants pluralize:@"quitamanchas"] isEqualToString:[others pluralize:@"quitamanchas"]]
                   && [[invariants singularize:@"quitamanchas"] isEqualToString:[others singularize:@"quitamanchas"]]);
    XCTAssertFalse([[invariants pluralize:@"rompecabezas"] isEqualToString:[others pluralize:@"rompecabezas"]]
                   && [[invariants singularize:@"rompecabezas"] isEqualToString:[others singularize:@"rompecabezas"]]);
    XCTAssertFalse([[invariants pluralize:@"rompeolas"] isEqualToString:[others pluralize:@"rompeolas"]]
                   && [[invariants singularize:@"rompeolas"] isEqualToString:[others singularize:@"rompeolas"]]);
    XCTAssertFalse([[invariants pluralize:@"sacacorchos"] isEqualToString:[others pluralize:@"sacacorchos"]]
                   && [[invariants singularize:@"sacacorchos"] isEqualToString:[others singularize:@"sacacorchos"]]);
    XCTAssertFalse([[invariants pluralize:@"saltamontes"] isEqualToString:[others pluralize:@"saltamontes"]]
                   && [[invariants singularize:@"saltamontes"] isEqualToString:[others singularize:@"saltamontes"]]);
    XCTAssertFalse([[invariants pluralize:@"salvavidas"] isEqualToString:[others pluralize:@"salvavidas"]]
                   && [[invariants singularize:@"salvavidas"] isEqualToString:[others singularize:@"salvavidas"]]);
    XCTAssertFalse([[invariants pluralize:@"síntesis"] isEqualToString:[others pluralize:@"síntesis"]]
                   && [[invariants singularize:@"síntesis"] isEqualToString:[others singularize:@"síntesis"]]);
    XCTAssertFalse([[invariants pluralize:@"tesis"] isEqualToString:[others pluralize:@"tesis"]]
                   && [[invariants singularize:@"tesis"] isEqualToString:[others singularize:@"tesis"]]);
    XCTAssertFalse([[invariants pluralize:@"test"] isEqualToString:[others pluralize:@"test"]]
                   && [[invariants singularize:@"test"] isEqualToString:[others singularize:@"test"]]);
    XCTAssertFalse([[invariants pluralize:@"tórax"] isEqualToString:[others pluralize:@"tórax"]]
                   && [[invariants singularize:@"tórax"] isEqualToString:[others singularize:@"tórax"]]);
    XCTAssertFalse([[invariants pluralize:@"trabalenguas"] isEqualToString:[others pluralize:@"trabalenguas"]]
                   && [[invariants singularize:@"trabalenguas"] isEqualToString:[others singularize:@"trabalenguas"]]);
    XCTAssertFalse([[invariants pluralize:@"trávelin"] isEqualToString:[others pluralize:@"trávelin"]]
                   && [[invariants singularize:@"trávelin"] isEqualToString:[others singularize:@"trávelin"]]);
    XCTAssertFalse([[invariants pluralize:@"viacrucis"] isEqualToString:[others pluralize:@"viacrucis"]]
                   && [[invariants singularize:@"viacrucis"] isEqualToString:[others singularize:@"viacrucis"]]);
    XCTAssertFalse([[invariants pluralize:@"virus"] isEqualToString:[others pluralize:@"virus"]]
                   && [[invariants singularize:@"virus"] isEqualToString:[others singularize:@"virus"]]);
}

// Test that `addIrregularsForEsESLocale` adds rules for the words being tested.
- (void)testIrregularRules
{
    TTTStringInflector *irregulars = [[TTTStringInflector alloc] init];
    [irregulars addIrregularsForEsESLocale];

    TTTStringInflector *others = [[TTTStringInflector alloc] init];
    [others addSingularRulesForEsESLocale];
    [others addPluralRulesForEsESLocale];
    [others addInvariantsForEsESLocale];
    [others addUncontablesForEsESLocale];
    
    XCTAssertFalse([[irregulars pluralize:@"cien"] isEqualToString:[others pluralize:@"cien"]]
                   && [[irregulars singularize:@"cientos"] isEqualToString:[others singularize:@"cientos"]]);
    XCTAssertFalse([[irregulars pluralize:@"el"] isEqualToString:[others pluralize:@"el"]]
                   && [[irregulars singularize:@"los"] isEqualToString:[others singularize:@"los"]]);
    XCTAssertFalse([[irregulars pluralize:@"él"] isEqualToString:[others pluralize:@"él"]]
                   && [[irregulars singularize:@"ellos"] isEqualToString:[others singularize:@"ellos"]]); // not anymore
    XCTAssertFalse([[irregulars pluralize:@"este"] isEqualToString:[others pluralize:@"este"]]
                   && [[irregulars singularize:@"estos"] isEqualToString:[others singularize:@"estos"]]);
    XCTAssertFalse([[irregulars pluralize:@"ese"] isEqualToString:[others pluralize:@"ese"]]
                   && [[irregulars singularize:@"esos"] isEqualToString:[others singularize:@"esos"]]);
    XCTAssertFalse([[irregulars pluralize:@"aquel"] isEqualToString:[others pluralize:@"aquel"]]
                   && [[irregulars singularize:@"aquellos"] isEqualToString:[others singularize:@"aquellos"]]);
    XCTAssertFalse([[irregulars pluralize:@"aquél"] isEqualToString:[others pluralize:@"aquél"]]
                   && [[irregulars singularize:@"aquellos"] isEqualToString:[others singularize:@"aquellos"]]); // not anymore
    
    XCTAssertFalse([[irregulars pluralize:@"curriculum"] isEqualToString:[others pluralize:@"curriculum"]]
                   && [[irregulars singularize:@"curricula"] isEqualToString:[others singularize:@"curricula"]]);
    XCTAssertFalse([[irregulars pluralize:@"hipérbaton"] isEqualToString:[others pluralize:@"hipérbaton"]]
                   && [[irregulars singularize:@"hipérbatos"] isEqualToString:[others singularize:@"hipérbatos"]]);
    
    XCTAssertFalse([[irregulars pluralize:@"cualquiera"] isEqualToString:[others pluralize:@"cualquiera"]]
                   && [[irregulars singularize:@"cualesquiera"] isEqualToString:[others singularize:@"cualesquiera"]]);
    XCTAssertFalse([[irregulars pluralize:@"quienquiera"] isEqualToString:[others pluralize:@"quienquiera"]]
                   && [[irregulars singularize:@"quienesquiera"] isEqualToString:[others singularize:@"quienesquiera"]]);
    
    XCTAssertFalse([[irregulars pluralize:@"ají"] isEqualToString:[others pluralize:@"ají"]]
                   && [[irregulars singularize:@"ajís"] isEqualToString:[others singularize:@"ajís"]]);
    XCTAssertFalse([[irregulars pluralize:@"champú"] isEqualToString:[others pluralize:@"champú"]]
                   && [[irregulars singularize:@"champús"] isEqualToString:[others singularize:@"champús"]]);
    XCTAssertFalse([[irregulars pluralize:@"gachí"] isEqualToString:[others pluralize:@"gachí"]]
                   && [[irregulars singularize:@"gachís"] isEqualToString:[others singularize:@"gachís"]]);
    XCTAssertFalse([[irregulars pluralize:@"guaraní"] isEqualToString:[others pluralize:@"guaraní"]]
                   && [[irregulars singularize:@"guaranís"] isEqualToString:[others singularize:@"guaranís"]]);
    XCTAssertFalse([[irregulars pluralize:@"menú"] isEqualToString:[others pluralize:@"menú"]]
                   && [[irregulars singularize:@"menús"] isEqualToString:[others singularize:@"menús"]]);
    XCTAssertFalse([[irregulars pluralize:@"pirulí"] isEqualToString:[others pluralize:@"pirulí"]]
                   && [[irregulars singularize:@"pirulís"] isEqualToString:[others singularize:@"pirulís"]]);
    XCTAssertFalse([[irregulars pluralize:@"popurrí"] isEqualToString:[others pluralize:@"popurrí"]]
                   && [[irregulars singularize:@"popurrís"] isEqualToString:[others singularize:@"popurrís"]]);
    XCTAssertFalse([[irregulars pluralize:@"tupí"] isEqualToString:[others pluralize:@"tupí"]]
                   && [[irregulars singularize:@"tupís"] isEqualToString:[others singularize:@"tupís"]]);
    XCTAssertFalse([[irregulars pluralize:@"tutú"] isEqualToString:[others pluralize:@"tutú"]]
                   && [[irregulars singularize:@"tutús"] isEqualToString:[others singularize:@"tutús"]]);
    XCTAssertFalse([[irregulars pluralize:@"vermú"] isEqualToString:[others pluralize:@"vermú"]]
                   && [[irregulars singularize:@"vermús"] isEqualToString:[others singularize:@"vermús"]]);
}

// Test that `addUncontablesForEsESLocale` adds uncontables for the words being tested.
- (void)testUncontableRules
{
    TTTStringInflector *uncontables = [[TTTStringInflector alloc] init];
    [uncontables addUncontablesForEsESLocale];

    TTTStringInflector *others = [[TTTStringInflector alloc] init];
    [others addSingularRulesForEsESLocale];
    [others addPluralRulesForEsESLocale];
    [others addInvariantsForEsESLocale];
    [others addIrregularsForEsESLocale];
    
    XCTAssertFalse([[uncontables pluralize:@"norte"] isEqualToString:[others pluralize:@"norte"]]
                   && [[uncontables singularize:@"norte"] isEqualToString:[others singularize:@"norte"]]);
    XCTAssertFalse([[uncontables pluralize:@"sur"] isEqualToString:[others pluralize:@"sur"]]
                   && [[uncontables singularize:@"sur"] isEqualToString:[others singularize:@"sur"]]);
    XCTAssertFalse([[uncontables pluralize:@"este"] isEqualToString:[others pluralize:@"este"]]
                   && [[uncontables singularize:@"este"] isEqualToString:[others singularize:@"este"]]);
    XCTAssertFalse([[uncontables pluralize:@"oeste"] isEqualToString:[others pluralize:@"oeste"]]
                   && [[uncontables singularize:@"oeste"] isEqualToString:[others singularize:@"oeste"]]);
    XCTAssertFalse([[uncontables pluralize:@"oriente"] isEqualToString:[others pluralize:@"oriente"]]
                   && [[uncontables singularize:@"oriente"] isEqualToString:[others singularize:@"oriente"]]);
    XCTAssertFalse([[uncontables pluralize:@"occidente"] isEqualToString:[others pluralize:@"occidente"]]
                   && [[uncontables singularize:@"occidente"] isEqualToString:[others singularize:@"occidente"]]);
    
    XCTAssertFalse([[uncontables pluralize:@"adolescencia"] isEqualToString:[others pluralize:@"adolescencia"]]
                   && [[uncontables singularize:@"adolescencia"] isEqualToString:[others singularize:@"adolescencia"]]);
    XCTAssertFalse([[uncontables pluralize:@"caos"] isEqualToString:[others pluralize:@"caos"]]
                   && [[uncontables singularize:@"caos"] isEqualToString:[others singularize:@"caos"]]);
    XCTAssertFalse([[uncontables pluralize:@"decrepitud"] isEqualToString:[others pluralize:@"decrepitud"]]
                   && [[uncontables singularize:@"decrepitud"] isEqualToString:[others singularize:@"decrepitud"]]);
    XCTAssertFalse([[uncontables pluralize:@"eternidad"] isEqualToString:[others pluralize:@"eternidad"]]
                   && [[uncontables singularize:@"eternidad"] isEqualToString:[others singularize:@"eternidad"]]);
    XCTAssertFalse([[uncontables pluralize:@"generosidad"] isEqualToString:[others pluralize:@"generosidad"]]
                   && [[uncontables singularize:@"generosidad"] isEqualToString:[others singularize:@"generosidad"]]);
    XCTAssertFalse([[uncontables pluralize:@"nada"] isEqualToString:[others pluralize:@"nada"]]
                   && [[uncontables singularize:@"nada"] isEqualToString:[others singularize:@"nada"]]);
    XCTAssertFalse([[uncontables pluralize:@"nadie"] isEqualToString:[others pluralize:@"nadie"]]
                   && [[uncontables singularize:@"nadie"] isEqualToString:[others singularize:@"nadie"]]);
    XCTAssertFalse([[uncontables pluralize:@"pánico"] isEqualToString:[others pluralize:@"pánico"]]
                   && [[uncontables singularize:@"pánico"] isEqualToString:[others singularize:@"pánico"]]);
    XCTAssertFalse([[uncontables pluralize:@"pereza"] isEqualToString:[others pluralize:@"pereza"]]
                   && [[uncontables singularize:@"pereza"] isEqualToString:[others singularize:@"pereza"]]);
    XCTAssertFalse([[uncontables pluralize:@"salud"] isEqualToString:[others pluralize:@"salud"]]
                   && [[uncontables singularize:@"salud"] isEqualToString:[others singularize:@"salud"]]);
    
    XCTAssertFalse([[uncontables pluralize:@"albricias"] isEqualToString:[others pluralize:@"albricias"]]
                   && [[uncontables singularize:@"albricias"] isEqualToString:[others singularize:@"albricias"]]);
    XCTAssertFalse([[uncontables pluralize:@"andurriales"] isEqualToString:[others pluralize:@"andurriales"]]
                   && [[uncontables singularize:@"andurriales"] isEqualToString:[others singularize:@"andurriales"]]);
    XCTAssertFalse([[uncontables pluralize:@"añicos"] isEqualToString:[others pluralize:@"añicos"]]
                   && [[uncontables singularize:@"añicos"] isEqualToString:[others singularize:@"añicos"]]);
    XCTAssertFalse([[uncontables pluralize:@"enseres"] isEqualToString:[others pluralize:@"enseres"]]
                   && [[uncontables singularize:@"enseres"] isEqualToString:[others singularize:@"enseres"]]);
    XCTAssertFalse([[uncontables pluralize:@"esponsales"] isEqualToString:[others pluralize:@"esponsales"]]
                   && [[uncontables singularize:@"esponsales"] isEqualToString:[others singularize:@"esponsales"]]);
    XCTAssertFalse([[uncontables pluralize:@"exequias"] isEqualToString:[others pluralize:@"exequias"]]
                   && [[uncontables singularize:@"exequias"] isEqualToString:[others singularize:@"exequias"]]);
    XCTAssertFalse([[uncontables pluralize:@"fauces"] isEqualToString:[others pluralize:@"fauces"]]
                   && [[uncontables singularize:@"fauces"] isEqualToString:[others singularize:@"fauces"]]);
    XCTAssertFalse([[uncontables pluralize:@"maitines"] isEqualToString:[others pluralize:@"maitines"]]
                   && [[uncontables singularize:@"maitines"] isEqualToString:[others singularize:@"maitines"]]);
    XCTAssertFalse([[uncontables pluralize:@"nupcias"] isEqualToString:[others pluralize:@"nupcias"]]
                   && [[uncontables singularize:@"nupcias"] isEqualToString:[others singularize:@"nupcias"]]);
    XCTAssertFalse([[uncontables pluralize:@"vacaciones"] isEqualToString:[others pluralize:@"vacaciones"]]
                   && [[uncontables singularize:@"vacaciones"] isEqualToString:[others singularize:@"vacaciones"]]);
    XCTAssertFalse([[uncontables pluralize:@"víveres"] isEqualToString:[others pluralize:@"víveres"]]
                   && [[uncontables singularize:@"víveres"] isEqualToString:[others singularize:@"víveres"]]);
}

// Test plural rules against some words that are known to work.
- (void)testAllRulesPluralization
{
    TTTStringInflector *const inflector = [[TTTStringInflector alloc] init];
    [inflector addPluralizationRulesForEsESLocale];
    XCTAssertEqualObjects([inflector pluralize:@"régimen"], @"regímenes");
    XCTAssertEqualObjects([inflector pluralize:@"crisis"], @"crisis");
    XCTAssertEqualObjects([inflector pluralize:@"pezón"], @"pezones");
    XCTAssertEqualObjects([inflector pluralize:@"canción"], @"canciones");
    XCTAssertEqualObjects([inflector pluralize:@"nación"], @"naciones");
    XCTAssertEqualObjects([inflector pluralize:@"piloto"], @"pilotos");
    XCTAssertEqualObjects([inflector pluralize:@"calle"], @"calles");
    XCTAssertEqualObjects([inflector pluralize:@"caché"], @"cachés");
    XCTAssertEqualObjects([inflector pluralize:@"país"], @"países");
    XCTAssertEqualObjects([inflector pluralize:@"perdiz"], @"perdices");
    XCTAssertEqualObjects([inflector pluralize:@"mordedura"], @"mordeduras");
    XCTAssertEqualObjects([inflector pluralize:@"canción"], @"canciones");
    XCTAssertEqualObjects([inflector pluralize:@"palacio"], @"palacios");
    XCTAssertEqualObjects([inflector pluralize:@"coche"], @"coches");
    XCTAssertEqualObjects([inflector pluralize:@"foca"], @"focas");
    XCTAssertEqualObjects([inflector pluralize:@"osezno"], @"oseznos");
    XCTAssertEqualObjects([inflector pluralize:@"elefante"], @"elefantes");
    XCTAssertEqualObjects([inflector pluralize:@"bebé"], @"bebés");
    XCTAssertEqualObjects([inflector pluralize:@"dominó"], @"dominós");
    XCTAssertEqualObjects([inflector pluralize:@"sofá"], @"sofás");
    XCTAssertEqualObjects([inflector pluralize:@"colibrí"], @"colibríes");
    XCTAssertEqualObjects([inflector pluralize:@"bambú"], @"bambúes");
    XCTAssertEqualObjects([inflector pluralize:@"rubí"], @"rubíes");
    XCTAssertEqualObjects([inflector pluralize:@"iraní"], @"iraníes");
    XCTAssertEqualObjects([inflector pluralize:@"hindú"], @"hindúes");
    XCTAssertEqualObjects([inflector pluralize:@"rey"], @"reyes");
    XCTAssertEqualObjects([inflector pluralize:@"ley"], @"leyes");
    XCTAssertEqualObjects([inflector pluralize:@"buey"], @"bueyes");
    XCTAssertEqualObjects([inflector pluralize:@"camión"], @"camiones");
    XCTAssertEqualObjects([inflector pluralize:@"reloj"], @"relojes");
    XCTAssertEqualObjects([inflector pluralize:@"tambor"], @"tambores");
    XCTAssertEqualObjects([inflector pluralize:@"fax"], @"faxes");
    XCTAssertEqualObjects([inflector pluralize:@"la"], @"las");
    XCTAssertEqualObjects([inflector pluralize:@"lunes"], @"lunes");
    XCTAssertEqualObjects([inflector pluralize:@"martes"], @"martes");
    XCTAssertEqualObjects([inflector pluralize:@"miércoles"], @"miércoles");
    XCTAssertEqualObjects([inflector pluralize:@"viernes"], @"viernes");
    XCTAssertEqualObjects([inflector pluralize:@"sábado"], @"sábados");
    XCTAssertEqualObjects([inflector pluralize:@"domingo"], @"domingos");
    XCTAssertEqualObjects([inflector pluralize:@"virus"], @"virus");
    XCTAssertEqualObjects([inflector pluralize:@"maligno"], @"malignos");
    XCTAssertEqualObjects([inflector pluralize:@"examen"], @"examenes");
    XCTAssertEqualObjects([inflector pluralize:@"vacaciones"], @"vacaciones");
    XCTAssertEqualObjects([inflector pluralize:@"rompecabezas"], @"rompecabezas");
    XCTAssertEqualObjects([inflector pluralize:@"papá"], @"papás");
    XCTAssertEqualObjects([inflector pluralize:@"mamá"], @"mamás");
    XCTAssertEqualObjects([inflector pluralize:@"buzón"], @"buzones");
    XCTAssertEqualObjects([inflector pluralize:@"melón"], @"melones");
    XCTAssertEqualObjects([inflector pluralize:@"punzón"], @"punzones");
    XCTAssertEqualObjects([inflector pluralize:@"iPhone"], @"iPhone");
    XCTAssertEqualObjects([inflector pluralize:@"coche"], @"coches");
    XCTAssertEqualObjects([inflector pluralize:@"mes"], @"meses");
    XCTAssertEqualObjects([inflector pluralize:@"cantante"], @"cantantes");
    XCTAssertEqualObjects([inflector pluralize:@"coche"], @"coches");
    XCTAssertEqualObjects([inflector pluralize:@"jefe"], @"jefes");
    XCTAssertEqualObjects([inflector pluralize:@"nombre"], @"nombres");
    XCTAssertEqualObjects([inflector pluralize:@"peluche"], @"peluches");
    XCTAssertEqualObjects([inflector pluralize:@"restaurante"], @"restaurantes");
    XCTAssertEqualObjects([inflector pluralize:@"tinte"], @"tintes");
    XCTAssertEqualObjects([inflector pluralize:@"bien"], @"bienes");
    XCTAssertEqualObjects([inflector pluralize:@"unidad"], @"unidades");
    XCTAssertEqualObjects([inflector pluralize:@"diez"], @"dieces");
    XCTAssertEqualObjects([inflector pluralize:@"cien"], @"cientos");
    XCTAssertEqualObjects([inflector pluralize:@"mil"], @"miles");
    XCTAssertEqualObjects([inflector pluralize:@"millón"], @"millones");
    XCTAssertEqualObjects([inflector pluralize:@"libro"], @"libros");
    XCTAssertEqualObjects([inflector pluralize:@"pluma"], @"plumas");
    XCTAssertEqualObjects([inflector pluralize:@"chico"], @"chicos");
    XCTAssertEqualObjects([inflector pluralize:@"señora"], @"señoras");
    XCTAssertEqualObjects([inflector pluralize:@"radio"], @"radios");
    XCTAssertEqualObjects([inflector pluralize:@"borrador"], @"borradores");
    XCTAssertEqualObjects([inflector pluralize:@"universidad"], @"universidades");
    XCTAssertEqualObjects([inflector pluralize:@"profesor"], @"profesores");
    XCTAssertEqualObjects([inflector pluralize:@"ciudad"], @"ciudades");
    XCTAssertEqualObjects([inflector pluralize:@"señor"], @"señores");
    XCTAssertEqualObjects([inflector pluralize:@"escultor"], @"escultores");
    XCTAssertEqualObjects([inflector pluralize:@"sociedad"], @"sociedades");
    XCTAssertEqualObjects([inflector pluralize:@"azul"], @"azules");
    XCTAssertEqualObjects([inflector pluralize:@"avión"], @"aviones");
    XCTAssertEqualObjects([inflector pluralize:@"conversación"], @"conversaciones");
    XCTAssertEqualObjects([inflector pluralize:@"sección"], @"secciones");
    XCTAssertEqualObjects([inflector pluralize:@"televisión"], @"televisiones");
    XCTAssertEqualObjects([inflector pluralize:@"interés"], @"intereses");
    XCTAssertEqualObjects([inflector pluralize:@"lápiz"], @"lápices");
    XCTAssertEqualObjects([inflector pluralize:@"voz"], @"voces");
    XCTAssertEqualObjects([inflector pluralize:@"tapiz"], @"tapices");
    XCTAssertEqualObjects([inflector pluralize:@"actriz"], @"actrices");
    XCTAssertEqualObjects([inflector pluralize:@"luz"], @"luces");
    XCTAssertEqualObjects([inflector pluralize:@"mez"], @"meces");
    XCTAssertEqualObjects([inflector pluralize:@"tisú"], @"tisúes");
    XCTAssertEqualObjects([inflector pluralize:@"café"], @"cafés");
    XCTAssertEqualObjects([inflector pluralize:@"paciente"], @"pacientes");
    XCTAssertEqualObjects([inflector pluralize:@"ascendente"], @"ascendentes");
    XCTAssertEqualObjects([inflector pluralize:@"avena"], @"avenas");
    XCTAssertEqualObjects([inflector pluralize:@"tiempo"], @"tiempos");
    XCTAssertEqualObjects([inflector pluralize:@"miedo"], @"miedos");
    XCTAssertEqualObjects([inflector pluralize:@"gordo"], @"gordos");
    XCTAssertEqualObjects([inflector pluralize:@"loco"], @"locos");
    XCTAssertEqualObjects([inflector pluralize:@"caco"], @"cacos");
    XCTAssertEqualObjects([inflector pluralize:@"nena"], @"nenas");
    XCTAssertEqualObjects([inflector pluralize:@"capricho"], @"caprichos");
    XCTAssertEqualObjects([inflector pluralize:@"ese"], @"esos");
    XCTAssertEqualObjects([inflector pluralize:@"lápiz"], @"lápices");
    XCTAssertEqualObjects([inflector pluralize:@"barcelonés"], @"barceloneses");
    XCTAssertEqualObjects([inflector pluralize:@"tren"], @"trenes");
    XCTAssertEqualObjects([inflector pluralize:@"herencia"], @"herencias");
    XCTAssertEqualObjects([inflector pluralize:@"prima"], @"primas");
    XCTAssertEqualObjects([inflector pluralize:@"hipoteca"], @"hipotecas");
    XCTAssertEqualObjects([inflector pluralize:@"anuncio"], @"anuncios");
    XCTAssertEqualObjects([inflector pluralize:@"descarga"], @"descargas");
    XCTAssertEqualObjects([inflector pluralize:@"vídeo"], @"vídeos");
    XCTAssertEqualObjects([inflector pluralize:@"ministerio"], @"ministerios");
    XCTAssertEqualObjects([inflector pluralize:@"gota"], @"gotas");
    XCTAssertEqualObjects([inflector pluralize:@"byte"], @"bytes");
    XCTAssertEqualObjects([inflector pluralize:@"bit"], @"bits");
    XCTAssertEqualObjects([inflector pluralize:@"MB"], @"MBs");
    
    XCTAssertEqualObjects([inflector pluralize:@"anís"], @"anises");
    XCTAssertEqualObjects([inflector pluralize:@"compás"], @"compases");
    XCTAssertEqualObjects([inflector pluralize:@"ene"], @"enes");
    XCTAssertEqualObjects([inflector pluralize:@"nene"], @"nenes");
    XCTAssertEqualObjects([inflector pluralize:@"retén"], @"retenes");
    XCTAssertEqualObjects([inflector pluralize:@"revés"], @"reveses");
    XCTAssertEqualObjects([inflector pluralize:@"santiamén"], @"santiamenes");
}

// Test singular rules against some words that are known to work.
- (void)testAllRulesSingularization
{
    TTTStringInflector *const inflector = [[TTTStringInflector alloc] init];
    [inflector addPluralizationRulesForEsESLocale];
    XCTAssertEqualObjects([inflector singularize:@"regímenes"], @"régimen");
    XCTAssertEqualObjects([inflector singularize:@"crisis"], @"crisis");
    XCTAssertEqualObjects([inflector singularize:@"pezones"], @"pezón");
    XCTAssertEqualObjects([inflector singularize:@"canciones"], @"canción");
    XCTAssertEqualObjects([inflector singularize:@"naciones"], @"nación");
    XCTAssertEqualObjects([inflector singularize:@"pilotos"], @"piloto");
    XCTAssertEqualObjects([inflector singularize:@"calles"], @"calle");
    XCTAssertEqualObjects([inflector singularize:@"cachés"], @"caché");
    XCTAssertEqualObjects([inflector singularize:@"países"], @"país");
    XCTAssertEqualObjects([inflector singularize:@"perdices"], @"perdiz");
    XCTAssertEqualObjects([inflector singularize:@"mordeduras"], @"mordedura");
    XCTAssertEqualObjects([inflector singularize:@"canciones"], @"canción");
    XCTAssertEqualObjects([inflector singularize:@"palacios"], @"palacio");
    XCTAssertEqualObjects([inflector singularize:@"coches"], @"coche");
    XCTAssertEqualObjects([inflector singularize:@"focas"], @"foca");
    XCTAssertEqualObjects([inflector singularize:@"oseznos"], @"osezno");
    XCTAssertEqualObjects([inflector singularize:@"elefantes"], @"elefante");
    XCTAssertEqualObjects([inflector singularize:@"bebés"], @"bebé");
    XCTAssertEqualObjects([inflector singularize:@"dominós"], @"dominó");
    XCTAssertEqualObjects([inflector singularize:@"sofás"], @"sofá");
    XCTAssertEqualObjects([inflector singularize:@"colibríes"], @"colibrí");
    XCTAssertEqualObjects([inflector singularize:@"bambúes"], @"bambú");
    XCTAssertEqualObjects([inflector singularize:@"rubíes"], @"rubí");
    XCTAssertEqualObjects([inflector singularize:@"iraníes"], @"iraní");
    XCTAssertEqualObjects([inflector singularize:@"hindúes"], @"hindú");
    XCTAssertEqualObjects([inflector singularize:@"reyes"], @"rey");
    XCTAssertEqualObjects([inflector singularize:@"leyes"], @"ley");
    XCTAssertEqualObjects([inflector singularize:@"bueyes"], @"buey");
    XCTAssertEqualObjects([inflector singularize:@"camiones"], @"camión");
    XCTAssertEqualObjects([inflector singularize:@"relojes"], @"reloj");
    XCTAssertEqualObjects([inflector singularize:@"tambores"], @"tambor");
    XCTAssertEqualObjects([inflector singularize:@"faxes"], @"fax");
    XCTAssertEqualObjects([inflector singularize:@"las"], @"la");
    XCTAssertEqualObjects([inflector singularize:@"lunes"], @"lunes");
    XCTAssertEqualObjects([inflector singularize:@"martes"], @"martes");
    XCTAssertEqualObjects([inflector singularize:@"miércoles"], @"miércoles");
    XCTAssertEqualObjects([inflector singularize:@"viernes"], @"viernes");
    XCTAssertEqualObjects([inflector singularize:@"sábado"], @"sábado");
    XCTAssertEqualObjects([inflector singularize:@"domingo"], @"domingo");
    XCTAssertEqualObjects([inflector singularize:@"virus"], @"virus");
    XCTAssertEqualObjects([inflector singularize:@"malignos"], @"maligno");
    XCTAssertEqualObjects([inflector singularize:@"examenes"], @"examen");
    XCTAssertEqualObjects([inflector singularize:@"vacaciones"], @"vacaciones");
    XCTAssertEqualObjects([inflector singularize:@"rompecabezas"], @"rompecabezas");
    XCTAssertEqualObjects([inflector singularize:@"papás"], @"papá");
    XCTAssertEqualObjects([inflector singularize:@"mamás"], @"mamá");
    XCTAssertEqualObjects([inflector singularize:@"buzones"], @"buzón");
    XCTAssertEqualObjects([inflector singularize:@"melones"], @"melón");
    XCTAssertEqualObjects([inflector singularize:@"punzones"], @"punzón");
    XCTAssertEqualObjects([inflector singularize:@"iPhone"], @"iPhone");
    XCTAssertEqualObjects([inflector singularize:@"coches"], @"coche");
    XCTAssertEqualObjects([inflector singularize:@"meses"], @"mes");
    XCTAssertEqualObjects([inflector singularize:@"cantantes"], @"cantante");
    XCTAssertEqualObjects([inflector singularize:@"coches"], @"coche");
    XCTAssertEqualObjects([inflector singularize:@"jefes"], @"jefe");
    XCTAssertEqualObjects([inflector singularize:@"nombres"], @"nombre");
    XCTAssertEqualObjects([inflector singularize:@"peluches"], @"peluche");
    XCTAssertEqualObjects([inflector singularize:@"restaurantes"], @"restaurante");
    XCTAssertEqualObjects([inflector singularize:@"tintes"], @"tinte");
    XCTAssertEqualObjects([inflector singularize:@"bienes"], @"bien");
    XCTAssertEqualObjects([inflector singularize:@"unidades"], @"unidad");
    XCTAssertEqualObjects([inflector singularize:@"dieces"], @"diez");
    XCTAssertEqualObjects([inflector singularize:@"cientos"], @"cien");
    XCTAssertEqualObjects([inflector singularize:@"miles"], @"mil");
    XCTAssertEqualObjects([inflector singularize:@"millones"], @"millón");
    XCTAssertEqualObjects([inflector singularize:@"libros"], @"libro");
    XCTAssertEqualObjects([inflector singularize:@"plumas"], @"pluma");
    XCTAssertEqualObjects([inflector singularize:@"chicos"], @"chico");
    XCTAssertEqualObjects([inflector singularize:@"señoras"], @"señora");
    XCTAssertEqualObjects([inflector singularize:@"radios"], @"radio");
    XCTAssertEqualObjects([inflector singularize:@"borradores"], @"borrador");
    XCTAssertEqualObjects([inflector singularize:@"universidades"], @"universidad");
    XCTAssertEqualObjects([inflector singularize:@"profesores"], @"profesor");
    XCTAssertEqualObjects([inflector singularize:@"ciudades"], @"ciudad");
    XCTAssertEqualObjects([inflector singularize:@"señores"], @"señor");
    XCTAssertEqualObjects([inflector singularize:@"escultores"], @"escultor");
    XCTAssertEqualObjects([inflector singularize:@"sociedades"], @"sociedad");
    XCTAssertEqualObjects([inflector singularize:@"azules"], @"azul");
    XCTAssertEqualObjects([inflector singularize:@"aviones"], @"avión");
    XCTAssertEqualObjects([inflector singularize:@"conversaciones"], @"conversación");
    XCTAssertEqualObjects([inflector singularize:@"secciones"], @"sección");
    XCTAssertEqualObjects([inflector singularize:@"televisiones"], @"televisión");
    XCTAssertEqualObjects([inflector singularize:@"intereses"], @"interés");
    XCTAssertEqualObjects([inflector singularize:@"lápices"], @"lápiz");
    XCTAssertEqualObjects([inflector singularize:@"voces"], @"voz");
    XCTAssertEqualObjects([inflector singularize:@"tapices"], @"tapiz");
    XCTAssertEqualObjects([inflector singularize:@"actrices"], @"actriz");
    XCTAssertEqualObjects([inflector singularize:@"luces"], @"luz");
    XCTAssertEqualObjects([inflector singularize:@"meces"], @"mez");
    XCTAssertEqualObjects([inflector singularize:@"tisúes"], @"tisú");
    XCTAssertEqualObjects([inflector singularize:@"cafés"], @"café");
    XCTAssertEqualObjects([inflector singularize:@"pacientes"], @"paciente");
    XCTAssertEqualObjects([inflector singularize:@"ascendentes"], @"ascendente");
    XCTAssertEqualObjects([inflector singularize:@"avenas"], @"avena");
    XCTAssertEqualObjects([inflector singularize:@"tiempos"], @"tiempo");
    XCTAssertEqualObjects([inflector singularize:@"miedos"], @"miedo");
    XCTAssertEqualObjects([inflector singularize:@"gordos"], @"gordo");
    XCTAssertEqualObjects([inflector singularize:@"locos"], @"loco");
    XCTAssertEqualObjects([inflector singularize:@"cacos"], @"caco");
    XCTAssertEqualObjects([inflector singularize:@"nenas"], @"nena");
    XCTAssertEqualObjects([inflector singularize:@"caprichos"], @"capricho");
    XCTAssertEqualObjects([inflector singularize:@"esos"], @"ese");
    XCTAssertEqualObjects([inflector singularize:@"lápices"], @"lápiz");
    XCTAssertEqualObjects([inflector singularize:@"barceloneses"], @"barcelonés");
    XCTAssertEqualObjects([inflector singularize:@"trenes"], @"tren");
    XCTAssertEqualObjects([inflector singularize:@"herencias"], @"herencia");
    XCTAssertEqualObjects([inflector singularize:@"primas"], @"prima");
    XCTAssertEqualObjects([inflector singularize:@"hipotecas"], @"hipoteca");
    XCTAssertEqualObjects([inflector singularize:@"anuncios"], @"anuncio");
    XCTAssertEqualObjects([inflector singularize:@"descargas"], @"descarga");
    XCTAssertEqualObjects([inflector singularize:@"vídeos"], @"vídeo");
    XCTAssertEqualObjects([inflector singularize:@"ministerios"], @"ministerio");
    XCTAssertEqualObjects([inflector singularize:@"gotas"], @"gota");
    XCTAssertEqualObjects([inflector singularize:@"bytes"], @"byte");
    XCTAssertEqualObjects([inflector singularize:@"bits"], @"bit");
    XCTAssertEqualObjects([inflector singularize:@"MBs"], @"MB");
    
    //XCTAssertEqualObjects([inflector singularize:@"anises"], @"anís");
    //XCTAssertEqualObjects([inflector singularize:@"compases"], @"compás");
    //XCTAssertEqualObjects([inflector singularize:@"enes"], @"ene");
    //XCTAssertEqualObjects([inflector singularize:@"nenes"], @"nene");
    //XCTAssertEqualObjects([inflector singularize:@"retenes"], @"retén");
    //XCTAssertEqualObjects([inflector singularize:@"reveses"], @"revés");
    //XCTAssertEqualObjects([inflector singularize:@"santiamenes"], @"santiamén");
}

@end
