/+
+               Copyright 2024 Aya Partridge
+ Distributed under the Boost Software License, Version 1.0.
+     (See accompanying file LICENSE_1_0.txt or copy at
+           http://www.boost.org/LICENSE_1_0.txt)
+/
module sdl.keycode;

import bindbc.sdl.config;
import bindbc.sdl.codegen;

import sdl.stdinc;
import sdl.scancode;

mixin(makeEnumBind(q{SDL_Keycode}, q{int}, aliases: [q{SDLK}], members: (){
	EnumMember[] ret = [
		{{q{unknown},               q{SDLK_UNKNOWN}},               q{0}},
		
		{{q{enter},                 q{SDLK_ENTER}},                 q{'\r'}, aliases: [{q{return_}, q{SDLK_RETURN}}]},
		{{q{escape},                q{SDLK_ESCAPE}},                q{'\x1B'}},
		{{q{backspace},             q{SDLK_BACKSPACE}},             q{'\b'}},
		{{q{tab},                   q{SDLK_TAB}},                   q{'\t'}},
		{{q{space},                 q{SDLK_SPACE}},                 q{' '}},
		{{q{exclaim},               q{SDLK_EXCLAIM}},               q{'!'}},
		{{q{quotedbl},              q{SDLK_QUOTEDBL}},              q{'"'}},
		{{q{hash},                  q{SDLK_HASH}},                  q{'#'}},
		{{q{percent},               q{SDLK_PERCENT}},               q{'%'}},
		{{q{dollar},                q{SDLK_DOLLAR}},                q{'$'}},
		{{q{ampersand},             q{SDLK_AMPERSAND}},             q{'&'}},
		{{q{quote},                 q{SDLK_QUOTE}},                 q{'\''}},
		{{q{leftparen},             q{SDLK_LEFTPAREN}},             q{'('}},
		{{q{rightparen},            q{SDLK_RIGHTPAREN}},            q{')'}},
		{{q{asterisk},              q{SDLK_ASTERISK}},              q{'*'}},
		{{q{plus},                  q{SDLK_PLUS}},                  q{'+'}},
		{{q{comma},                 q{SDLK_COMMA}},                 q{','}},
		{{q{minus},                 q{SDLK_MINUS}},                 q{'-'}},
		{{q{fullStop},              q{SDLK_FULLSTOP}},              q{'.'}, aliases: [{q{period}, q{SDLK_PERIOD}}]},
		{{q{slash},                 q{SDLK_SLASH}},                 q{'/'}},
		{{q{_0},                    q{SDLK_0}},                     q{'0'}},
		{{q{_1},                    q{SDLK_1}},                     q{'1'}},
		{{q{_2},                    q{SDLK_2}},                     q{'2'}},
		{{q{_3},                    q{SDLK_3}},                     q{'3'}},
		{{q{_4},                    q{SDLK_4}},                     q{'4'}},
		{{q{_5},                    q{SDLK_5}},                     q{'5'}},
		{{q{_6},                    q{SDLK_6}},                     q{'6'}},
		{{q{_7},                    q{SDLK_7}},                     q{'7'}},
		{{q{_8},                    q{SDLK_8}},                     q{'8'}},
		{{q{_9},                    q{SDLK_9}},                     q{'9'}},
		{{q{colon},                 q{SDLK_COLON}},                 q{':'}},
		{{q{semicolon},             q{SDLK_SEMICOLON}},             q{';'}},
		{{q{less},                  q{SDLK_LESS}},                  q{'<'}},
		{{q{equals},                q{SDLK_EQUALS}},                q{'='}},
		{{q{greater},               q{SDLK_GREATER}},               q{'>'}},
		{{q{question},              q{SDLK_QUESTION}},              q{'?'}},
		{{q{at},                    q{SDLK_AT}},                    q{'@'}},
		
		{{q{leftbracket},           q{SDLK_LEFTBRACKET}},           q{'['}},
		{{q{backslash},             q{SDLK_BACKSLASH}},             q{'\\'}},
		{{q{rightbracket},          q{SDLK_RIGHTBRACKET}},          q{']'}},
		{{q{caret},                 q{SDLK_CARET}},                 q{'^'}},
		{{q{underscore},            q{SDLK_UNDERSCORE}},            q{'_'}},
		{{q{backquote},             q{SDLK_BACKQUOTE}},             q{'`'}},
		{{q{a},                     q{SDLK_a}},                     q{'a'}},
		{{q{b},                     q{SDLK_b}},                     q{'b'}},
		{{q{c},                     q{SDLK_c}},                     q{'c'}},
		{{q{d},                     q{SDLK_d}},                     q{'d'}},
		{{q{e},                     q{SDLK_e}},                     q{'e'}},
		{{q{f},                     q{SDLK_f}},                     q{'f'}},
		{{q{g},                     q{SDLK_g}},                     q{'g'}},
		{{q{h},                     q{SDLK_h}},                     q{'h'}},
		{{q{i},                     q{SDLK_i}},                     q{'i'}},
		{{q{j},                     q{SDLK_j}},                     q{'j'}},
		{{q{k},                     q{SDLK_k}},                     q{'k'}},
		{{q{l},                     q{SDLK_l}},                     q{'l'}},
		{{q{m},                     q{SDLK_m}},                     q{'m'}},
		{{q{n},                     q{SDLK_n}},                     q{'n'}},
		{{q{o},                     q{SDLK_o}},                     q{'o'}},
		{{q{p},                     q{SDLK_p}},                     q{'p'}},
		{{q{q},                     q{SDLK_q}},                     q{'q'}},
		{{q{r},                     q{SDLK_r}},                     q{'r'}},
		{{q{s},                     q{SDLK_s}},                     q{'s'}},
		{{q{t},                     q{SDLK_t}},                     q{'t'}},
		{{q{u},                     q{SDLK_u}},                     q{'u'}},
		{{q{v},                     q{SDLK_v}},                     q{'v'}},
		{{q{w},                     q{SDLK_w}},                     q{'w'}},
		{{q{x},                     q{SDLK_x}},                     q{'x'}},
		{{q{y},                     q{SDLK_y}},                     q{'y'}},
		{{q{z},                     q{SDLK_z}},                     q{'z'}},
		
		{{q{capslock},              q{SDLK_CAPSLOCK}},              q{SDL_ScancodeToKeycode(SDL_Scancode.capsLock)}},
		
		{{q{f1},                    q{SDLK_F1}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f1)}},
		{{q{f2},                    q{SDLK_F2}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f2)}},
		{{q{f3},                    q{SDLK_F3}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f3)}},
		{{q{f4},                    q{SDLK_F4}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f4)}},
		{{q{f5},                    q{SDLK_F5}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f5)}},
		{{q{f6},                    q{SDLK_F6}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f6)}},
		{{q{f7},                    q{SDLK_F7}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f7)}},
		{{q{f8},                    q{SDLK_F8}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f8)}},
		{{q{f9},                    q{SDLK_F9}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.f9)}},
		{{q{f10},                   q{SDLK_F10}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f10)}},
		{{q{f11},                   q{SDLK_F11}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f11)}},
		{{q{f12},                   q{SDLK_F12}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f12)}},
		
		{{q{printScreen},           q{SDLK_PRINTSCREEN}},           q{SDL_ScancodeToKeycode(SDL_Scancode.printScreen)}},
		{{q{scrolllock},            q{SDLK_SCROLLLOCK}},            q{SDL_ScancodeToKeycode(SDL_Scancode.scrollLock)}},
		{{q{pause},                 q{SDLK_PAUSE}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.pause)}},
		{{q{insert},                q{SDLK_INSERT}},                q{SDL_ScancodeToKeycode(SDL_Scancode.insert)}},
		{{q{home},                  q{SDLK_HOME}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.home)}},
		{{q{pageUp},                q{SDLK_PAGEUP}},                q{SDL_ScancodeToKeycode(SDL_Scancode.pageUp)}},
		{{q{delete_},               q{SDLK_DELETE}},                q{'\x7F'}},
		{{q{end},                   q{SDLK_END}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.end)}},
		{{q{pageDown},              q{SDLK_PAGEDOWN}},              q{SDL_ScancodeToKeycode(SDL_Scancode.pageDown)}},
		{{q{right},                 q{SDLK_RIGHT}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.right)}},
		{{q{left},                  q{SDLK_LEFT}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.left)}},
		{{q{down},                  q{SDLK_DOWN}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.down)}},
		{{q{up},                    q{SDLK_UP}},                    q{SDL_ScancodeToKeycode(SDL_Scancode.up)}},
		
		{{q{numLockClear},          q{SDLK_NUMLOCKCLEAR}},          q{SDL_ScancodeToKeycode(SDL_Scancode.numLockClear)}},
		{{q{kpDivide},              q{SDLK_KP_DIVIDE}},             q{SDL_ScancodeToKeycode(SDL_Scancode.kpDivide)}},
		{{q{kpMultiply},            q{SDLK_KP_MULTIPLY}},           q{SDL_ScancodeToKeycode(SDL_Scancode.kpMultiply)}},
		{{q{kpMinus},               q{SDLK_KP_MINUS}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpMinus)}},
		{{q{kpPlus},                q{SDLK_KP_PLUS}},               q{SDL_ScancodeToKeycode(SDL_Scancode.kpPlus)}},
		{{q{kpEnter},               q{SDLK_KP_ENTER}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpEnter)}},
		{{q{kp1},                   q{SDLK_KP_1}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp1)}},
		{{q{kp2},                   q{SDLK_KP_2}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp2)}},
		{{q{kp3},                   q{SDLK_KP_3}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp3)}},
		{{q{kp4},                   q{SDLK_KP_4}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp4)}},
		{{q{kp5},                   q{SDLK_KP_5}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp5)}},
		{{q{kp6},                   q{SDLK_KP_6}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp6)}},
		{{q{kp7},                   q{SDLK_KP_7}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp7)}},
		{{q{kp8},                   q{SDLK_KP_8}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp8)}},
		{{q{kp9},                   q{SDLK_KP_9}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp9)}},
		{{q{kp0},                   q{SDLK_KP_0}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kp0)}},
		{{q{kpFullStop},            q{SDLK_KP_FULLSTOP}},           q{SDL_ScancodeToKeycode(SDL_Scancode.kpPeriod)}, aliases: [{q{kpPeriod}, q{SDLK_KP_PERIOD}}]},
		
		{{q{application},           q{SDLK_APPLICATION}},           q{SDL_ScancodeToKeycode(SDL_Scancode.application)}},
		{{q{power},                 q{SDLK_POWER}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.power)}},
		{{q{kpEquals},              q{SDLK_KP_EQUALS}},             q{SDL_ScancodeToKeycode(SDL_Scancode.kpEquals)}},
		{{q{f13},                   q{SDLK_F13}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f13)}},
		{{q{f14},                   q{SDLK_F14}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f14)}},
		{{q{f15},                   q{SDLK_F15}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f15)}},
		{{q{f16},                   q{SDLK_F16}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f16)}},
		{{q{f17},                   q{SDLK_F17}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f17)}},
		{{q{f18},                   q{SDLK_F18}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f18)}},
		{{q{f19},                   q{SDLK_F19}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f19)}},
		{{q{f20},                   q{SDLK_F20}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f20)}},
		{{q{f21},                   q{SDLK_F21}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f21)}},
		{{q{f22},                   q{SDLK_F22}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f22)}},
		{{q{f23},                   q{SDLK_F23}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f23)}},
		{{q{f24},                   q{SDLK_F24}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.f24)}},
		{{q{execute},               q{SDLK_EXECUTE}},               q{SDL_ScancodeToKeycode(SDL_Scancode.execute)}},
		{{q{help},                  q{SDLK_HELP}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.help)}},
		{{q{menu},                  q{SDLK_MENU}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.menu)}},
		{{q{select},                q{SDLK_SELECT}},                q{SDL_ScancodeToKeycode(SDL_Scancode.select)}},
		{{q{stop},                  q{SDLK_STOP}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.stop)}},
		{{q{again},                 q{SDLK_AGAIN}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.again)}},
		{{q{undo},                  q{SDLK_UNDO}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.undo)}},
		{{q{cut},                   q{SDLK_CUT}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.cut)}},
		{{q{copy},                  q{SDLK_COPY}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.copy)}},
		{{q{paste},                 q{SDLK_PASTE}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.paste)}},
		{{q{find},                  q{SDLK_FIND}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.find)}},
		{{q{mute},                  q{SDLK_MUTE}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.mute)}},
		{{q{volumeUp},              q{SDLK_VOLUMEUP}},              q{SDL_ScancodeToKeycode(SDL_Scancode.volumeUp)}},
		{{q{volumeDown},            q{SDLK_VOLUMEDOWN}},            q{SDL_ScancodeToKeycode(SDL_Scancode.volumeDown)}},
		{{q{kpComma},               q{SDLK_KP_COMMA}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpComma)}},
		{{q{kpEqualsAS400},         q{SDLK_KP_EQUALSAS400}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kpEqualsAS400)}},
		
		{{q{altErase},              q{SDLK_ALTERASE}},              q{SDL_ScancodeToKeycode(SDL_Scancode.altErase)}},
		{{q{sysReq},                q{SDLK_SYSREQ}},                q{SDL_ScancodeToKeycode(SDL_Scancode.sysReq)}},
		{{q{cancel},                q{SDLK_CANCEL}},                q{SDL_ScancodeToKeycode(SDL_Scancode.cancel)}},
		{{q{clear},                 q{SDLK_CLEAR}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.clear)}},
		{{q{prior},                 q{SDLK_PRIOR}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.prior)}},
		{{q{enter2},                q{SDLK_ENTER2}},                q{SDL_ScancodeToKeycode(SDL_Scancode.enter2)}, aliases: [{q{return2}, q{SDLK_RETURN2}}]},
		{{q{separator},             q{SDLK_SEPARATOR}},             q{SDL_ScancodeToKeycode(SDL_Scancode.separator)}},
		{{q{out_},                  q{SDLK_OUT}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.out_)}},
		{{q{oper},                  q{SDLK_OPER}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.oper)}},
		{{q{clearAgain},            q{SDLK_CLEARAGAIN}},            q{SDL_ScancodeToKeycode(SDL_Scancode.clearAgain)}},
		{{q{crSel},                 q{SDLK_CRSEL}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.crSel)}},
		{{q{exSel},                 q{SDLK_EXSEL}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.exSel)}},
		
		{{q{kp00},                  q{SDLK_KP_00}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.kp00)}},
		{{q{kp000},                 q{SDLK_KP_000}},                q{SDL_ScancodeToKeycode(SDL_Scancode.kp000)}},
		{{q{thousandsSeparator},    q{SDLK_THOUSANDSSEPARATOR}},    q{SDL_ScancodeToKeycode(SDL_Scancode.thousandsSeparator)}},
		{{q{decimalSeparator},      q{SDLK_DECIMALSEPARATOR}},      q{SDL_ScancodeToKeycode(SDL_Scancode.decimalSeparator)}},
		{{q{currencyUnit},          q{SDLK_CURRENCYUNIT}},          q{SDL_ScancodeToKeycode(SDL_Scancode.currencyUnit)}},
		{{q{currencySubUnit},       q{SDLK_CURRENCYSUBUNIT}},       q{SDL_ScancodeToKeycode(SDL_Scancode.currencySubUnit)}},
		{{q{kpLeftParen},           q{SDLK_KP_LEFTPAREN}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpLeftParen)}},
		{{q{kpRightParen},          q{SDLK_KP_RIGHTPAREN}},         q{SDL_ScancodeToKeycode(SDL_Scancode.kpRightParen)}},
		{{q{kpLeftBrace},           q{SDLK_KP_LEFTBRACE}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpLeftBrace)}},
		{{q{kpRightBrace},          q{SDLK_KP_RIGHTBRACE}},         q{SDL_ScancodeToKeycode(SDL_Scancode.kpRightBrace)}},
		{{q{kpTab},                 q{SDLK_KP_TAB}},                q{SDL_ScancodeToKeycode(SDL_Scancode.kpTab)}},
		{{q{kpBackspace},           q{SDLK_KP_BACKSPACE}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpBackspace)}},
		{{q{kpA},                   q{SDLK_KP_A}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpA)}},
		{{q{kpB},                   q{SDLK_KP_B}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpB)}},
		{{q{kpC},                   q{SDLK_KP_C}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpC)}},
		{{q{kpD},                   q{SDLK_KP_D}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpD)}},
		{{q{kpE},                   q{SDLK_KP_E}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpE)}},
		{{q{kpF},                   q{SDLK_KP_F}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.kpF)}},
		{{q{kpXOR},                 q{SDLK_KP_XOR}},                q{SDL_ScancodeToKeycode(SDL_Scancode.kpXOR)}},
		{{q{kpPower},               q{SDLK_KP_POWER}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpPower)}},
		{{q{kpPercent},             q{SDLK_KP_PERCENT}},            q{SDL_ScancodeToKeycode(SDL_Scancode.kpPercent)}},
		{{q{kpLess},                q{SDLK_KP_LESS}},               q{SDL_ScancodeToKeycode(SDL_Scancode.kpLess)}},
		{{q{kpGreater},             q{SDLK_KP_GREATER}},            q{SDL_ScancodeToKeycode(SDL_Scancode.kpGreater)}},
		{{q{kpAmpersand},           q{SDLK_KP_AMPERSAND}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpAmpersand)}},
		{{q{kpDblAmpersand},        q{SDLK_KP_DBLAMPERSAND}},       q{SDL_ScancodeToKeycode(SDL_Scancode.kpDblAmpersand)}},
		{{q{kpVerticalBar},         q{SDLK_KP_VERTICALBAR}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kpVerticalBar)}},
		{{q{kpDblVerticalBar},      q{SDLK_KP_DBLVERTICALBAR}},     q{SDL_ScancodeToKeycode(SDL_Scancode.kpDblVerticalBar)}},
		{{q{kpColon},               q{SDLK_KP_COLON}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpColon)}},
		{{q{kpHash},                q{SDLK_KP_HASH}},               q{SDL_ScancodeToKeycode(SDL_Scancode.kpHash)}},
		{{q{kpSpace},               q{SDLK_KP_SPACE}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpSpace)}},
		{{q{kpAt},                  q{SDLK_KP_AT}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.kpAt)}},
		{{q{kpExclam},              q{SDLK_KP_EXCLAM}},             q{SDL_ScancodeToKeycode(SDL_Scancode.kpExclam)}},
		{{q{kpMemStore},            q{SDLK_KP_MEMSTORE}},           q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemStore)}},
		{{q{kpMemRecall},           q{SDLK_KP_MEMRECALL}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemRecall)}},
		{{q{kpMemClear},            q{SDLK_KP_MEMCLEAR}},           q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemClear)}},
		{{q{kpMemAdd},              q{SDLK_KP_MEMADD}},             q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemAdd)}},
		{{q{kpMemSubtract},         q{SDLK_KP_MEMSUBTRACT}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemSubtract)}},
		{{q{kpMemMultiply},         q{SDLK_KP_MEMMULTIPLY}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemMultiply)}},
		{{q{kpMemDivide},           q{SDLK_KP_MEMDIVIDE}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpMemDivide)}},
		{{q{kpPlusMinus},           q{SDLK_KP_PLUSMINUS}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kpPlusMinus)}},
		{{q{kpClear},               q{SDLK_KP_CLEAR}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpClear)}},
		{{q{kpClearuntry},          q{SDLK_KP_CLEARENTRY}},         q{SDL_ScancodeToKeycode(SDL_Scancode.kpClearuntry)}},
		{{q{kpBinary},              q{SDLK_KP_BINARY}},             q{SDL_ScancodeToKeycode(SDL_Scancode.kpBinary)}},
		{{q{kpOctal},               q{SDLK_KP_OCTAL}},              q{SDL_ScancodeToKeycode(SDL_Scancode.kpOctal)}},
		{{q{kpDecimal},             q{SDLK_KP_DECIMAL}},            q{SDL_ScancodeToKeycode(SDL_Scancode.kpDecimal)}},
		{{q{kpHexadecimal},         q{SDLK_KP_HEXADECIMAL}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kpHexadecimal)}},
		
		{{q{lCtrl},                 q{SDLK_LCTRL}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.lCtrl)}},
		{{q{lShift},                q{SDLK_LSHIFT}},                q{SDL_ScancodeToKeycode(SDL_Scancode.lShift)}},
		{{q{lAlt},                  q{SDLK_LALT}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.lAlt)}},
		{{q{lGUI},                  q{SDLK_LGUI}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.lGUI)}},
		{{q{rCtrl},                 q{SDLK_RCTRL}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.rCtrl)}},
		{{q{rShift},                q{SDLK_RSHIFT}},                q{SDL_ScancodeToKeycode(SDL_Scancode.rShift)}},
		{{q{rAlt},                  q{SDLK_RALT}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.rAlt)}},
		{{q{rGUI},                  q{SDLK_RGUI}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.rGUI)}},
		
		{{q{mode},                  q{SDLK_MODE}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.mode)}},
		
		{{q{audioNext},             q{SDLK_AUDIONEXT}},             q{SDL_ScancodeToKeycode(SDL_Scancode.audioNext)}},
		{{q{audioPrev},             q{SDLK_AUDIOPREV}},             q{SDL_ScancodeToKeycode(SDL_Scancode.audioPrev)}},
		{{q{audioStop},             q{SDLK_AUDIOSTOP}},             q{SDL_ScancodeToKeycode(SDL_Scancode.audioStop)}},
		{{q{audioPlay},             q{SDLK_AUDIOPLAY}},             q{SDL_ScancodeToKeycode(SDL_Scancode.audioPlay)}},
		{{q{audioMute},             q{SDLK_AUDIOMUTE}},             q{SDL_ScancodeToKeycode(SDL_Scancode.audioMute)}},
		{{q{mediaSelect},           q{SDLK_MEDIASELECT}},           q{SDL_ScancodeToKeycode(SDL_Scancode.mediaSelect)}},
		{{q{www},                   q{SDLK_WWW}},                   q{SDL_ScancodeToKeycode(SDL_Scancode.www)}},
		{{q{mail},                  q{SDLK_MAIL}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.mail)}},
		{{q{calculator},            q{SDLK_CALCULATOR}},            q{SDL_ScancodeToKeycode(SDL_Scancode.calculator)}},
		{{q{computer},              q{SDLK_COMPUTER}},              q{SDL_ScancodeToKeycode(SDL_Scancode.computer)}},
		{{q{acSearch},              q{SDLK_AC_SEARCH}},             q{SDL_ScancodeToKeycode(SDL_Scancode.acSearch)}},
		{{q{acHome},                q{SDLK_AC_HOME}},               q{SDL_ScancodeToKeycode(SDL_Scancode.acHome)}},
		{{q{acBack},                q{SDLK_AC_BACK}},               q{SDL_ScancodeToKeycode(SDL_Scancode.acBack)}},
		{{q{acForward},             q{SDLK_AC_FORWARD}},            q{SDL_ScancodeToKeycode(SDL_Scancode.acForward)}},
		{{q{acStop},                q{SDLK_AC_STOP}},               q{SDL_ScancodeToKeycode(SDL_Scancode.acStop)}},
		{{q{acRefresh},             q{SDLK_AC_REFRESH}},            q{SDL_ScancodeToKeycode(SDL_Scancode.acRefresh)}},
		{{q{acBookmarks},           q{SDLK_AC_BOOKMARKS}},          q{SDL_ScancodeToKeycode(SDL_Scancode.acBookmarks)}},
		
		{{q{brightnessDown},        q{SDLK_BRIGHTNESSDOWN}},        q{SDL_ScancodeToKeycode(SDL_Scancode.brightnessDown)}},
		{{q{brightnessUp},          q{SDLK_BRIGHTNESSUP}},          q{SDL_ScancodeToKeycode(SDL_Scancode.brightnessUp)}},
		{{q{displaySwitch},         q{SDLK_DISPLAYSWITCH}},         q{SDL_ScancodeToKeycode(SDL_Scancode.displaySwitch)}},
		{{q{kbdIllumToggle},        q{SDLK_KBDILLUMTOGGLE}},        q{SDL_ScancodeToKeycode(SDL_Scancode.kbdIllumToggle)}},
		{{q{kbdIllumDown},          q{SDLK_KBDILLUMDOWN}},          q{SDL_ScancodeToKeycode(SDL_Scancode.kbdIllumDown)}},
		{{q{kbdIllumUp},            q{SDLK_KBDILLUMUP}},            q{SDL_ScancodeToKeycode(SDL_Scancode.kbdIllumUp)}},
		{{q{eject},                 q{SDLK_EJECT}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.eject)}},
		{{q{sleep},                 q{SDLK_SLEEP}},                 q{SDL_ScancodeToKeycode(SDL_Scancode.sleep)}},
		
		{{q{app1},                  q{SDLK_APP1}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.app1)}},
		{{q{app2},                  q{SDLK_APP2}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.app2)}},
		
		{{q{audioRewind},           q{SDLK_AUDIOREWIND}},           q{SDL_ScancodeToKeycode(SDL_Scancode.audioRewind)}},
		{{q{audioFastForward},      q{SDLK_AUDIOFASTFORWARD}},      q{SDL_ScancodeToKeycode(SDL_Scancode.audioFastForward)}},
		
		{{q{softLeft},              q{SDLK_SOFTLEFT}},              q{SDL_ScancodeToKeycode(SDL_Scancode.softLeft)}},
		{{q{softRight},             q{SDLK_SOFTRIGHT}},             q{SDL_ScancodeToKeycode(SDL_Scancode.softRight)}},
		{{q{call},                  q{SDLK_CALL}},                  q{SDL_ScancodeToKeycode(SDL_Scancode.call)}},
		{{q{endCall},               q{SDLK_ENDCALL}},               q{SDL_ScancodeToKeycode(SDL_Scancode.endCall)}},
		
		{{q{scancodeMask},          q{SDLK_SCANCODE_MASK}},         q{1 << 30}},
	];
	return ret;
}()));

SDL_Keycode SDL_ScancodeToKeycode(SDL_Scancode x) nothrow @nogc pure @safe =>
	cast(SDL_Keycode)(x | SDL_Keycode.scancodeMask);
alias SDL_SCANCODE_TO_KEYCODE = SDL_ScancodeToKeycode;

mixin(makeEnumBind(q{SDL_KeyMod}, aliases: [q{SDL_KMod}], members: (){
	EnumMember[] ret = [
		{{q{none},        q{SDL_KMOD_NONE}},        q{0x0000}},
		{{q{lShift},      q{SDL_KMOD_LSHIFT}},      q{0x0001}},
		{{q{rShift},      q{SDL_KMOD_RSHIFT}},      q{0x0002}},
		{{q{lCtrl},       q{SDL_KMOD_LCTRL}},       q{0x0040}},
		{{q{rCtrl},       q{SDL_KMOD_RCTRL}},       q{0x0080}},
		{{q{lAlt},        q{SDL_KMOD_LALT}},        q{0x0100}},
		{{q{rAlt},        q{SDL_KMOD_RALT}},        q{0x0200}},
		{{q{lGUI},        q{SDL_KMOD_LGUI}},        q{0x0400}},
		{{q{rGUI},        q{SDL_KMOD_RGUI}},        q{0x0800}},
		{{q{num},         q{SDL_KMOD_NUM}},         q{0x1000}},
		{{q{caps},        q{SDL_KMOD_CAPS}},        q{0x2000}},
		{{q{mode},        q{SDL_KMOD_MODE}},        q{0x4000}},
		{{q{scroll},      q{SDL_KMOD_SCROLL}},      q{0x8000}},
		
		{{q{ctrl},        q{SDL_KMOD_CTRL}},        q{lCtrl  | rCtrl}},
		{{q{shift},       q{SDL_KMOD_SHIFT}},       q{lShift | rShift}},
		{{q{alt},         q{SDL_KMOD_ALT}},         q{lAlt   | rAlt}},
		{{q{gui},         q{SDL_KMOD_GUI}},         q{lGUI   | rGUI}},
		
		{{q{reserved},    q{SDL_KMOD_RESERVED}},    q{scroll}},
	];
	return ret;
}()));
