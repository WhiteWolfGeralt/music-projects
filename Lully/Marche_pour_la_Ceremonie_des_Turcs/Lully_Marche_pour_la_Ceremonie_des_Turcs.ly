\version "2.24.0"

% Transcription from the supplied two-page score.
% The source has a two-flat key signature and cut time (alla breve).
% Continuo figures are retained as small text annotations below the bass notes.

\header {
  title = "Marche pour la Cérémonie des Turcs"
  subtitle = "Le Bourgeois Gentilhomme (1670)"
  composer = "Jean-Baptiste Lully (1632–1687)"
  tagline = ##f
}

quarter_note_tempo = 100

\paper {
  indent = 2\cm
  short-indent = 1\cm
}

global = {
  \key g \minor
  \time 2/2
  \tempo 4 = #quarter_note_tempo

  \skip 1*4 \break
  \skip 1*6 \break
  \skip 1*5 \break
  \skip 1*5 \break
  \bar ":|."
}

violinOne = \relative c' {
  \clef treble
  \repeat volta 2 {
    d'2 d2 |
    bes4. a8 g4 g'4 |
    d4. e8 f4 f4 |
    f2 d4.\trill c16 d16 |
    ees4. d8 c4.\trill bes8 |
  }
  \alternative {
    {
      bes1 |
    }
    {
      bes1 |
    }
  }
  \repeat volta 2 {
    f'2 fis4.\trill e16 fis16 |
    g4. a8 bes4 a8 g8 |
    a2 d,4 d4 |
    d4. g8 e4. a8 |
    fis4\trill d4 g4 g4 |
    g4. a8 a4.\trill g16 a16 |
    bes4. a8 g8 f8 ees8 d8 |
    c8 d8 a8 bes8 a4.\trill g8 |
    g2 g'4 g4 |
    g4. a8 a4.\trill g16 a16 |
    bes4. a8 g8 f8 ees8 d8 |
    c8 d8 a8 bes8 a4.\trill g8 |
    g1 |
  }
}

violinTwo = \relative c' {
  \clef treble
  \repeat volta 2 {
    bes'2 a2 |
    g2. bes4 |
    bes4. c8 a4 a8 bes8 |
    c4 a4 bes2 |
    b2 a4.\trill b8 |
  }
  \alternative {
    {
      b1 |
    }
    {
      b1 |
    }
  }
  \repeat volta 2 {
    d2 c2 |
    b4. c8 d4 d4 |
    d4. c8 b4 b4 |
    b2 a4. a8 |
    a4 d8 c8 b4 b4 |
    b4 e2 d4 |
    d4. c8 b8 a8 g4 |
    g4 a8 g8 fis4.\trill g8 |
    g4 d'8 c8 b4 b4 |
    b4 e2 d4 |
    d4. c8 b8 a8 g4 |
    g4 a8 g8 fis4.\trill g8 |
    g1
  }
}

violinThree = \relative c' {
  \clef treble
  \repeat volta 2 {
    g'2 fis2 |
    g2. g4 |
    g4. g8 f2 |
    f4 f4 f2 |

    g2 f4. e8 |
  }
  \alternative {
    {
      d1 |
    }
    {
      d1 |
    }
  }
  \repeat volta 2 {
    d2. d4 |
    d4. c8 b4 b'4 |
    a2 g4 g4 |
    d4. e!8 cis4. d8 |
    d8 e!8 fis4 g4 g4 |
    g2 g4 fis4 |
    g4 d2 d4 |
    e2 d4. c8 |
    b4 b'8 a8 g4 g4 |
    g2 g4 fis4 |
    g4 d2 d4 |
    e2 d4. c8 |
    b!1
  }
}

altoPart = \relative c' {
  \clef alto
  \repeat volta 2 {
    d2 d2 |
    g,4. a8 b4 b4 |
    b8 c8 d4 d2 |
    c2 b4. a8 |
    g4 b4 f4. f8 |
  }
  \alternative {
    {
      f1 |
    }
    {
      f1 |
    }
  }
  \repeat volta 2 {
    b2 c4 a4 |
    b4. a8 g4 g4 |
    d'2 d4 g4 |
    g4. e!8 e4. d8 |
    d4 a4 g4 g4 |
    b4. b8 a4 a4 |
    g8 a8 b8 c8 d4. g,8 |
    g4 c4 a4 d4 |
    d4 g,4 g4 g4 |
    b4. b8 a4 a4 |
    g8 a8 b8 c8 d4. g,8 |
    g4 c4 a4 d4 |
    d1
  }
}

bassPart = \relative c' {
  \clef bass
  \repeat volta 2 {
    g2 d2 |
    ees2. e8 f8 |
    g4 g4 d2 |
    a'4_\markup { \tiny "6" } f4 b2 |
    e,2 f4 f,4 |
  }
  \alternative {
    {
      b2 b'4. a8 |
    }
    {
      b,1 |
    }
  }
  \repeat volta 2 {
    b'2 a2_\markup \center-column { \tiny "6#" \tiny "4" \tiny "3" } |
    g2. g4 |
    fis2_\markup { \tiny "6" } g4 g8 a8 |
    b4_\markup { \tiny "6" } g4 a4_\markup { \tiny "5♮" } a,4 |
    d2_\markup { \tiny "#" } e4 e4 |
    e2 c4_\markup \center-column { \tiny "6" \tiny "5" } d4_\markup { \tiny "#" } |
    g,4. a8 b2_\markup { \tiny "6" } |
    c2_\markup \center-column { \tiny "5" \tiny "6" } d4_\markup { \tiny "#" } d,4 |
    g4 g'8 f8 e4 e4 |
    e2 c4_\markup \center-column { \tiny "6" \tiny "5" } d4 |
    g,4. a8 b2_\markup { \tiny "6" } |
    c2_\markup \center-column { \tiny "5" \tiny "6" } d4_\markup { \tiny "#" } d,4 |
    g1
  }
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      \consists "Ambitus_engraver"
      instrumentName = "Violon I"
      shortInstrumentName = "V. I"
      midiInstrument = "violin"
    } {
      << \global \violinOne >>
    }
    \new Staff \with {
      \consists "Ambitus_engraver"
      instrumentName = "Violon II"
      shortInstrumentName = "V. II"
      midiInstrument = "violin"
    } {
      << \global \violinTwo >>
    }
    \new Staff \with {
      \consists "Ambitus_engraver"
      instrumentName = "Violon III"
      shortInstrumentName = "V. III"
      midiInstrument = "violin"
    } {
      << \global \violinThree >>
    }
    \new Staff \with {
      \consists "Ambitus_engraver"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      midiInstrument = "viola"
    } {
      << \global \altoPart >>
    }
    \new Staff \with {
      \consists "Ambitus_engraver"
      instrumentName = "B. continue"
      shortInstrumentName = "B. c."
      midiInstrument = "cello"
    } {
      << \global \bassPart >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = #quarter_note_tempo
  }
}
