\version "2.24.1"
\language "deutsch"
\include "Cover.ily"
\include "Commons.ily"
#(set-global-staff-size 19)
\pointAndClickOff

\paper {
  markup-system-spacing.padding = #5
  scoreTitleMarkup = \markup {
    \column {
      \fill-line { \fontsize #4 \bold \fromproperty #'header:piece }
      \fill-line { \fontsize #2 \bold \fromproperty #'header:instrument }
      \line { \hspace #5 { \fromproperty #'header:meter }}
    }
  }
}

\book {
  \bookOutputName "Laudate coeli - Stimmen"

  \bookpart {
    \header {
      title = \markup { \fromproperty #'header:myTitle }
      instrument = "Stimmen"
    }
    \markup \null
  } %ends titling


  \bookpart {
    #(define prefix "01/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new PianoStaff \with {
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          \consists Merge_rests_engraver
        } <<
          \new Staff <<
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") \\
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily")
          >>

          \new Staff  <<
            \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily")
          >>
        >>
      >>
      \layout {
        \context {
          \Score
          \RemoveEmptyStaves
        }
        \context {
          \Voice
          \remove Dynamic_engraver
        }
      }
    }
  }

  \bookpart {
    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new PianoStaff \with {
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          \consists Merge_rests_engraver
        } <<
          \new Staff <<
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") \\
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily")
          >>

          \new Staff  <<
            \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily")
          >>
        >>
      >>
      \layout {
        \context {
          \Score
          \RemoveEmptyStaves
        }
        \context {
          \Voice
          \remove Dynamic_engraver
        }
      }
    }
  }

  \bookpart {
    #(define prefix "03/")
    \score {
      \include #(string-append prefix "Header.ily")
      <<
        \new ChoirStaff <<
          \new Staff \with \svn
          \new Voice = "SopranM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "SopranM.ily") >>
          \new Lyrics \lyricsto "SopranM" \include #(string-append prefix "SopranT.ily")

          \new Staff \with \avn
          \new Voice = "AltM"
          << \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "AltM.ily") >>
          \new Lyrics \lyricsto "AltM" \include #(string-append prefix "AltT.ily")

          \new Staff \with \bvn
          \new Voice = "BassM"
          << \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "BassM.ily") >>
          \new Lyrics \lyricsto "BassM" \include #(string-append prefix "BassT.ily")
        >>

        \new PianoStaff \with {
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          \consists Merge_rests_engraver
        } <<
          \new Staff <<
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine1.ily") \\
            \clef "treble" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violine2.ily")
          >>

          \new Staff  <<
            \clef "bass" \include #(string-append prefix "Global.ily") \include #(string-append prefix "Violoncello.ily")
          >>
        >>
      >>
      \layout {
        \context {
          \Score
          \RemoveEmptyStaves
        }
        \context {
          \Voice
          \remove Dynamic_engraver
        }
      }
    }
  }

}
