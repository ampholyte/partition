\version "2.18.2"
\language "italiano"

titlestr = "Stephane Moucha - Sebastien le Floch"
composerstr = "Flute - arr. Ampholyte"


\header {
    title = \titlestr
    composer = \composerstr 

}

\paper {
    print-page-number = ##t
        print-first-page-number = ##t
        oddHeaderMarkup = \markup \null
        evenHeaderMarkup = \markup \null
        oddFooterMarkup = \markup {
            \fill-line {
                \on-the-fly \print-page-number-check-first
                    \fromproperty #'header: \titlestr
                    \fromproperty #'page:page-number-string
            }
        }
    evenFooterMarkup = \oddFooterMarkup
}

\score {
    \new Staff {
        \key do \major
            \numericTimeSignature
            \time 4/4
            \tempo 4 = 70-72
            \relative do'' {
                \partial 4  r8. sol16 
                    do8 re16 mi fa8 mi16 re mi8 fa16 sol la8 sol16 fa sol la si do si la sol fa mi fa sol la sol fa mi re 
                    do8 re16 mi fa8 mi16 re mi8 fa16 sol la8 sol16 fa sol do sol mi re8 la' sol4.. sol,16 
do8 re16 mi fa8 mi16 re mi8 fa16 sol la8 sol16 fa sol la si do si la sol fa mi fa sol la sol fa mi re do8
                    re16 mi fa8 mi16 re mi8 fa16 sol la8 sol16 fa sol do sol mi re8 sol do,2 \bar "|."
            }
    }
}

