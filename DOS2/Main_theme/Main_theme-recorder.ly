\version "2.22.1"

\header {
  title = "Main Theme"
  subtitle = "(From Divinity: Original Sin 2)"
  composer = "Borislav Slavov"

  tagline = ##f
}

quarter_note_tempo = 90

\paper {
  indent = 1.5\cm
}

global = {
  \time 6/8
  \tempo 4 = #quarter_note_tempo
  \skip 2.*8 \break
  \skip 2.*8 \break
  \skip 2.*6 \break
  \skip 2.*7 \break
  \bar "||"
}

recorder = {
  \key b \minor
  \relative c'' {
    b4 cis8 d4. |
    b4 cis8 b4. |
    b4 cis8 e8 d8 cis8 |
    b8 a8 cis8 b4. |
    b4 cis8 d4. |
    d8 b8 cis8 a4. |
    b8 d8 b8 b8 cis8 b8 |
    g'8 fis8 e8 cis4. |
    
    cis4 r2 |
    b4 cis8 d4. |
    d8 b8 cis8 a4. |
    g8 d'8 b4 cis8 b8 |
    g'8 fis8 e8 cis4 cis8 |
    fis,8 b'8 g8 fis8 e8 g8 |
    fis8 d8 cis8 b8-. r4 |
    r8 b'8 g8 fis8 e8 g8 |
    
    fis8 e8 cis8 b4.-. |
    a4-. fis8 a8 fis8 fis8 |
    a16 gis16 gis8 e8 gis8 fis4 |
    a8 fis8 fis8 \stemDown cis'8 a8 a8 \stemNeutral |
    cis16 d16 b8 a8 b4. |
    e8 fis8 fis,8 a8 fis8 fis8 |
    
    a'8 gis8 e,8 gis8 fis4 |
    e'8 fis8 fis,8 \stemDown cis'8 a8 a8 \stemNeutral |
    a'8 b8 a,8 b4. |
    fis8 fis'8 e8 fis,8 fis'8 e8 |
    fis,8 fis'8 e8 fis,4. |
    fis8 fis'8 e8 cis8 b8 d8 |
    cis8 a8 gis8 fis4. |
  }
}

\score {
  \new Staff \with {
    \consists "Ambitus_engraver"
    instrumentName = "Recorder"
    midiInstrument = "recorder"
  } {
    << \global \recorder >>
  }

  \layout {
    \context {
      \Staff
      \numericTimeSignature
    }
  }
  \midi {
    \tempo 4 = #quarter_note_tempo
  }
}
