" Vim syntax file
" 
" Language:    deMon input file
" Maintainer:  Juan Samaniego (https://github.com/jota-de)
" Last Change: 2021 Apr 05
"
" ----------------------------------------------------------------------

" Don't load this file if a custom syntax file has been loaded already.
if exists('b:current_syntax')
    finish
endif

" Ignore case.
syntax case ignore

" KEYWORDS
" ----------------------------------------------------------------------


" Molecular geometry input:
syn keyword dKeyword GEOME[TRY] REACT[ANT] PRODU[CT]
syn keyword dOption CARTE[SIAN] ZMATR[IX] MIXED ANGST[ROM] BOHR

syn keyword dKeyword SYMME[TRY]
syn keyword dOption NONE ON OFF

syn keyword dKeyword ALIGN[MENT]
syn keyword dOption ENANT[IOMER] EXCLU[DE] CONNE[CT] UNIFO[RM]
syn match dOption / \(CUBE\|TOL\)=/me=e-1

syn keyword dKeyword CONST[ANTS] CONST[RAINTS] VARIA[BLES] PATTE[RN]


" Methodology selection:
" TODO Add vxctype missing options
syn keyword dKeyword VXCTY[PE]
syn keyword dOption VWN PZ81 PW92 PW86 BLYP OLYP PW91 PW91S[SF] PBE
syn keyword dOption PBESS[F] PBESO[L] KT1 KT2 KT3 CAP SO11 N12 GAM VS98
syn keyword dOption PKZB TPSS M06L M11L MN12 B3LYP PBE0 M062X M06HF M06
syn keyword dOption XALPH[A] FOCK
syn match dOption / \(BASIS\|AUXIS\)\>/

syn keyword dKeyword DISPE[RSION]
syn match dOption / \(S6\)=/me=e-1

syn keyword dKeyword FORCE[FIELD]
syn match dOption / \(FF\)=/me=e-1

syn match dKeyword /^\<QM\/MM\>/
syn keyword dOption CHARM[M] NOPOL[ES]

syn keyword dKeyword EMBED
syn keyword dOption FILE READ

syn keyword dKeyword EFIEL[D]


" Atom specific input:
syn keyword dKeyword GRID
syn keyword dOption ADAPT[IVE] FIXED MEDIU[M] COARS[E] FINE REFER[ENCE]
syn keyword dOption DIREC[T]
syn match dOption / \(SCF\|GUESS\)\>/
syn match dOption / RAD=/me=e-1

syn keyword dKeyword FREEZE
syn keyword dOption CUSP CORE VALEN[CE]

syn match dKeyword /^\(BASIS\|AUXIS\)/
syn keyword dKeyword AUGME[NT] ECPS MCPS 


" Electronic state control:
syn keyword dKeyword FIXMO[S]
syn keyword dOption ITERA[TIVE]

syn keyword dKeyword MULTI[PLICITY] CHARG[E] MOEXC[HANGE] MOMOD[IFY]
syn keyword dKeyword SMEAR

syn keyword dKeyword CONFI[GURE]
syn keyword dOption OCCUP[Y]
syn match dOption / MAX=/me=e-1


" SCF control and stabilization:
syn keyword dKeyword SCFTY[PE]
syn keyword dOption RKS UKS ROKS CUKS NOTIG[HTEN]
syn match dOption / CDF=/me=e-1

syn keyword dKeyword ORBIT[ALS]
syn keyword dOption SPHER[ICAL]

syn keyword dKeyword ERIS
syn keyword dOption MULTI[POLE] CONVE[NTIONAL]
syn match dOption / RAM=/me=e-1

syn match dKeyword /^GUESS/
syn keyword dOption TB CORE FERMI RESTA[RT] ONLY PROJE[CTED]

syn keyword dKeyword MIXIN[G]
syn keyword dOption OMA

syn keyword dKeyword SHIFT
syn match dOption / MIN=/me=e-1

syn keyword dKeyword PHASE DIIS


" Optimization, interpolation and transition state search:
syn keyword dKeyword OPTIM[IZATION] OPTIM[IZE]
syn keyword dOption REDUN[DANT] INTER[VAL] TS
syn match dOption / \(STEP\|MOD\)=/me=e-1

syn keyword dKeyword SADDL[E]
syn match dOption / INT=/me=e-1

syn keyword dKeyword SCAN
syn keyword dOption ADIAB[ATIC] VERTI[CAL]
syn match dOption / END=/me=e-1

syn keyword dKeyword IRC
syn keyword dOption FORWA[RD] REVER[SE] MASS NOMAS[S] EXTEN[D]
syn match dOption / EVIB=/me=e-1

syn keyword dKeyword HESSI[AN]
syn keyword dOption BAKER FISHE[R] UNITY INTER[NAL] LINDH CALCU[LATE]
syn keyword dOption PLAIN DEMON
syn match dOption / VIB=/me=e-1

syn keyword dKeyword UPDAT[E]
syn keyword dOption BFGS POWEL[L] BERNY DFP MSP SR1 EXACT

syn keyword dKeyword STEPT[YPE]
syn keyword dOption LEVEN[BERG] RFO WALK DESCE[NT]


" Born-Oppenheimer molecular dynamics:
syn keyword dKeyword DYNAM[ICS]
syn match dOption / R=/me=e-1

syn keyword dKeyword TRAJE[CTORY]
syn keyword dOption FORCE[S]
syn match dOption / \(PART\|PLOT\|MOS\)=/me=e-1
syn match dOption / CUT[<>]\{1}/me=e-1

syn keyword dKeyword SIMUL[ATION]
syn keyword dOption ANALY[ZE] DIPOL[E] MOMEN[TA] SIMIL[ARITY] ANGLE
syn keyword dOption LINDE[MANN] MEAND[IS] PROLA[TE] LENGH[T] DIHED[RAL]
syn match dOption / E=\(STA\|KIN\|POT\|TOT\|SYS\)\a*/
syn match dOption / POLAR?I?Z?A?B?I?L?I?T?Y/
syn match dOption / MAGNE?T?I?Z?A?B?I?L?I?T?Y/
syn match dOption / PHASE?S?P?A?C?E/
syn match dOption / \(NMR\|RDF\)=/me=e-1

syn keyword dKeyword LPCON[SERVE]
syn match dOption / VELOC?I?T?I?E?S/

syn keyword dKeyword VELOC[ITIES]
syn keyword dOption RANDO[M] ZERO
syn match dOption / LP=0/
syn match dOption / P=0/
syn match dOption / T=/me=e-1

syn keyword dKeyword BATH
syn keyword dOption SCALI[NG] BEREN[DSEN] HOOVE[R] NOSE
syn match dOption / \(TAU\|FREQ\|NHC\)=/me=e-1

syn match dKeyword /^RDF/
syn match dOption / WIDTH=/me=e-1


" Molecular property control:
syn keyword dKeyword FREQU[ENCY]
syn keyword dOption RAMAN

syn keyword dKeyword THERM[O]
syn keyword dOption VIBONLY

syn match dKeyword /^POLAR?I?Z?A?B?I?L?I?T?Y/
syn keyword dOption ALPHA BETA GAMMA NIACP[KS] NUMER[ICAL] DD DQ SHG OR
syn keyword dOption SHG EOPE EFISH FALDA GALDA FDKER[NEL] ANALY[TICAL]
syn match dOption / \(W\|W2\|FFS\)=/me=e-1

syn keyword dKeyword EXCIT[ATION]
syn keyword dOption RS DSYEV JACOB[I] TDA 
syn match dOption / DAVID?S?O?N/
syn match dOption / D&C/

syn keyword dKeyword XRAY
syn keyword dOption XAS XES

syn match dKeyword /^NMR/
syn keyword dOption NICS SPINR[OT]

syn match dKeyword /^MAGNE?T?I?Z?A?B?I?L?I?T?Y/
syn keyword dOption GTENS[OR]

syn keyword dKeyword NQR
syn keyword dOption BARN
syn match dOption / FM^2/

syn keyword dKeyword NONCO[LLINEAR] FUKUI


" XXX Electronic structure analysis:
syn keyword dKeyword POPUL[ATION]


syn keyword dKeyword DOS SIGPI LOCAL[IZATION]


" Visualization and topological analysis:
syn keyword dKeyword VISUA[LIZATION] TOPOL[OGY] CPSEA[RCH] ISOSU[RFACE]
syn keyword dKeyword GEOSU[RFACE] BOX POINTS


" Performance and accuracy settings:
syn keyword dKeyword PARAL[LEL] MATDI[A] MATIN[V] DAVID[SON] WEIGH[TING]
syn keyword dKeyword QUADR[ATURE] CFPIN[TEGRATION]


" Miscellaneous keywords:
syn keyword dKeyword TITLE PRINT


" MISCELLANEOUS
" ----------------------------------------------------------------------

" Basis, auxis, etc. parenthesized options:
syn region dOption start=/(/ms=e+1 end=/)/me=e-1


" Comments including todos:
syn match dTodo contained /\(TODO\|NOTE\|XXX\):*/
syn match dComment /#.*/ contains=dTodo


" Errors:
syn match dError /\( \+=\|=\( \|$\)\+\)/


" Atom labels:
syn match dAtom /^\a\{1,2}\d* /


" HIGHLIGHT
" ----------------------------------------------------------------------

hi link dKeyword Identifier

hi link dOption Statement

hi link dTodo Todo

hi link dComment Comment

hi link dError Error

hi link dAtom Typedef


" END
" ----------------------------------------------------------------------
" Set current syntax
let b:current_syntax = 'deMon'
