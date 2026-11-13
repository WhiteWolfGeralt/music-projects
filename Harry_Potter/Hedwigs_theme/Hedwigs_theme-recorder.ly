\version "2.22.1"

\header {
  title = "Hedwig's theme"
  subtitle = "(From Harry Potter and the Philosopher's Stone)"
  composer = "John Williams"

  tagline = ##f
}

quarter_note_tempo = 150

\paper {
  indent = 2\cm
}

global = {
  \time 3/4
  \tempo 4 = #quarter_note_tempo

  \skip 2.*12 \break
  \skip 2.*12 \break
  \skip 2.*12 \break
  \skip 2.*12 \break
  \skip 2.*13 \break
  \skip 2.*4 \break
  \bar "||"
}

recorder = {
  \clef "treble^8"
  \relative c'' {
    r2 e4 |
    a4. c8 (b4) |
    a2 e'4 |
    d2. |
    b2. |
    a4. c8 (b4) |
    gis2 bes4 |
    e,2. |
    r2 e4 |
    a4. c8 (b4) |
    a2 e'4 |
    g2 fis4 |
    
    f2 cis4 |
    f4. e8 (dis4) |
    dis,2 c'4 |
    a2. |
    r2 c4 |
    e2 c4 |
    e2 c4 |
    f2 e4 |
    dis2 b4 |
    c4. e8 (dis4) |
    dis,2 e4 |
    e'2. |
    
    r2 c4 |
    e2 c4 |
    e2 c4 |
    g'2 fis4 |
    f2 cis4 |
    f4. e8 (dis4) |
    dis,2 c'4 |
    a2. |
    r2. |
    r2 e4 |
    a4. c8 (b4) |
    a2 e'4 |
    
    d2. |
    b2. |
    a4. c8 (b4) |
    g2 bes4 |
    e,2. |
    r2 e4 |
    a4. c8 (b4) |
    a2 e'4 |
    g2 fis4 |
    f2 cis4 |
    f4. e8 (dis4) |
    dis,2 c'4 |
    
    a2. |
    r2 c4 |
    e2 c4 |
    e2 c4 |
    f2 e4 |
    dis2 b4 |
    c4. e8 (dis4) |
    dis,2 e4 |
    e'2. |
    r2 c4 |
    e2 c4 |
    e2 c4 |
    g'2 fis4 |
    
    f2 cis4 |
    f4. e8 (dis4) |
    dis,2 c'4 |
    a2. |
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
