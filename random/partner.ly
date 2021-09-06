%{ 同类 孙燕姿 %}

\version "2.22.0"

\header {
  title = "同类"
  composer = "李偲菘"
  arranger = "未知"
}

upper = \relative c'' {
  \clef treble
  \key d \major
  \tempo 4 = 96

  r2 a8 b d4 | e e8 d e2~ | e4 e8 fis a8 fis e d | e4 e8 d e4 fis |
  b,1 | e4 e8 d e2~ | e4 e8 fis a8 fis e d | e4 e8 d e4 fis |
  b, a8 b b4. d8 | e1~ | e4 e8 fis fis4. fis,8 | d'1~ |
  d4 cis8 fis fis4. cis8 | b1~ | b4 b8 d b8. a16~ a8 d, | fis1~ |
  fis4 a8 b b4. d8 | e1 | e4 e8 fis fis4. fis,8 | d'1~ |
  d4 cis8 fis fis4. cis8 | b2. b8 d | g8 fis d b a2 | g'8 fis fis2. |
  r2. a4 | e e8 d e4. b8 | g'8 fis d b a4. a'8 | e4 e8 d e4. d8 |
  a'8 b a fis d4. a'8 | e4 e8 d e4 d8 e | r8 d8 e fis a fis e d | b'8 b b b a4. fis8 |
  e fis e2 a4 | e e8 d e4 b8 d | g fis d e b a4 a'8 | e4 e8 d e4 b8 d |
  b' a a fis e d4. | fis16 d b8~ b2. | r4 a8 b b4. d8 | e1~ |
  e4 e8 fis fis4. fis,8 | d'1~ | d4 cis8 fis fis4. cis8 | b2. b8 d |
  g fis d b a4 e' | d1

  \bar "|."
}

lower = \relative c {
  \clef bass
  \key d \major

  r1 | e,4 b' g' b, | a e' cis' e, | b fis' d' fis, |
  g, d' b' d, | e, b' g' b, | a e' cis' e, | b fis' d' fis, |
  g, d' b' d, | e, b' g' b, | fis cis' a' cis, | b fis' d' fis, |
  fis, cis' a' cis, | g d' b' d, | e, b' g' b, | d, a' fis' a, |
  d, a' fis' a, | e b' g' b, | fis cis' a' cis, | b fis' d' fis, |
  fis, cis' a' cis, | g d' b' d, | a e' cis' e, | d, a' fis' a, |
  d, a' fis' a, | e b' g' b, | a e' cis' e, | e, b' g' b, |
  b fis' d' fis, | e, b' g' b, | b fis' d' fis, | a, d b' d, |
  a e' cis' e, | e, b' g' b, | a e' cis' e, | e, b' g' b, |
  b fis' d' fis, | g, d' b' d, | g, d' b' d, | e, b' g' b, |
  fis cis' a' cis, | b fis' d' fis, | fis, cis' a' cis, | g d' b' d, |
  a e' cis' e, | d, a' fis' a,
}

\score {
  \new PianoStaff
  <<
    \new Staff = "up" \upper
    \new Staff = "down" \lower
  >>
}