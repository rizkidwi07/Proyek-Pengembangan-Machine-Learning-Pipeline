��
�-�-
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��
��
ConstConst*
_output_shapes	
:�*
dtype0*�
value֯Bү�BtheBiBtoBaBandBmyBofBisBinBforBsoByouBitBmeBthatBonBjustBhaveBthisBbeBwasBdoBnotBi’mBbutBwithBallBlikeBhowBatBifBareBupBloveByourBwhatBtimeBimBaboutBpeopleBoneBgetBoutBmuchBnoBwhenBcanBanBit’sBfromBasBthinkBhasBbeenBweBorBnowBdayBwhoBreallyBseeBtheyBonlyBhadBgotBdon’tBwantBuBneverBneedBmoreBknowBitsBbyBbeingBthenBthanBnewBamBwillBtheirBdontBbestBbecauseBwouldBthereBschoolBintoBgoodBeveryBwhyBthemBshouldBoffBlifeBi’veBiveBgoBfirstBdogByearsByearBworkBthoseBthingsBtakeBlongBdaysBcomeByesBwhileBtodayBsomeoneBsomeBshitBseasonBpleaseBotherBohBmyselfBlastBhourBhappyBguyBfriendsBevenBdoesBcan’tBampBalsoBagainBafterBtwoBtooBtakingBsinceBourBokBmadeBherBgoingBgettingBbetterBbackBanyB3B2BusBtopBstillB	somethingBproudBphoneBownBoverBonceBnextBmanyBmakeBlittleBkeepBjobBhomeBhisBheBhateBeyeBelseBdoingBdidBcouldBcantBanyoneBalwaysB
absolutelyBworldBwereBwentBweekBwaitBveryBtryingBtonightBthoughtBtheseBthanksBsherlockBonesBniceBmultipleBmightBhopeBgodBgladBgirlBfunBexcitedBeverBcuteBbcBanythingB6ByeahBwowBwholeBuntilBthoughBthingBthankBtellBsuchBstopBsheBsayBreasonBreadyBplayBpastBoldBmissBlooksB	literallyBletBlateBhouseBhotBhelpBhavingBhardBgonnaBgiveBgameBepisodeBdoorBdadBchanceBcatBcarBbigBbeforeBawayBanymoreBalreadyBactuallyB😭BxBwithinBwhat’sBwellBweirdBwearingBwayBwatchingBwannaB
understandBtypeBtoldBtimesBthinkingBteamBsureBstartB	sometimesBshowBseeingBsaysBsaveBsadBrunningBroomBrealBrandomBpowerBperfectBpartBparcelBoutsideBmovieBmostBmorningBmonthsBmoneyBminutesBmindBlotBlookBleftBlawBlaughBinsteadBinsideBillBiceBhoursBhimBhighBheadBharryBhalfBgreenBgetsBfunnyBfollowBfineBfindBfeelBfaceBeveryoneBenoughBenergyBeachBdueBdrinkBdownBdoneBdoesntBdoctorBcoffeeBclassBbuyingBbuyBblueBbitBbelieveBbedBbadBaroundBarmBanotherBalmostB10B🤮ByourselfByoureByeastB
wonderlandBwinterBwhichBwhereBwearBwalkBvideoBusualBturningBtrynaBtrueBtheyreBthankfulBtaylorBtalkingBtBsupportBsummerBstudioBstudentsBstationBstartedBstandardBspendBsoundsBsongBsobBsitBsingleBshutBshirtBseriousBseriesBseenBsameBsaidBrnBrlyBrightBredBreadingBratherBrapistsBquestionBputBprotectBorderBnothingBnetflixBnameBmouthBmilkBmentallyBmeanBmatBmaskBmanBmakesBloyalBlovesBloseBlolBlmaoBliveB	listeningBlistenBlineBlegBleastBlearnedBleagueB
leadershipBlawnBknockedBkitBjoinBinternetBidBhereBhandsBhandBgrayBgoesBgasBgamesBfriendBformBfoolBfolksBfieldBfeelingBfavoriteBfarBfamilyBfakeBexplainB
everythingBendBembarrassingBeatingBeasyBdyingBdroppingBdecidedBcryingBcreamBcovid19BcovidBcountryBcontactB
commercialBclassesBchickenBchangeBcauseBcannotBcallingBcalledBcallBbunchBbirthdayB	beautifulBbathBbabyBawesomeB
assignmentBaskingBaskedBappleBanthonyBanswerBamericanBalbumBagainstBadultB4B1B🧡B🥲B🤣B🙄B😭😭😭B😬B😂B📼B💕B❤️👹👻💀B♥️B“iByou’reByou’dByetB	yesterdayByaBwritingBwordsB	wonderingBwonderBwomensBwomenBwomanBwokeBwithoutBwishBwisdomBwinningBwindowsBwhiteBwheresBweveBweeksBweekendBwebsiteBweare8officialBwawaBwatchBwasn’tBwashingBwantsBwalkingBwalkedBwakeBwaitingBwaitedBvictimsBvalueB
valentinesButterBuspsBuseBurBuploadBupdateBuniBuhBtweetBtruthBtrustBtrumpBtripBtreeBtrashBtradeBtookBtomorrowBtomBtireBtilburyBtiktokBticketsBthxBthreeBthoughtsBthirdB	they’veB	they’reB	they’llB	there’sBthanksgivingBtextBterribleBtellingBtearsBtalkBsurelyBsupposedBsupposeBsuperBsugarBsuburbanBstudyBstuckBstrongBstickingBstayingBstartsBstartingBstampBspursBspotifyBsoundBsortBsorryBsocialBsnookerBslotBsleepBskzooBskinnyBskinBskillsBsimplyBsignBsideBsickBshoppingBshaunamacd0naldBshameBshadowsBsexualB	seriouslyBsendBselfB	selectionBseasonalBsearchBscoreBscaredBsayingBsauceB
sajidjavidB	safeplaceBruinBripBrememberBregularBrecommendationsBrecipesBrapeBrainBracismBquoteBquesoB
quarantineBputtingBpureBpubBptBps4B	professorBprobablyBproBprisonBprettyBpressB	presidentBpracticeBpotterBplushiesBplayingBplayersBplanB
physicallyBphdBpayB
particularBparticipationBparentsBparentBpandoraBpandemicBpainB	overheardBothersBorangeBopenBokayB
officiallyBoceanBnovelBnoseBnoiseBnickBnicholasvinceB	neighbourB	neighborsBnaturalBnapoleonBnBmustBmowBmoviesBmorganaoreillyBmoodyBmonthBmodernBmochaBmissedBminuteBmintBmileBmetBmessagesBmegtBmeantBmeansBmayBmathBmarketBmakingBlovelyBlookingBlocalBlivingBlivesBlibraryBlewisBletsBlectureBlastexitshirtsBlargeBlaptopBladsBknowsBknockoffBkindBkillBkaneBjulyBjohnBjoeB	jmckeeverBjeezBjarBjakeBisn’tBisntB
interestedBinterestB
incredibleBimmediatelyBimagineBhypotheticallyBhuggingBhttpstcowuwqgbefvpBhorrorBhorribleBholidayBholdBhitB
hereditaryBheardBhahaBguessBgretnaBgreatBgradingBgradeBgradBgoneBgodsBgloomBglassesBgivesBgivenBgirlsBfutureBfullyBfrontBfoundBforwardBforeverBfootballBfoodBfollowsB	followingBfloridaBfinishBfigureBfewB	feeyacruzBfatBfastBfarmBfallBfactBeyesB	extremelyB
experienceBendingBemoBemailsBelopeBelevateBeitherBeatBearlierBduringBdrunkBdrugBdroppedBdreamBdoorsBdoomweB	doesn’tBdisappointedBdidn’tBdevilBdeliverB	decisionsBdecisionBdecadeBdebrisB	daughtersBcryBcourseBcountBcornBcontestBconceptB
completelyBcommonBcolorBcollegeBcnoh3BclosedBcloseBclintonsBcleanBchrisBchoiceB	chocolateBcharmingB	charlotteBcatsBcatalogB	carpenterBcarlBcaptionsBcameBbutterBbusinessBburritoBbuiltBbritishBbringsBbreadBbrainBboyBboughtBboredBbooksBblinkBblastBbiologyBbecomingBbecomeBbathroomBballsBawfulB	availableBautomaticallyBaudacityBassBappearsB
apparentlyBanywayBansweredBanimalsBangerBancientBamongB	americansBamazingBairBaheadBagoBaccidentallyB9B8B65B630pmB5sozB5B30secsB30B2ndB20yrB1stB15B1010B🧡💛B🥺🤍B🥵B🥰B🤷🏻‍♀️B🤪🤪🤪B🤙🏼B🤔B�B🙏🏻B🙈🙈B🙈B🙃🙃🙃B🙃B😭😭B😩B😤B😢B😚B😔B😏B😊B
😂⭕️B😀B🗣🎥B🖤B 🖕🏻🖕🏻🖕🏻🖕🏻B💜💜💜💜B💙B💀B👍😁B👍🏻B👉B🎉👏🎉👏B🍨B🍞🥐🥖B🌽🌽🌽B✨florenceB✨B⚽️B♡B…B“urB“titB“thinkB“quiteB“lookB	“i’llB“ifB“harryB“greatgrandma”B“grandmagreat”B“goingB“females”B	“dad”B“christ”B“butB“anB“americansB
“also”B’B‘yasB‘iB	‘and’B	‘abs’B£18B£1000BzutekhBzoomBzoneBzeroBy’allB	yuenglingByou”ByouveByoutubeByouthByoungerByoullByogaByoByesdayByepByellowByallBxxxxxBwwtslimbridgeBwweBwtfBwrongBwritesBworthBworstBworsenedBworryBworld”B	worldwar3BworksBworkingBworkerBworkedBworeB	wonderfulBwonB	wolverineBwohoooooooooBwobblyBwinnieBwinnerBwindowBwinBwildfowlBwilBwideBwichitaBwhoever’sBwhoeverBwheneverB
whatsoeverBwhatsBwhateverBwhaleBwe’veBwetlandheroesBwetlandB	weren’tBwerentBweekendsB	wednesdayBwearescientistsBwaterBwatchedB	washedoutB	warrantedBwarmB
warehousedBwantedBwanaBwalkinBwBvuBvoxboxBvoteBvonBvoiceBvivoBvislBvisitorsBvisitgloucestershireBvisionBvirusesBvineyards✌🏻B
vinbúðinB	videos”BviaBversionBvenmoedBvenmoBvelvetB
vegetarianBvaxxedBvanBvaluesB	validatorBvalidBvaccineB
vaccinatedBuxBusuallyBusingBuserBusefulBupsetBunsuspectingBunrealB	unpopularB	unpackingBunopenedB	unloadingB	universalBunitedforgoodBunfortunatelyBunfollowingBunfollowBunfoldB
underratedBunderBuhhBuefaBtypingBtyphoonBtwixBtwitterBtwitchtrollsBtwiceBtvBturnBtummyBtsushimaBtshirtBtryBtrollsBtripletsBtrialBtrekBtreatedBtreatBtraumaB
transitionBtraffickingBtowelsBtowardsBtourBtouchedBtouchBtotallyBtoryBtornB
torialou78BtopicalBtopicBtoothBtoobigtoplayfootballBtonsillitisBtongueB	toleranceBtoiletBtogether…BtogetherBtogethaBtoeBtoddlerBtmrwBtiredBtipBtinyBtinnitusBtingzBtilBtiesBtierBtidyBthunderBthroughBthrewBthreeukB	things”BthevaccinesBtheresBtherapyB	therapistBtheoreticalBthechaseBthecauseenduresBthebeastufcBtheatresBthat’sBthatsBtexasBtestingB
testifyingBtestedBtescoB
terrifyingBtensionsB	tenaciousBteethBteeseBteenageBteasBteachersBteacherBteaBtchiaBtaxesBtattooBtatianaBtatBtaskBtartareBtarmackBtargetBtappingBtallestBtalksBtalentedBtalentBtakesBtakenBtabletopBsyrupB
swordfightBswoonBswimmingBswimmerBswimB	swift’sBswiftogeddanBswiftBsweetBsweatyBsweatingBswearBsupremecourtofindiaB
supportingBsupperB
supervisorBsuperpositionBsupermarketBsuperleaguesBsuperiorBsuperbowlhalftimeshowB	superbowlBsunshineBsunlightBsuncountryairBsuingBsuicideBsuckedBsuccessB
substituteBsubjectBsubconsciouslyBstyleBstupidBstuffBstudyingBstudentBstubBstrongerBstripesBstrictB	stressfulBstressBstreetBstreakB
strategiesBstraightBstoryBstoopidBstomachBstolenBstockwa16053563BstimulusB	stiffnessBstgBsteveBstereotypingBstephBstepBstayedBstayBstatesBstateBstarBstandBstanBstakesBstageBstaffB	stabilityBstabbedBsquareBspunkBsprayedBsportsBspoopyBspookyB	sponsoredB
spittin’BspeedsBspeedBspeechBspectrumBspecialBspearsBspanishBspaceBsouthamptonBsourBsoupyB
soundtrackBsoulmateBsoreBsophisticatedBsooooBsoooBsoonB
sonofsama1BsongsBsonB	somewhereBsomewhatBsomeone’sBsomebodyBsolutionBsoleBsoldBsodasBsodaBsocksBsocietyBsocietalBsnowBsnappedB
smokingcatBsmhBsmellBsmashBsmallerBsmBslurBslipB
slimbridgeBslenderBsleepsBsleeperBskippingdelayingBskincareBsittingBsitsBsiteBsisterBsiriBsirBsippyBsingularBsingingBsimultaneouslyBsimpleBsimpingBsimmonsBsilverscasperBsilvacreBsillyBsilenthillsBsightBsighBsiblingsBshowsBshoveBshoutoutBshoutingBshouldveBshortlyB
shorteningBshortageBshopBshoobiesBshoesBshoegazeBshirtsBshiftBshe’sBshesBshelvesBsheetsBsheetBshazBshapedBshapeBshangchiBshakingBshadowBsfBsettingBserviceBsentenceBsentBseniorsBsendingBsellingBsecurityBsecondBsecdefB	searchingBseaBscrewedB
screenplayBscreamBscratchBscorpiosBsciimmunologyBschwabBschool🤗🤗🤗BschoolclosureBscaryB	scantronsBscalpBsaylorBsavingBsavesBsavedBsatBsarahrodriguesxBsantaBsandwichBsalccBsagansBsaganBsafeBsackedB
sabotagingBs9BsBruseB
runnerveryBrumblingBrudeBrtBroyalsBropeB	roommatesBroommateBroofBrogersBrocksBroadBrmoBritualsBringBridgeBrideBridBrhythmicBrhinovirusesB
rfhanrahanBreyBreviewBretrainBretainBresurrectedBresultsBresponsibilityBresearchersBresearchBrequiresB
reputationBreplyBrepeatedBrepeatBrepairedBremixBrelievedBreliefB	releasingBreleasedBrejoiceB
regulationBrediscoveredB
recreationB	receptionBrecentlyBreccBreasonsBrealizedBrealizeBrealisedBrealiseBrealdonaldtrumpBrealcandaceoBreadingsBreadilyBreadBreachesBreBrationBrantBrandoBraisedBraiseBragoninstituteBracialBrBquickB	questionsBquestioningBqueersBqueerBqueen’BquarantinelifeBquarantinedB	quadraticBpuzzleBpupBpumpkinBpumpedBpulledBpughsBpudgyBpublicB
psychopathBps5BproverbBproteinBproperly…BproofofpersonB	promisingBprofsB
professorsBproductsB
productionB
proceedingBproblemsBproblemBprintingB	principalBprimeBprimaryBprideBpreviousB
pretendingBpresentsBpresentationBprepareBpregnantB
preferenceBpreachedB	practicesBpowderBpotusBpotatoB	postcardsBpositiveB	portraitsB
populationBpoohBpooBpontifexBpoliticsforaliB
politicianBpoliteBpokemonBpoisonBpointedBpodcastsBpluckBplaysBplayground🥰”BplayableteaserBplanetBplacedBplaceBpitchersBpissedBpinkBpinchBpillBpileBpiercingBpieceBpicksBpicklesBpickBphotographyBphobiasB
petsathomeB
petergwallBpetBperspectiveBpersonBperformanceBpepsicoBpepsiBpeeB
pedophilesBpeanutBpeaceBpccBpassedBpassBpartyBpartiesBparkBparasiteBparadiseBpaperB	pantslessBpantsBpaletteBpainfulBpaidB	pacifiersBpBowesBovivoBoverlyspecificB	overjoyedBoutsBoutfitBoutageBoscarBorphanblackBoriginalBorderedBoralBoptionsBopinionBopensBoopsBooBontoBone🙈BomgBolilogicBoldhamBoktotryBoffskiBofficiatingBocdBobviousB	obsessionBoaklandBnumberBnuggetBnudgeBnowtheBnotificationBnoticeB	nostalgicBnose✨B
normalisedB	normaliseBnorBnoodlesBnonstop🥰😍BnonnonconformistsB	nonbinaryBnoisesBnobodyB
nightmaresBnighterBnickiBnglBnffcBnetworkB	netflixukBnervousB
neighboursBneighborBneededBnearlyBnearBncfcB	naturallyBnationalfoodstrategyBnationalB
nathan’sBnappingBnamesBmustardBmuseumB	murderersBmurderB
multipliedB
mspairportBmsBmrBmovedBmoveBmousseB
motivationB	mother”BmotherBmortalBmoodBmontypythonesquedissesBmontanaBmonstaBmomsBmomBmmorpgBmmmmBmmmBmixtureBmissionBmissingBmispronunciationsBmiracleBminuetsBmindsBminajBmillionsB
mikepompeoBmiddleBmicsBmichaelsaylorBmichaelBme🥺BmeticulouslyBmethodBmessingBmessageBmenuBmenBmemesBmellaBmeetingBmedicineBmeasureBmcuBmcd’sBmaybeBmaxtayl83630497BmatureBmatthewstadlenBmatteredBmatterBmaterialBmatchesBmatchBmasterpieceBmassBmaslanyBmascBmarxistsBmartiniBmarriedBmarriageBmarkBmariekondo’sB
marcorubioBmarathonBmanipediB
manchesterBmakeupBmajornelsonBmajorlyBmajorityBmailBmadBlyingB	luxuriousBluvBlunchBluka7doncicBluckyBluckBlt3BlowfiBlowBlovingBlovedBloudbangBlotionBlossBlordeBloooolBlongerBlondonBlolalatigresaBlockdownBlmfaoBlitteredBlitB	listenersBlistBlisa’sBlisaB	linmanuelBlinkBlinerBlinedBlimeBlikelyBliftB	lifestyleBlifesizeBliedBlicenseB	librarianBlibertyBliberianBliarBlet’sBletsmakeitawkwardBlessonBlessBlesBlegsBlegosBleggedBleedsBlecturerBleavingBleaveBlearnBlayersBlayBlaundryBlatinxBlaterBlandBlanaBlalisaBladiesBlactoseBkonamiBkojimaBknowingBknockBknitBknifeBknewB	knackeredBkittiesBkissBkingBkimBkilledBkidsBkidBkentBkensiwellingtonBkeepsBkBjusticBjuneBjumpyB	jumpsuitsBjuicyBjrBjoyBjojofromjerzBjohnsonBjogBjoelxclusiveBjoebidenBjesusBjessicachung13BjenniferBjejunumBjeanBjazzBjanet67866039BjacobBjacketBjabsBi’dBitselfBitemBitalyBissuesBislandBirwinsBiphoneBinvolvesBinviteBintroductionsB
intolerantBinterrogationBinternationalB	interestsB
intellectsB
insteadingBinstantB	instagramB	insomniacBinsomniaB
insightfulBinpersonBinjuryBinjuriesB
initiativeB	ingestingBinformationB	influenzaBinfluensterB
infidelityBinfectiouslyBindustryB
incrediblyBincomeBinchB	impressedB	importantB
impedimentBillusionBiliumBikBigreen95BignoredB	ignoranceBidkBidgafBidenanetworkBidenainviteBideaBichazevinciBibizaBhypedBhurtsBhungBhumbledBhumansBhumanityBhumanBhugBhttptcow5hn4mwBhttpstcoz63urpkx93BhttpstcoysbdnqvwlrBhttpstcoww4ihvkdz2Bhttpstcowpsyo8zqx8Bhttpstcouvlkji9s5hBhttpstcos2ldoojlerBhttpstcoqcuo6i9sqqBhttpstcoob0ky1u2rrBhttpstcomvhegfoxw8BhttpstcomnjwouhhtuBhttpstcokkpzfctcshBhttpstcoikcnfsarjdBhttpstcoidxtj7kucpBhttpstcohn5xtp8wjdBhttpstcogjocqn4o8lBhttpstcog3q6ozj2t1BhttpstcofzfblfjdqoBhttpstcofq2whrywd2Bhttpstcodywkj7szelBhttpstcociby5tn9s6Bhttpstcocawxnt2vcpBhttpstcobbiq7zys3xBhttpstcobbhd4bwonnBhttpstcoam9dutvfmqBhttpstco8vtofksam5Bhttpstco5tame4aso6Bhttpstco3ivuj8ol4gBhttpstco3eidxqpotjBhttpstco2e2bcmrovkBhttpstco1lkhvyupieBhttpstco0c2ifipy8lB
howwwwwwwwBhowardBhousingBhouseohB	hospitalsBhopingBhoneyBhonestlyBhonestBhomiesBhomemadeBhomelandBhollandBholbyBhokiesBhochosBhmuBhmmmBhistoryBhissB	hindsightBhim”B	hilariousBhighlyBhidingBhiatusBhiBheyBhesBhenriBhelpedBhellBheelysBheelsBheavilyBheatedBheatB
heartbreakBhearingBhearBhealtheconomicsBhealthBheadteacherB	headfirstB	headachesBhaventBhaterBhasn’tBhappenedBhannahBhamiltonB	halloweenBhacksawBgyozaBguysBguiltyBguessingBgrowsBgrownBgrowlBgrowBgroundedBgritsBgrippedBgrilledBgrievingBgreyBgregBgreeksBgreedyBgreedBgratefulB
grassrootsBgrandparentsBgranBgrammyBgradualBgraderB
governmentBgotyBgottaBgotrumpBgossipBgoshBgorgeousBgoogleBgoodnessBgoodbyeBgoldBgoghB
goalie’sBgoalBgloucestershireB	glitch031BglasgowBgivingBgigBgiftBghostBgfsB	genuinelyBgentleB	generatorB	geekcubedBgeeB
gatheringsBgatherBgateBgarnerBgainBgBfumingBfullBfuckingBfuckinBfuckBftBfryerBfrustratingB
frustratedBfrozenBfringeB
friendliesBfriedBfree”BfreedomBfranticallyB	franchiseB	frameworkBfractionBfourthBformulaBformalitiesBforgotB
forgettingBforgetBfordBforceB	footnotesBfootBfollowerBfoldingBflungBflowsBflowersBfloorBflightBflickBflewBflavorsBflavorBfixBfiveBfittedBfirmB	fireworksBfirearmsBfionaB	finishingBfinishedBfingeredBfindingBfinalsBfinallyBfinalBfilmsBfilmBfillingBfightersBfifaBfieldofdreamsgameBfianceBffxivBfeverBfeminismBfeeyaBfeetBfeelsBfdaB	favouriteB	fantasticBfanciesBfanB	familyfunBfamiliesBfallsBfaithfulBfairlyBfailurepoliticiansBfailsBfactsB
facetimingBfaBf1Beye”BextraBextendedB
expressingBexperiencingB	expensiveBexitedB	exists”BexistingBexistBexcuseBexcommunicationB	excellentBexactlyBevolvedBevolutionaryB
everywhereBeverything’sB
eventuallyBevansBeuropeanBeulersBeuBethosBetcBesteemB	essentialBermbopB	erictopolBenvironmentalBentriesBentireBenterovirusesBenteringBenteredBenjoyBenglandBenemyBendlessB	encrustedBemptyBemotionallyBemmBelliekonskerB	elizableuBeliteBelectionBelectB
egomaniacsBeflBeffortB	efficientB	effectiveBeducationalB	educationBeducateBeditingB	edinburghBedgeBedcBeastersundayBeasportsufcBeasilyBearthBearsBearlyBearBeBdyslexicBdynamiteBdyianobrinsBduodenumBduncanedwards03BdumbBduhBdudeBdryBdrumsBdroveBdriversBdriveBdressBdreamsBdrawB	downrightBdownloadBdoubtBdonnyBdonaldjtrumpjrBdogsBdmBdiveBditaBdistantB
distancingB
dissipatesBdisorientedBdislikeBdishesBdishearteningB	disgustedBdisgraceB
discoveredBdisappearedBdirtyBdirectedB	differentBdidntBdiapersBdiamondB	diagnosisBdewBdevitoB	developedBdetailedBdestinationBdespiseBdesperatehousewivesBdeskBdeserveB	describedBdescribeBderrickB
depressingBdeleyBdelBdejaB
dehydratedBdefoB
definitelyBdeeBdecisiveBdecentBdebtBdebatingBdeathBdearBdeadlineBdcmmaBday’sBdatingBdata”BdarkBdannyB	dangerousBdancerBdanceBdamnèdBdamnBdadsBdBcuzBcutBcustomsBcurryBcurrencyBcupsBcupBculturlaBculturesBculturedBcultureBcuddlesBcuckedBcrushedBcruiseB	crocodileB
criticallyBcriminalBcrimeBcriedBcreatorBcreativeBcreateBcrazyBcravingBcraftingBcrackBcowsB	covidiotsBcoupleBcounterB
couldn’tBcoughBcouch”BcottageBcostBcorsaBcorporationsBcorpBcoronavirusupdateBcoronavirusesBcoronavirusBcornyBcornerBcopingBcopierBcopeBcoolestvesteverBcoolBcookedBconversationsBcontrolBcontractBcontinueBcontextBcontestsBcontestantsB	contenderB
containingB	consumingBconstellations😭B
consistentBconsiderBconsequencesB	connectedBcongratulationsBcongratsB	confusingBconfusedB
confidenceB
conferenceB	condemnedB	concievedB	concernedBconcernBcomplimentaryB
complainedBcomparedB	communityBcommitBcommentBcomingBcomicBcomfortableBcomfortBcomesB
colman’sBcollectB
colleaguesBcollarBcoldsBcoldBcoinsBcoincidenceBcocteauBclothingBclocksBclinicalBclimbingBclickbaitnetflixBclearlyBclearBcivilizationBcityBcismenB	christmasBchosenB	chipotlesBchillBchildishBchicagoBcheugyBchestBcherryB
cheesecakeBcheeseBchecksBcheckedBcheaperBchaseB	charlatanB
chargeradaBchangingBchampionshipBchairsBchairBcellsB	celebrityB
celebratesBcat”BcatholicBcataanBcasualtyBcastingadloBcashierBcasesB
caruso’sBcartsBcarryBcarlileBcaringBcareB	canistersBcandlelightBcancelBcakeBcacaoBc4BbusinessmenBbusBburningBburnhamB	burlesqueBbun…BbullshitBbuffsBbuddenBbuckBbrutallyBbrutalBbruhBbroughtBbrotherBbrokenBbroBbrittneyBbritneyBbristolBbringB	brilliantBbrightonBbridgeBbrexitshamblesBbrexiterBbrexitB	brentfordBbreatheBbreakingBbrandiBbradleyBbracesBboysBboyfriend’sBboxesBboxBbottleBbothBbornBboringBboqorofceelBboppyBboomersBboomerBbookedBbookBbonuspointsBbonusB	boneparteBbondsBbombB	bodyguardBbodyBbodBbobbyBboB	bluetoothBblowjobs’B
blockchainB
blindsidedBblendBblastingBblanketwearing—iBblackB
bitternessBbiteBbishopBbirthBbingosB	bimonthlyBbilcBbigotBbiggestBbiggerBbidetBbidensBbidenBbibleBbeyondBbetaBbenefitsBbenB	beginningBbeastBbeachBbdayBbcosB
bbcsnookerBbbcqtBbbconeBbbc2BbatteryBbasketsBbasketB	basicallyBbasicBbartBbarsBbareBbarbieBbarbaraBbarBbannedBbangsBbaneBbananasBbananaBbanalincolnlogsBballBbaldBbalanceBbakingBbakedBbacon”BbaconB	backstageB
backgroundBbachelorBawwwwBawonderland’sBawhileBaweBawareBavoidB
avatarodinBauthoritarianBaustraliafiresB	australiaBaugustBaudienceBaubviouslynotBauBassumeBassistedBassignedBassholesB
assaultersBaskBasianBartistsBartBarsenalBargumentBare😀BarentBaprilB
appreciateBappliesBappealBanywaysBanytimeB
anyone’sBanxiousBantivaxxersBantiqueBantifootballBanticsB
annoyinglyBannoyingBannouncementBannewheatonBannaB
animaniacsBanimalBandreB	ancestorsBampampBamountBamishB	ambulanceBamazonBalmondBalloysBallowingBallowedBallowBallergicBaliveBalexBalejandrathfcB	akinfenwaBakaBajaxB	ahahahahaBahBagingBageoldBagenttechawayBagentmarketingBagedB
afterwardsB	afternoonB
affordableB	aewalloutBadvisedBadorableBadenovirusesBadebayoBaddingBaddBadBacuBactiveBactingBacquiredBacneBackleyBaccusationsBaccountBaccomplishedB	acclaimedBacademicBabtBabroadBabilityBaaronbastaniB9kB930amB91B8thB80B772827B76ersB750gB6thB630B60B5amB510B4thB455B45B430B3rdB39B26B256B247B230am👀🙏B22ndB21stB21B2021B2020B2000sB20B19thB1829B18B16B1406B135B130B13B12B10000B04B010B0
��
Const_1Const*
_output_shapes	
:�*
dtype0	*�
value٥Bե	�"ȥ                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_4Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/v
�
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	�N*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/m
�
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	�N*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_24198*
value_dtype0	
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name27101*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@ *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�N*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_examples
hash_tableConst_5Const_4Const_3embedding/embeddingsdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_32147
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_33140
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_33155
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�K
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�K
value�JB�J B�J
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures*
* 

	keras_api* 
;
	keras_api
_lookup_layer
_adapt_function*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict* 
5
1
*2
+3
24
35
:6
;7*
5
0
*1
+2
23
34
:5
;6*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�*

Xserving_default* 
* 
* 
7
Y	keras_api
Zlookup_table
[token_counts*

\trace_0* 

0*

0*
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

itrace_0* 

jtrace_0* 

*0
+1*

*0
+1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
y
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*

�	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 

�serving_default* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst_6*-
Tin&
$2"		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_33315
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/embedding/embeddings/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_33427��
�
F
__inference__creator_33150
identity: ��MutableHashTable�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_24198*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�

�
'__inference_model_1_layer_call_fn_32447
tweet_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltweet_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_32422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
tweet_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_32931

inputsZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	3
 embedding_embedding_lookup_32902:	�N8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@ 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�embedding/embedding_lookup�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_1/ReshapeReshapeinputs#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_32902Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/32902*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/32902*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������ds
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^embedding/embedding_lookupJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_32398

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
R
__inference_pruned_32000

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:���������\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:���������U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:���������[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:���������^

Identity_1IdentityStringLower:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
.
__inference__initializer_33155
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
'__inference_dense_5_layer_call_fn_33090

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_32415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_dense_4_layer_call_fn_33070

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_32398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_33101

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
'__inference_model_1_layer_call_fn_32821

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_32422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�t
�
B__inference_model_1_layer_call_and_return_conditional_losses_32588

inputsZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	"
embedding_32568:	�N
dense_3_32572:@
dense_3_32574:@
dense_4_32577:@ 
dense_4_32579: 
dense_5_32582: 
dense_5_32584:
identity��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_1/ReshapeReshapeinputs#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_32568*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_32365�
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241�
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_3_32572dense_3_32574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_32381�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_32577dense_4_32579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_32398�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_32582dense_5_32584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_32415w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
]
#__inference_signature_wrapper_32008

inputs	
inputs_1
identity	

identity_1�
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_32000`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�

�
&__inference_restore_from_tensors_33386M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: @
<mutablehashtable_table_restore_lookuptableimportv2_restorev2B
>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1	
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable<mutablehashtable_table_restore_lookuptableimportv2_restorev2>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes

: ::2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:) %
#
_class
loc:@MutableHashTable:C?
#
_class
loc:@MutableHashTable

_output_shapes
::C?
#
_class
loc:@MutableHashTable

_output_shapes
:
�
U
:__inference_transform_features_layer_1_layer_call_fn_32272	
tweet
identity�
PartitionedCallPartitionedCalltweet*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32269`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:N J
'
_output_shapes
:���������

_user_specified_nametweet
�
,
__inference__destroyer_33160
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
��
�	
&__inference_serve_tf_examples_fn_32118
examplesb
^model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handlec
_model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	9
5model_1_text_vectorization_3_string_lookup_11_equal_y<
8model_1_text_vectorization_3_string_lookup_11_selectv2_t	;
(model_1_embedding_embedding_lookup_32089:	�N@
.model_1_dense_3_matmul_readvariableop_resource:@=
/model_1_dense_3_biasadd_readvariableop_resource:@@
.model_1_dense_4_matmul_readvariableop_resource:@ =
/model_1_dense_4_biasadd_readvariableop_resource: @
.model_1_dense_5_matmul_readvariableop_resource: =
/model_1_dense_5_biasadd_readvariableop_resource:
identity��&model_1/dense_3/BiasAdd/ReadVariableOp�%model_1/dense_3/MatMul/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�"model_1/embedding/embedding_lookup�Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB t
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBtweetj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB �
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0*
Tdense
2*'
_output_shapes
:���������*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 z
 transform_features_layer_1/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:x
.transform_features_layer_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer_1/strided_sliceStridedSlice)transform_features_layer_1/Shape:output:07transform_features_layer_1/strided_slice/stack:output:09transform_features_layer_1/strided_slice/stack_1:output:09transform_features_layer_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
"transform_features_layer_1/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:z
0transform_features_layer_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2transform_features_layer_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2transform_features_layer_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*transform_features_layer_1/strided_slice_1StridedSlice+transform_features_layer_1/Shape_1:output:09transform_features_layer_1/strided_slice_1/stack:output:0;transform_features_layer_1/strided_slice_1/stack_1:output:0;transform_features_layer_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)transform_features_layer_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
'transform_features_layer_1/zeros/packedPack3transform_features_layer_1/strided_slice_1:output:02transform_features_layer_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
&transform_features_layer_1/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
 transform_features_layer_1/zerosFill0transform_features_layer_1/zeros/packed:output:0/transform_features_layer_1/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
1transform_features_layer_1/PlaceholderWithDefaultPlaceholderWithDefault)transform_features_layer_1/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
*transform_features_layer_1/PartitionedCallPartitionedCall:transform_features_layer_1/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:0*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_32000u
"model_1/tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_1/tf.reshape_1/ReshapeReshape3transform_features_layer_1/PartitionedCall:output:1+model_1/tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_1/text_vectorization_3/StringLowerStringLower%model_1/tf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
/model_1/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_1/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_1/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_1/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_1/text_vectorization_3/StaticRegexReplace:output:07model_1/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_1/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_1/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_1/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_1/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_1/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_1/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_1/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_1/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_1/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_1/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_1/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_1/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_1/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle?model_1/text_vectorization_3/StringSplit/StringSplitV2:values:0_model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3model_1/text_vectorization_3/string_lookup_11/EqualEqual?model_1/text_vectorization_3/StringSplit/StringSplitV2:values:05model_1_text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
6model_1/text_vectorization_3/string_lookup_11/SelectV2SelectV27model_1/text_vectorization_3/string_lookup_11/Equal:z:08model_1_text_vectorization_3_string_lookup_11_selectv2_tZmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6model_1/text_vectorization_3/string_lookup_11/IdentityIdentity?model_1/text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_1/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_1/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_1/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_1/text_vectorization_3/RaggedToTensor/Const:output:0?model_1/text_vectorization_3/string_lookup_11/Identity:output:0Bmodel_1/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_1/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_1/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_1/embedding/embedding_lookupResourceGather(model_1_embedding_embedding_lookup_32089Imodel_1/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_1/embedding/embedding_lookup/32089*+
_output_shapes
:���������d*
dtype0�
+model_1/embedding/embedding_lookup/IdentityIdentity+model_1/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_1/embedding/embedding_lookup/32089*+
_output_shapes
:���������d�
-model_1/embedding/embedding_lookup/Identity_1Identity4model_1/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d{
9model_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_1/global_average_pooling1d_1/MeanMean6model_1/embedding/embedding_lookup/Identity_1:output:0Bmodel_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_1/dense_3/MatMulMatMul0model_1/global_average_pooling1d_1/Mean:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_1/dense_3/ReluRelu model_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_1/dense_4/MatMulMatMul"model_1/dense_3/Relu:activations:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� p
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_1/dense_5/MatMulMatMul"model_1/dense_4/Relu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_1/dense_5/SigmoidSigmoid model_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentitymodel_1/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp#^model_1/embedding/embedding_lookupR^model_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2H
"model_1/embedding/embedding_lookup"model_1/embedding/embedding_lookup2�
Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�t
�
B__inference_model_1_layer_call_and_return_conditional_losses_32788
tweet_xfZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	"
embedding_32768:	�N
dense_3_32772:@
dense_3_32774:@
dense_4_32777:@ 
dense_4_32779: 
dense_5_32782: 
dense_5_32784:
identity��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������|
tf.reshape_1/ReshapeReshapetweet_xf#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_32768*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_32365�
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241�
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_3_32772dense_3_32774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_32381�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_32777dense_4_32779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_32398�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_32782dense_5_32784*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_32415w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:���������
"
_user_specified_name
tweet_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
'__inference_model_1_layer_call_fn_32640
tweet_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltweet_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_32588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
tweet_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�E
�
__inference__traced_save_33315
file_prefix3
/savev2_embedding_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�N:@:@:@ : : :: : : : : ::: : : : :	�N:@:@:@ : : ::	�N:@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: :  

_output_shapes
::!

_output_shapes
: 
�

�
'__inference_model_1_layer_call_fn_32848

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_32588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_32365

inputs	)
embedding_lookup_32359:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_32359inputs*
Tindices0	*)
_class
loc:@embedding_lookup/32359*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/32359*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
:
__inference__creator_33132
identity��
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name27101*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
__inference_save_fn_33179
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:�
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
~
)__inference_embedding_layer_call_fn_33021

inputs	
unknown:	�N
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_32365s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
#__inference_signature_wrapper_32147
examples
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_serve_tf_examples_fn_32118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
w
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_33127
inputs_tweet
identityA
ShapeShapeinputs_tweet*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskC
Shape_1Shapeinputs_tweet*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs_tweet*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_32000`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:U Q
'
_output_shapes
:���������
&
_user_specified_nameinputs/tweet
Ћ
�	
 __inference__wrapped_model_32231
tweet_xfb
^model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handlec
_model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	9
5model_1_text_vectorization_3_string_lookup_11_equal_y<
8model_1_text_vectorization_3_string_lookup_11_selectv2_t	;
(model_1_embedding_embedding_lookup_32202:	�N@
.model_1_dense_3_matmul_readvariableop_resource:@=
/model_1_dense_3_biasadd_readvariableop_resource:@@
.model_1_dense_4_matmul_readvariableop_resource:@ =
/model_1_dense_4_biasadd_readvariableop_resource: @
.model_1_dense_5_matmul_readvariableop_resource: =
/model_1_dense_5_biasadd_readvariableop_resource:
identity��&model_1/dense_3/BiasAdd/ReadVariableOp�%model_1/dense_3/MatMul/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�"model_1/embedding/embedding_lookup�Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2u
"model_1/tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_1/tf.reshape_1/ReshapeReshapetweet_xf+model_1/tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_1/text_vectorization_3/StringLowerStringLower%model_1/tf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
/model_1/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_1/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_1/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_1/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_1/text_vectorization_3/StaticRegexReplace:output:07model_1/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_1/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_1/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_1/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_1/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_1/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_1/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_1/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_1/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_1/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_1/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_1/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_1/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_1/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_1/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_1/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle?model_1/text_vectorization_3/StringSplit/StringSplitV2:values:0_model_1_text_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3model_1/text_vectorization_3/string_lookup_11/EqualEqual?model_1/text_vectorization_3/StringSplit/StringSplitV2:values:05model_1_text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
6model_1/text_vectorization_3/string_lookup_11/SelectV2SelectV27model_1/text_vectorization_3/string_lookup_11/Equal:z:08model_1_text_vectorization_3_string_lookup_11_selectv2_tZmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6model_1/text_vectorization_3/string_lookup_11/IdentityIdentity?model_1/text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_1/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_1/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_1/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_1/text_vectorization_3/RaggedToTensor/Const:output:0?model_1/text_vectorization_3/string_lookup_11/Identity:output:0Bmodel_1/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_1/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_1/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_1/embedding/embedding_lookupResourceGather(model_1_embedding_embedding_lookup_32202Imodel_1/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_1/embedding/embedding_lookup/32202*+
_output_shapes
:���������d*
dtype0�
+model_1/embedding/embedding_lookup/IdentityIdentity+model_1/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_1/embedding/embedding_lookup/32202*+
_output_shapes
:���������d�
-model_1/embedding/embedding_lookup/Identity_1Identity4model_1/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d{
9model_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_1/global_average_pooling1d_1/MeanMean6model_1/embedding/embedding_lookup/Identity_1:output:0Bmodel_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_1/dense_3/MatMulMatMul0model_1/global_average_pooling1d_1/Mean:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_1/dense_3/ReluRelu model_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_1/dense_4/MatMulMatMul"model_1/dense_3/Relu:activations:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� p
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_1/dense_5/MatMulMatMul"model_1/dense_4/Relu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_1/dense_5/SigmoidSigmoid model_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentitymodel_1/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp#^model_1/embedding/embedding_lookupR^model_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2H
"model_1/embedding/embedding_lookup"model_1/embedding/embedding_lookup2�
Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Qmodel_1/text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:���������
"
_user_specified_name
tweet_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_32415

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_33030

inputs	)
embedding_lookup_33024:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_33024inputs*
Tindices0	*)
_class
loc:@embedding_lookup/33024*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/33024*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_33081

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
\
:__inference_transform_features_layer_1_layer_call_fn_33106
inputs_tweet
identity�
PartitionedCallPartitionedCallinputs_tweet*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32269`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:U Q
'
_output_shapes
:���������
&
_user_specified_nameinputs/tweet
�
V
:__inference_global_average_pooling1d_1_layer_call_fn_33035

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_33041

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�t
�
B__inference_model_1_layer_call_and_return_conditional_losses_32422

inputsZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	"
embedding_32366:	�N
dense_3_32382:@
dense_3_32384:@
dense_4_32399:@ 
dense_4_32401: 
dense_5_32416: 
dense_5_32418:
identity��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_1/ReshapeReshapeinputs#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_32366*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_32365�
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241�
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_3_32382dense_3_32384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_32381�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_32399dense_4_32401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_32398�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_32416dense_5_32418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_32415w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_dense_3_layer_call_fn_33050

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_32381o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
p
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32298	
tweet
identity:
ShapeShapetweet*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask<
Shape_1Shapetweet*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0tweet*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_32000`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:N J
'
_output_shapes
:���������

_user_specified_nametweet
�
,
__inference__destroyer_33145
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�F
�
__inference_adapt_step_31214
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	��IteratorGetNext�(None_lookup_table_find/LookupTableFindV2�,None_lookup_table_insert/LookupTableInsertV2�
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:���������*"
output_shapes
:���������*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:����������
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:���������:���������:���������*
out_idx0	�
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:�
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
�}
�
!__inference__traced_restore_33427
file_prefix8
%assignvariableop_embedding_embeddings:	�N3
!assignvariableop_1_dense_3_kernel:@-
assignvariableop_2_dense_3_bias:@3
!assignvariableop_3_dense_4_kernel:@ -
assignvariableop_4_dense_4_bias: 3
!assignvariableop_5_dense_5_kernel: -
assignvariableop_6_dense_5_bias:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: 
mutablehashtable: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: B
/assignvariableop_16_adam_embedding_embeddings_m:	�N;
)assignvariableop_17_adam_dense_3_kernel_m:@5
'assignvariableop_18_adam_dense_3_bias_m:@;
)assignvariableop_19_adam_dense_4_kernel_m:@ 5
'assignvariableop_20_adam_dense_4_bias_m: ;
)assignvariableop_21_adam_dense_5_kernel_m: 5
'assignvariableop_22_adam_dense_5_bias_m:B
/assignvariableop_23_adam_embedding_embeddings_v:	�N;
)assignvariableop_24_adam_dense_3_kernel_v:@5
'assignvariableop_25_adam_dense_3_bias_v:@;
)assignvariableop_26_adam_dense_4_kernel_v:@ 5
'assignvariableop_27_adam_dense_4_bias_v: ;
)assignvariableop_28_adam_dense_5_kernel_v: 5
'assignvariableop_29_adam_dense_5_bias_v:
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�StatefulPartitionedCall�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_4_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_4_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_5_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0�
StatefulPartitionedCallStatefulPartitionedCallmutablehashtableRestoreV2:tensors:12RestoreV2:tensors:13"/device:CPU:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_restore_from_tensors_33386_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_3_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_3_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_embedding_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_3_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_3_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_4_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_4_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_5_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_5_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp^StatefulPartitionedCall"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_922
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
q
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32269

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_32000`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference__initializer_331408
4key_value_init27100_lookuptableimportv2_table_handle0
,key_value_init27100_lookuptableimportv2_keys2
.key_value_init27100_lookuptableimportv2_values	
identity��'key_value_init27100/LookupTableImportV2�
'key_value_init27100/LookupTableImportV2LookupTableImportV24key_value_init27100_lookuptableimportv2_table_handle,key_value_init27100_lookuptableimportv2_keys.key_value_init27100_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init27100/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2R
'key_value_init27100/LookupTableImportV2'key_value_init27100/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_32381

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�t
�
B__inference_model_1_layer_call_and_return_conditional_losses_32714
tweet_xfZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	"
embedding_32694:	�N
dense_3_32698:@
dense_3_32700:@
dense_4_32703:@ 
dense_4_32705: 
dense_5_32708: 
dense_5_32710:
identity��dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������|
tf.reshape_1/ReshapeReshapetweet_xf#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_32694*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_32365�
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_32241�
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_3_32698dense_3_32700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_32381�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_32703dense_4_32705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_32398�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_32708dense_5_32710*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_32415w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:���������
"
_user_specified_name
tweet_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_33014

inputsZ
Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_11_equal_y4
0text_vectorization_3_string_lookup_11_selectv2_t	3
 embedding_embedding_lookup_32985:	�N8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@ 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�embedding/embedding_lookup�Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2m
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_1/ReshapeReshapeinputs#tf.reshape_1/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_1/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_11_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_11/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_11_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/SelectV2SelectV2/text_vectorization_3/string_lookup_11/Equal:z:00text_vectorization_3_string_lookup_11_selectv2_tRtext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_11/IdentityIdentity7text_vectorization_3/string_lookup_11/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_11/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_32985Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/32985*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/32985*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������ds
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_3/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^embedding/embedding_lookupJ^text_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_11/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_33061

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
__inference_restore_fn_33188
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :N
IdentityIdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1"�	L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
examples-
serving_default_examples:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict"
_tf_keras_model
Q
1
*2
+3
24
35
:6
;7"
trackable_list_wrapper
Q
0
*1
+2
23
34
:5
;6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
'__inference_model_1_layer_call_fn_32447
'__inference_model_1_layer_call_fn_32821
'__inference_model_1_layer_call_fn_32848
'__inference_model_1_layer_call_fn_32640�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
B__inference_model_1_layer_call_and_return_conditional_losses_32931
B__inference_model_1_layer_call_and_return_conditional_losses_33014
B__inference_model_1_layer_call_and_return_conditional_losses_32714
B__inference_model_1_layer_call_and_return_conditional_losses_32788�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�
P	capture_1
Q	capture_2
R	capture_3B�
 __inference__wrapped_model_32231tweet_xf"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�"
	optimizer
,
Xserving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
L
Y	keras_api
Zlookup_table
[token_counts"
_tf_keras_layer
�
\trace_02�
__inference_adapt_step_31214�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
)__inference_embedding_layer_call_fn_33021�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
D__inference_embedding_layer_call_and_return_conditional_losses_33030�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
':%	�N2embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
:__inference_global_average_pooling1d_1_layer_call_fn_33035�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_33041�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
'__inference_dense_3_layer_call_fn_33050�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_33061�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
 :@2dense_3/kernel
:@2dense_3/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
'__inference_dense_4_layer_call_fn_33070�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_33081�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
 :@ 2dense_4/kernel
: 2dense_4/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
'__inference_dense_5_layer_call_fn_33090�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
trace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_33101�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
 : 2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
:__inference_transform_features_layer_1_layer_call_fn_32272
:__inference_transform_features_layer_1_layer_call_fn_33106�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_33127
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32298�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map"
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_1_layer_call_fn_32447tweet_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_1_layer_call_fn_32821inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_1_layer_call_fn_32848inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_1_layer_call_fn_32640tweet_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_1_layer_call_and_return_conditional_losses_32931inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_1_layer_call_and_return_conditional_losses_33014inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_1_layer_call_and_return_conditional_losses_32714tweet_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_1_layer_call_and_return_conditional_losses_32788tweet_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�
P	capture_1
Q	capture_2
R	capture_3B�
#__inference_signature_wrapper_32147examples"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
�
�	capture_1B�
__inference_adapt_step_31214iterator"�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_embedding_layer_call_fn_33021inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_embedding_layer_call_and_return_conditional_losses_33030inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_global_average_pooling1d_1_layer_call_fn_33035inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_33041inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_3_layer_call_fn_33050inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_33061inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_4_layer_call_fn_33070inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_33081inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_5_layer_call_fn_33090inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_5_layer_call_and_return_conditional_losses_33101inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_transform_features_layer_1_layer_call_fn_32272tweet"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_transform_features_layer_1_layer_call_fn_33106inputs/tweet"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_33127inputs/tweet"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32298tweet"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn"
_generic_user_object
0B.
__inference_pruned_32000inputsinputs_1
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
�
�trace_02�
__inference__creator_33132�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_33140�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_33145�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_33150�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_33155�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_33160�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
!J	
Const_2jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
�B�
__inference__creator_33132"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_33140"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_33145"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_33150"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_33155"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_33160"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
#__inference_signature_wrapper_32008inputsinputs_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
,:*	�N2Adam/embedding/embeddings/m
%:#@2Adam/dense_3/kernel/m
:@2Adam/dense_3/bias/m
%:#@ 2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:# 2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
,:*	�N2Adam/embedding/embeddings/v
%:#@2Adam/dense_3/kernel/v
:@2Adam/dense_3/bias/v
%:#@ 2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:# 2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
�B�
__inference_save_fn_33179checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_33188restored_tensors_0restored_tensors_1"�
���
FullArgSpec
args� 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	�	6
__inference__creator_33132�

� 
� "� 6
__inference__creator_33150�

� 
� "� 8
__inference__destroyer_33145�

� 
� "� 8
__inference__destroyer_33160�

� 
� "� A
__inference__initializer_33140Z���

� 
� "� :
__inference__initializer_33155�

� 
� "� �
 __inference__wrapped_model_32231sZPQR*+23:;1�.
'�$
"�
tweet_xf���������
� "1�.
,
dense_5!�
dense_5���������j
__inference_adapt_step_31214J[�?�<
5�2
0�-�
����������IteratorSpec 
� "
 �
B__inference_dense_3_layer_call_and_return_conditional_losses_33061\*+/�,
%�"
 �
inputs���������
� "%�"
�
0���������@
� z
'__inference_dense_3_layer_call_fn_33050O*+/�,
%�"
 �
inputs���������
� "����������@�
B__inference_dense_4_layer_call_and_return_conditional_losses_33081\23/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� z
'__inference_dense_4_layer_call_fn_33070O23/�,
%�"
 �
inputs���������@
� "���������� �
B__inference_dense_5_layer_call_and_return_conditional_losses_33101\:;/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� z
'__inference_dense_5_layer_call_fn_33090O:;/�,
%�"
 �
inputs��������� 
� "�����������
D__inference_embedding_layer_call_and_return_conditional_losses_33030_/�,
%�"
 �
inputs���������d	
� ")�&
�
0���������d
� 
)__inference_embedding_layer_call_fn_33021R/�,
%�"
 �
inputs���������d	
� "����������d�
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_33041{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
:__inference_global_average_pooling1d_1_layer_call_fn_33035nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
B__inference_model_1_layer_call_and_return_conditional_losses_32714oZPQR*+23:;9�6
/�,
"�
tweet_xf���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_32788oZPQR*+23:;9�6
/�,
"�
tweet_xf���������
p

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_32931mZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_33014mZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
'__inference_model_1_layer_call_fn_32447bZPQR*+23:;9�6
/�,
"�
tweet_xf���������
p 

 
� "�����������
'__inference_model_1_layer_call_fn_32640bZPQR*+23:;9�6
/�,
"�
tweet_xf���������
p

 
� "�����������
'__inference_model_1_layer_call_fn_32821`ZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "�����������
'__inference_model_1_layer_call_fn_32848`ZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "�����������
__inference_pruned_32000�|�y
r�o
m�j
7
	sarcastic*�'
inputs/sarcastic���������	
/
tweet&�#
inputs/tweet���������
� "k�h
6
sarcastic_xf&�#
sarcastic_xf���������	
.
tweet_xf"�
tweet_xf���������y
__inference_restore_fn_33188Y[K�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "� �
__inference_save_fn_33179�[&�#
�
�
checkpoint_key 
� "���
`�]

name�
0/name 
#

slice_spec�
0/slice_spec 

tensor�
0/tensor
`�]

name�
1/name 
#

slice_spec�
1/slice_spec 

tensor�
1/tensor	�
#__inference_signature_wrapper_32008�i�f
� 
_�\
*
inputs �
inputs���������	
.
inputs_1"�
inputs_1���������"k�h
6
sarcastic_xf&�#
sarcastic_xf���������	
.
tweet_xf"�
tweet_xf����������
#__inference_signature_wrapper_32147}ZPQR*+23:;9�6
� 
/�,
*
examples�
examples���������"3�0
.
output_0"�
output_0����������
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_32298<�9
2�/
-�*
(
tweet�
tweet���������
� "?�<
5�2
0
tweet_xf$�!

0/tweet_xf���������
� �
U__inference_transform_features_layer_1_layer_call_and_return_conditional_losses_33127�C�@
9�6
4�1
/
tweet&�#
inputs/tweet���������
� "?�<
5�2
0
tweet_xf$�!

0/tweet_xf���������
� �
:__inference_transform_features_layer_1_layer_call_fn_32272s<�9
2�/
-�*
(
tweet�
tweet���������
� "3�0
.
tweet_xf"�
tweet_xf����������
:__inference_transform_features_layer_1_layer_call_fn_33106zC�@
9�6
4�1
/
tweet&�#
inputs/tweet���������
� "3�0
.
tweet_xf"�
tweet_xf���������