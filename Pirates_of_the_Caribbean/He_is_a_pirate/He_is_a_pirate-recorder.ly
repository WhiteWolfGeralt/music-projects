\version "2.22.1"

\header {
  title = "He's a pirate"
  subtitle = "(From Pirates of the Carribbean)"
  composer = "Hans Zimmer"
  arranger = "Iryna Flute"

  tagline = ##f
}

quarter_note_tempo = 170

\paper {
  indent = 1.5\cm
}

global = {
  \time 6/8
  \tempo 4 = #quarter_note_tempo
}

recorder = {
  \relative c' {
    r2 e8 g8 |
    \repeat volta 2 {
      a4 a4 a8 b8 |
      c4 c4 c8 d8 |
      b4 b4 a8 g8 |
      g8 a4 r8 e8 g8 |
      a4 a4 a8 b8 |
      c4 c4 c8 d8 |
      b4 b4 a8 g8 |
      \break
      g8 r8 r4 e8 g8 |
      a4 a4 a8 c8 |
      d4 d4 d8 e8 |
      f4 f4 e8 d8 |
      e8 a,4 r8 a8 b8 |
      c4 c4 d4 |
      e8 a,4 r8 a8 c8 |
    }
    \alternative {
      {
        b4 b4 c8 a8 |
        \break
        b4 r4 e,8 g8 |
      }
      {
        b4 b4 a8 g8 |
      }
    }
    a4 a4 b4 |
    c4 c4 d4 |
    e2 c8 a8 |
    e2. |
    f'2 d8 a8 |
    f2. |
    r2 r4 |
    r4 r4 c'8 d8 |
    e4 e4 e4 |
    \break
    
    f8 e2 r8 |
    d4 d4 d4 |
    d8 e2 r8 |
    e4 e4 e4 |
    f8 e2 r8 |
    d4 c4 b4 |
    a2 a8 b8 |
    c2 d8 e8 |
    d4 c4 b4 |
    c4 d4 e4 |
    d2 c8 d8 |
    \break
    
    e2 d8 c8 |
    b4 c4 b4 |
    a2 b8 g8 |
    a2 a8 b8 |
    c2 b8 c8 |
    d4 c4 d4 |
    e4 d4 c4 |
    a2 a8 c8 |
    c4 d4 e4 |
    f4 a,4 d4 |
    c2 d8 b8 |
    \break
    
    a2 b8 gis8 |
    e'2. |
    f2. |
    e4 e4 e4 |
    e8 d2 r8 |
    d2. |
    c2.
    b4 c4 b4 |
    a4. a8 b8 c8 |
    e4. a,8 b8 c8 |
    f4. a,8  b8 c8 |
    \break
    
    e4 e4 g4 |
    e8 d2 r8 |
    d2. |
    c2. |
    b4 c4 b4 |
    a2. |
    a2. |
    \bar "||"
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
}

\score {
  << \global \unfoldRepeats \recorder >>
  \midi {
    \tempo 4 = #quarter_note_tempo
  }
}