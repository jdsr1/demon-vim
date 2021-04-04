" Vim syntax file
" 
" Language:    deMon input file
" Maintainer:  Juan Samaniego (https://github.com/jota-de)
" Last Change: 2021 Apr 04
"
"
if exists('b:current_syntax')
    finish
endif

syntax case ignore

" Keywords
" XXX: Match conflicting keywords at the beginning of the line only. Any
"      keyword name that can also appear as an option must be included
"      here. Other keywords need to be defined with match as well.
syn match dKeyword /^\(BASIS\|AUXIS\)/
syn match dKeyword /^\<\(PLOT\|RDF\|GUESS\)\>/
syn match dKeyword /^\<QM\/MM\>/

syn keyword dKeyword GEOME[TRY] REACT[ANT] PRODU[CT] CONST[ANTS] CONST[RAINTS]
syn keyword dKeyword VARIA[BLES] SYMME[TRY] ALIGN[MENT] PATTE[RN]

syn keyword dKeyword VXCTY[PE] DISPE[RSION] FORCE[FIELD] EFIEL[D] EMBED

syn keyword dKeyword AUGME[NT] ECPS MCPS GRID FREEZE

syn keyword dKeyword MULTI[PLICITY] CHARG[E] MOEXC[HANGE] MOMOD[IFY] FIXMO[S]
syn keyword dKeyword SMEAR CONFI[GURE]

syn keyword dKeyword SCFTY[PE] ORBIT[ALS] PHASE ERIS MIXIN[G] SHIFT DIIS

syn keyword dKeyword OPTIM[IZATION] OPTIM[IZE] SADDL[E] SCAN IRC HESSI[AN]
syn keyword dKeyword UPDAT[E] STEPT[YPE]

syn keyword dKeyword DYNAM[ICS] TRAJE[CTORY] SIMUL[ATION] LPCON[SERVE]
syn keyword dKeyword VELOC[ITIES] BATH RDF

syn keyword dKeyword FREQU[ENCY] THERM[O] POLAR[IZABILITY] EXCIT[ATION]
syn keyword dKeyword NONCO[LLINEAR] XRAY NMR MAGNE[TIZABILITY] NQR FUKUI

syn keyword dKeyword POPUL[ATION] DOS SIGPI LOCAL[IZATION]

syn keyword dKeyword VISUA[LIZATION] TOPOL[OGY] CPSEA[RCH] ISOSU[RFACE]
syn keyword dKeyword GEOSU[RFACE] BOX POINTS

syn keyword dKeyword PARAL[LEL] MATDI[A] MATIN[V] DAVID[SON] WEIGH[TING]
syn keyword dKeyword QUADR[ATURE] CFPIN[TEGRATION]

syn keyword dKeyword TITLE PRINT

hi link dKeyword Identifier


" Options
" XXX Last keyword checked: FREEZE
" Options that conflict with keywords
syn match dOption / \(BASIS\|AUXIS\|GUESS\)\>/
" Options with = sign attached
syn match dOption / \(S6\|FF\|CUBE\|TOL\|RAD\|MAX\|X\)=/me=e-1
" Options with special characters
syn match dOption / \(CUT[><]\{1}\|Z-MATRIX\|BH&H\)/

syn keyword dOption CARTE[SIAN] ZMATR[IX] MIXED ANGST[ROM] BOHR
syn keyword dOption ENANT[IOMER] EXCLU[DE] CONNE[CT] UNIFO[RM]
syn keyword dOption NONE ON OFF

syn keyword dOption VWN PZ81 PW92 PW86 BLYP OLYP PW91 PW91S[SF] PBE PBESS[F]
syn keyword dOption PBESO[L] KT1 KT2 KT3 CAP SO11 N12 GAM VS98 PKZB TPSS M06L
syn keyword dOption M11L MN12 B3LYP PBE0 M062X M06HF M06 XALPH[A] FOCK NONE

syn keyword dOption CHARM[M] NOPOL[ES]
syn keyword dOption FILE

syn keyword dOption ADAPT[IVE] FIXED MEDIU[M] COARS[E] FINE REFER[ENCE]
syn keyword dOption SCF DIREC[T]

syn keyword dOption CUSP CORE VALEN[CE]

syn keyword dOption ITERA[TIVE]
syn keyword dOption OCCUP[Y]

syn keyword dOption RKS UKS ROKS CUKS NOTIG[HTEN]
syn keyword dOption SPHER[ICAL]

syn keyword dOption MULTI[POLE] CONVE[NTIONAL]
syn keyword dOption TB CORE FERMI RESTA[RT] ONLY PROJE[CTED]
syn keyword dOption OMA

syn keyword dOption REDUN[DANT] INTER[VAL] TS

syn keyword dOption ADIAB[ATIC] VERTI[CAL]
syn keyword dOption FORWA[RD] REVER[SE] MASS NOMAS[S] EXTEN[D]

syn keyword dOption BAKER FISHE[R] UNITY INTER[NAL] LINDH CALCU[LATE] PLAIN
syn keyword dOption DEMON
syn keyword dOption BFGS POWEL[L] BERNY DFP MSP SR1 EXACT
syn keyword dOption LEVEN[BERG] RFO WALK DESCE[NT]

syn keyword dOption FORCE[S]
syn keyword dOption ANALY[ZE] DIPOL[E]
syn keyword dOption SIMIL[ARITY] LINDE[MANN] MEAND[IS] PROLA[TE]

syn region dOption start=/(/ms=e+1 end=/)/me=e-1
hi link dOption Statement


" Comments
syn match dTodo contained /\(TODO\|NOTE\):*/
syn match dComment /#.*/ contains=dTodo
hi link dTodo Todo
hi link dComment Comment


" Errors
syn match dError /\( \+=\|=\( \|$\)\+\)/
hi link dError Error


" Other
"syn match dTitle /^TITLE .*$/ms=s+6
"hi link dTitle String

syn match dAtom /^\a\{1,2}\d* /
hi link dAtom Typedef

syn region dBlock start=/READ/ end=/END\|#/ contains=dAtom
hi link dBlock Define

syn match dNumber /[ <>=]\{1}\d\+/ms=s+1
hi link dNumber Number

syn match dCoordXYZ /\(\(\(-\|\d\)\+\.\d\+\)\s*\)\{3}/ 
hi link dCoordXYZ Float


" Set current syntax
let b:current_syntax = 'deMon'
