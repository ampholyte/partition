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
    title = " Nintendo  - Super Mario Bros. - Overworld Drum"
    composer = "Koji Kondo - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:" Nintendo  - Super Mario Bros. - Overworld Drum - arr. Ampholyte"
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
          \tempo 4 = 100 
          {
            s1
            sn8 bd16 sn r16 bd sn8 sn8. sn16 bd16 sn sn sn

            \repeat volta 2 {
              \repeat unfold 12 {
                hh8[ \times 2/3 {hh8 hh16]} 
                <hh sn>8[ \times 2/3 {hh8 hh16]}
                hh8[ \times 2/3 {hh8 hh16]}
                <hh sn>8[ \times 2/3 {hh8 hh16]}
              }

              \repeat unfold 4 {
                sn8 bd16 sn
                r16 bd sn8
                sn8. sn16
                bd16 sn sn sn
              }

              \repeat unfold 4 {
                hh8[ \times 2/3 {hh8 hh16]} 
                <hh sn>8[ \times 2/3 {hh8 hh16]}
                hh8[ \times 2/3 {hh8 hh16]}
                <hh sn>8[ \times 2/3 {hh8 hh16]}
              }

              \repeat unfold 8 {
                hh8. hh16 <hh sn>8 hh hh8. hh16 <sn hh>8 hh
              }

              \repeat unfold 4 {
                sn8 bd16 sn
                r16 bd sn8
                sn8. sn16
                bd16 sn sn sn
              }

              \repeat unfold 4 {
                hh8. hh16 <hh sn>8 hh hh8. hh16 <sn hh>8 hh
              }



            }

            \bar "||"
          } 
          \\ 
          { 
            r1
            s1
            \repeat volta 2 {
              \repeat unfold 12 {
                bd4 s bd s
              }

              \repeat unfold 4 {
                s1
              }

              \repeat unfold 4 {
                bd4 s bd s
              }

              \repeat unfold 8 {
                bd4 s bd s
              }
              
              \repeat unfold 4 {
                s1
              }
              
              \repeat unfold 4 {
                bd4 s bd s
              }


            }

          } 

        >>

      } 
    >>

  }
