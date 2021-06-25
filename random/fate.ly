%{ 前世今生 新白娘子传奇主题曲 %}

\version "2.22.0"

\header {
  title = "前世今生"
  composer = "左宏元"
  arranger = "文武贝"
}

rit = \markup { \italic rit. }

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  r8 c'16 d~ 8 a16 c~ 8 g16 a~ 8 e16 g~
  | 8 d16 e~ 8 c16 d~ 8 a16 c~ 8 g16 a
  | r8 c'16 d~ 8 a16 c~ 8 g16 a~ 8 e16 g~
  | 8 d16 e~ 8 c16 d~ 8 a16 c~ 8 g16 a
  \override Stem.direction = #UP
  | r4 r <g'' g'>2\arpeggio
  \override Stem.direction = -1

  \repeat volta 3 {
    c,4 a8 c g16 g8 a16 g8 a
    | e8 g d c g'8. c'16 a g e d
    | a8. [ c16 ] d [ c a g ] g8 [ a16 g ] g e8.
    | d8 c a c g4 c,16 d e g
    | a8 c d e g2
    | c8 a g e g2
  }

  c4 a8 c g16 g8 a16 g8 a
  | e g d e g8. c'16 a g e d
  | a8. c16 d c a g g8 a16 g g e8.
  | d8 c a c c4 e,16 g a c

  \repeat volta 2 {
    <f, d'>8. e'16 8 16 d d8 <d, g>16 16 8 8
    | <d' g>8. a'16 8 16 g g2
    | <c, f a>8.\arpeggio c'16 d c a g g8 a16 g g e8.
    | <f, d'>8 c' <a d,> g <e c'>4 r
  }

  r8 c''16 d~ 8 a16 c~ 8 g16 a~ 8 e16 g~
  | 8 d16 e~ 8 c16 d~ 8 a16 c~ 8 g16 a
  | r8 c'16 d~ 8 a16 c~ 8 g16 a~ 8 e16 g~ 8 d16 e~ 8 c16 d a8 g~ 4
  | <c a g e>1\arpeggio

  \bar "|."
}

lower = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  \repeat unfold 2 { c16\sustainOn g'8. c,16 g'8. }
  | \repeat unfold 2 { f,16\sustainOn c'8. f,16 c'8. }
  | \repeat unfold 2 { c16\sustainOn g'8. c,16 g'8. }
  | \repeat unfold 2 { f,16\sustainOn c'8. f,16 c'8. }
  | g,16 f' aes c \change Staff = "up"  f aes c f g8 c g4 \change Staff = "down"

  | \repeat unfold 2 { c,,,8\sustainOn g' c g e' g, c g }
  | f,8\sustainOn c' f a c,\sustainOn g' a,\sustainOn e'
  | d\sustainOn a' d a g,\sustainOn g'16 a r4
  | a,8\sustainOn e' c' e, e,\sustainOn b' e g

  | f,\sustainOn c' a' c, g\sustainOn g'16 a c d e g
  | \repeat unfold 2 { c,,8\sustainOn g' c g e' g, c g }
  | f,\sustainOn c' f a c,\sustainOn g' a,\sustainOn e'
  | d\sustainOn a' <d, g,>4\sustainOn c16\sustainOn g' c d r4

  | d,8\sustainOn a' f' a, g,\sustainOn d' g d
  | c\sustainOn g' e' g, c,\sustainOn g'16 d' e8 g
  | f,,16\sustainOn c' f g a8 c c,\sustainOn g' a,\sustainOn e'
  | d\sustainOn a' <d, g,>4\sustainOn c16 g' c d e8 g

  | \repeat unfold 2 { c,16\sustainOn g'8. c,16 g'8. }
  | \repeat unfold 2 { f,16\sustainOn c'8. f,16 c'8. }
  | \repeat unfold 2 { c16\sustainOn g'8. c,16 g'8. }
  | c,16\sustainOn g'8. c,16^\rit g'8. r2
  | c,,,1\sustainOn
}

\score {
  \new PianoStaff
  <<
    \new Staff = "up" \upper
    \new Staff = "down" \lower
  >>
}