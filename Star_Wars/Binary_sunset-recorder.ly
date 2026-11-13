\version "2.22.1"

\header {
  title = "Binary sunset (Force theme)"
  subtitle = "(From Star Wars)"
  composer = "John Williams"

  tagline = ##f
}

quarter_note_tempo = 80

\paper {
  indent = 2\cm
}

global = {
  \time 4/4
  \tempo 4 = #quarter_note_tempo

  \bar "||"
}

% TODO: unfinished
recorder = {
  \key b \minor
  \clef "treble"
  \relative c' {
      r2. r8 fis8 |
      b2 cis4. d16 (e16) |
      \break
      
      d2 fis,4. fis8 |
      b4. cis8 d8 (fis,8) \tuplet 3/2 {d'8 (b8 fis'8)} |
      e2. fis,4 |
      b4. cis8 d8. [fis,16 fis'8. d16] |
      \break
      
      b'2 b,4 \tuplet 3/2 {d8 (cis8 b8)} |
      (fis'4 \tuplet 3/2 { fis8) d8 (b8)} fis4 fis8. fis16 |
      
  }
  % \relative c'' {
%     d4 g2 a2 bes8 c8 bes2 d,2
%     d4 g2 a8 bes8. d,8 bes'8 g8 d'8 c2
%     d,2 g2 a8 b8. g8 d'8. b8 g'
%   }
  % \relative c'' {
%     r2 r4.
%     e8 g2 a4. bes16 c16 bes2 d,4.
%     d8 g4. a8 bes8. d,8 \tuplet 3/2 {bes'8 g8 d'8} c2.
%     d,4 g4. a8 b8. g16 d'8. b16 g'2
%   }
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
