\version "2.22.1"

\header {
  title = "Mead, Gold and Blood (Ifan's theme)"
  subtitle = "(From Divinity: Original Sin 2)"
  composer = "Borislav Slavov"

  tagline = ##f
}

quarter_note_tempo = 100

\paper {
  indent = 3\cm
}

global = {
  \time 4/4
  \tempo 4 = #quarter_note_tempo

  \skip 1*2 \break
  \skip 1*2 \break
  \skip 1*3 \break
  \skip 1*3 \break
  \skip 1*3 \break
  \skip 1*2 \break
  \skip 1*2 \break
  \skip 1*2 \break
  \skip 1*3 \break
  \bar "||"
}

whistle = {
  \relative c' {
    d8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |
    f8 g8 e16 (a16) g16 a16 f8 e8 d8 r8 |

    d8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |
    e8 g8 g4 g16 f16 e8 d8 r8 |

    d8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |
    f8 g8 e16 (a16) g16 a16 f8 e8 d8 r8 |
    d8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |

    e8 g8 g4 g16 f16 e8 d8 r8 |
    d'8 e8 f4 d4 g4 |
    d16 (c16 d8-.) e2 r4 |

    d8 e8 f4 d4 g4 |
    d16 (c16 d8-.) e2 r4 |
    d16 a16 e'16 f16 d2.

    d,8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |
    f8 g8 e16 (a16) g16 a16 f8 e8 d8 r8 |

    d8 a'8 a8 g16 a16 f16 a16 e8 g8 g8 |
    e8 g8 g4 g16 f16 e8 d8 r8 |

    d'8 e8 f4 d4 g4 |
    d16 (c16 d8-.) e2 r4 |

    d8 e8 f4 d4 g4 |
    d16 (c16 d8-.) e2 r4 |
    d16 a16 e'16 f16 d2. |
  }
}

\score {
  \new Staff \with {
    \consists "Ambitus_engraver"
    instrumentName = "Tin whistle C"
    midiInstrument = "recorder"
  } {
    << \global \whistle >>
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