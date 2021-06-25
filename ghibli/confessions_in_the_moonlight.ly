%{ Confessions in the Moonlight by Joe Hisaishi %}

\version "2.22.0"

\header {
  composer = "Joe Hisaishi"
  title = "Confessions in the Moonlight"
}

subP = \markup { \italic sub. \dynamic p }

upper = \relative c' {
  \clef treble
  \key ees \major
  \time 4/4
  \tempo 4 = 84

  \set Score.markFormatter = #format-mark-box-letters

  \partial 4 c'8\p \( d
  | << { ees4. d8 ees4 g } \\ { <c,, ees g>1 } >>
  | << { \voiceOne d'2. \) g,4 \( } \new Voice { \voiceTwo <bes, d g>1 } >> \oneVoice
  | << { \voiceOne c'4. bes8 c4 ees } \new Voice { \voiceTwo <aes,, ees' g>1 } >> \oneVoice
  | << { \voiceOne bes'2. \) g4 \( } \new Voice { \voiceTwo <g, d' f>1 } >> \oneVoice

  | aes'4. g8 aes4 ees'4
  | g,2 ( g8 ) \) c8\< \( d ees\!
  | d4. a8 a4\> d\!
  | << { \voiceOne <d>2.-- \) c8\mp \( d } \new Voice { \voiceTwo c4.-- c8 ( b4 ) r4 } >> \oneVoice \mark \default
  \bar "||" ees4. d8 ees4 g

  | d2. \) g,4 \(
  | c4. bes8 c4 ees
  | bes2. \) g4 \(
  | aes4 ees'8 d~ 4 ees
  | f4 g8 ees~ 2

  | << { ees8 d c4 d b } \\ { aes2 g2 } >> \oneVoice
  | <ees g c>2.\arpeggio \) ees'8\mf \( f \mark \default
  \bar "||" <g, bes ees g>4.\arpeggio f'8 g4 <bes, bes'>4
  | <f bes d f>2.\arpeggio \) bes4 \(
  | <ees, g c ees>4.\arpeggio <d d'>8 \tuplet 3/2 { <ees ees'>4 <f f'> <g g'> }

  | <g bes d g>2.\arpeggio \) r4
  | << { c8 ( d ees4 ) d8 ( ees f4 ) } \\ { <ees, g>2 <f bes>2 } >>
  | <ees g bes ees>4.\arpeggio bes'8 bes2
  | <aes c f aes>4\arpeggio <g g'>4 <f f'>4 <ees ees'>4
  | <g c d g>1\arpeggio \(

  | << { \voiceOne g'2. \) g4\! \( } \new Voice { \voiceTwo <g, b d>2.\arpeggio <g b d f>4\f } >> \oneVoice \mark \default
  \bar "||" <c ees g c>2\arpeggio <bes ees g bes>
  | <g c ees g>4 <f f'>8 <ees ees'>~ 2  \)
  | <f bes d f>4 \( <ees ees'>8 <f f'>~ 8 <bes bes'>4 <g g'>8~
  | << { \voiceOne 2. \) <g g'>4 \( } \new Voice { \voiceTwo r8 g8 bes g <f b>4 } >> \oneVoice

  | <c' ees g c>2\arpeggio <bes ees g bes>
  | <g c ees g>4 <f f'>8 <ees ees'>8~ 2\> \)
  | <f bes d f>4\mf \( <ees ees'>8 <bes' f'>~ 4 \) <f d'-->4
  | << \relative c' { \voiceOne c'1~ | 1 } \\
       \relative c' { \voiceTwo ees4 bes' \( aes g | f2 ees4 d \) } >> \mark \default

  \bar "||" <<
    \new Voice \relative c' {
      \voiceOne
      \override Stem.direction = #UP
      <des' f aes c>8\arpeggio^ ( c c' c, f c c' c, )
      | <des f aes c>8\arpeggio^ ( f c' f, aes8 f c' f, )
      | <bes, c ees bes'>8\arpeggio^ ( bes bes' bes, ees bes bes' bes, )
      | <bes c ees bes'>8\arpeggio^ ( bes bes' bes, ees c bes' ees, ) }

    \new Voice \relative c' {
      \voiceTwo
      \override Stem.direction = #DOWN
      \phrasingSlurDown
      \slurDown
      aes'2. \( g8 f
                | c'2. bes8 c
                | \slurDown ees,1 (
                | ees4 ) \) ees ( aes bes ) }
  >>

  | <<
    \new Voice \relative c'' {
      \voiceOne
      \override Stem.direction = #UP
      <des f aes c>8\arpeggio ( f c' f, aes f c' f, )
      | <des f aes c>8\arpeggio ( f c' f, aes f c' f, )
      | <c ees bes'>8\arpeggio ( ees bes' ees, g ees bes' ees, )
      | <bes c ees bes'>8\arpeggio ( bes bes' bes, bes'4 ) r4
    }

    \new Voice \relative c'' {
      \voiceTwo
      \override Stem.direction = #DOWN
      c2. \( bes8 c
      | f,1
      | bes2. aes8 bes
      | ees,1 \)
    }
  >> \mark \default

  \bar "||" r1
  | <des f aes c>2.\arpeggio ( <des f aes bes>4 )
  | \slurUp <c ees bes'>2.\arpeggio\> ( < c ees aes>4 )
  | <c d g>4\! <d c' d> ( <ees c' ees> <f c' f> )
  | <g b g'>2. <g b d g>4--

  | <<
    \new Voice \relative c''' {
      \voiceOne
      \override Stem.direction = #UP
      <g ees'>2\mf \( d'8 c bes a
      | <f bes>4. g8 c bes aes g \)
    }

    \new Voice \relative c'' {
      \voiceTwo
      \override Stem.direction = #DOWN
      ees8 ( g f ees <d fis>2 )
      | bes8 ( d c bes <c ees>2 )
    }
  >>
  | <g c g'>4. ( <f c' f>8 <f a c f>2 )
  | <aes d f aes>4. ( <g d' g>8 <g d' g>2 )
  | <g d' g>1\arpeggio
  | << { <c f bes>1_\subP } \\ { r8 g,8--^\mf ( d'-- ) ( bes'-- ) \repeat tremolo 8 { c32 <f bes> }}  >>

  | \repeat tremolo 16 { c32 <f bes> }
  | <c f bes>2\fermata r2
  \bar "|."
}

lower = \relative c {
  \clef bass
  \key ees \major

  \partial 4 r4
  | r1
  | r1
  | r1
  | r1

  | <f c' ees>1
  | <ees g c>1
  | <d fis c'>1
  | <g d' g>1
  | c,8 g' ees' g, d' g, c g

  | bes,8 g' d' g, c g bes g
  | aes,8 ees' c' ees, bes' ees, aes ees
  | g,8 ees' bes' ees, g ees bes' ees,
  | f,8 c' aes' c, g' c, f c
  | ees,8 c' ees c g' c ( d ees )

  | <f, c' ees>2\arpeggio <g d' f>\arpeggio
  | c,8 ( g' c ees g2 )
  | << { r8 g, bes ees g ees bes g } \\ { <ees, ees'>1 } >>
  | d'8 f bes d f d bes d,
  | c8 g' c g c g ees' g,

  | \stemDown bes,8 g' bes d g d bes g
  | aes,8 aes' <c ees>4 aes,8 f' <d' f>4
  | \stemDown g,,8 bes' ees bes g' ees bes ees
  | f,,8 c' f aes c aes f c
  | \stemDown g8 d' g c d g\< c d

  | g,,8 [ d' g ] g [ <b d> g ] <g,, g'>4\!
  | c,8 g' c ees g ees g c
  | aes,,8 aes' ees' aes c aes ees aes
  | bes,,8 bes' f' bes d f, bes d
  | ees,,8 bes' g' ees d, b' g' d

  | c,8 g' c ees g ees g c
  | aes,,8 aes' ees' aes c aes ees aes
  | bes,8 ( f' bes d f4 ) r4
  | << { r4 bes, \( aes g | f2 ees4 d \) } \\ { c1~ c1 } >>
  | r1

  | r1
  | r1
  | r1
  | r1
  | r1

  | r1
  | r2 r8 ees^\mf^\< ( f g )
  | g2. ( f4 )\!
  | c'2. ( bes4 )
  | bes2. ( aes4 )

  | g,8 d g d' g2
  | \repeat tremolo 6 { g,16 g'16 } <g, g'>4--
  | <c c'>2 <d d'>
  | <g, g'>2 <aes aes'>
  | << { ees'8 ( g f ees f2 ) } \\ { a,1 } >>

  | << { d8 ( f ees d d2 ) } \\ { bes1 } >>
  | <b g' d'>1\arpeggio
  | \repeat tremolo 16 { c,32 c'^\p^\< }
  | \repeat tremolo 16 { c,32 c'^\f }
  | <c, c'>2\fermata r2
}

\score {
  \new PianoStaff <<
    \new Staff = "up" \upper
    \new Staff = "down" \autoChange f' \lower
  >>
}