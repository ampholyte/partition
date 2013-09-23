\version "2.12.3"

%{
  frappe baguette : ss
  grosse caisse : bd
  caisse claire : sn
  tom aigu : tomh
  tom medium : tommh
  tom basse : toml
  charleston : hh
  charleston ouvert : hho
  charleston mi-ouvert : hhho
  charleston ferme : hh
  pedale charleston : hhp
  crach :  cymc
  ride : cymcb

  %}

  \header {
    title = "Final Fantasy 4 - Main Theme Drum"
    composer = "Nobuo Uematsu - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Final Fantasy 4 - Main Theme - arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup

    % Pour réduire sur une seule page

    % system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
    % ragged-last-bottom = ##f
    % ragged-bottom = ##f
  }

  \score {

    \new DrumStaff 
    << 
      \new DrumVoice = "1" { s1 *1 } % voix du haut (une mesure)
      \new DrumVoice = "2" { s1 *1 } % voix du bas (une mesure)
      \drummode 
      { 
        #(override-auto-beam-setting '(end * * 4 4) 3 4) 
        #(override-auto-beam-setting '(end * * 4 4) 1 4)
        % Les deux lignes précédentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par défaut.

        << 
          \tempo 4 = 140 
          {
            r1 
            r1
            \repeat unfold 66 {
              hh8 hh16 hh hh8 hh16 hh <hh sn>8 hh16 hh hh8 hh16 hh
              hh8 hh16 hh hh8 hh16 hh <hh sn>8 hh16 hh hh8 hh16 hh
            }

            \bar "||"
          } 
          \\ 
          { 
            s1
            s1

            \repeat unfold 66 {
              bd8 bd s2.
              bd4 bd s2
            }

          } 

        >>

      } 
    >>

  }
