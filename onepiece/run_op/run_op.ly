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
    title = "One Piece - Run Run Run"
    composer = "Kohei Tanaka - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"One Piece - Run Run Run - arr. Ampholyte"
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
          \tempo 4 = 180 
          {

            cymc4 <hho sn> hho <hho sn>8 <cymc bd>
            s4 <sn hho>8 bd hho4 <hho sn>8 bd
            cymc4 <hho sn> hho <hho sn>8 <cymc bd>
            s4 <sn hho>8 bd hho4 <hho sn>8 bd
            cymc4 <hho sn> hho <hho sn>8 <cymc bd>
            s4 <sn hho>8 bd hho4 <hho sn>

            % Mesure 7
            bd8 <cymc sn>4. bd8 <cymc sn>4.
            r8 <cymc sn>4 <cymc sn> <cymc sn> <cymc sn>8

            \repeat unfold 2 {
              cymc4 <hho sn> hho <hho sn>

              \repeat unfold 6 {
                hho4 <hho sn> hho <hho sn>
              }

              hho4 <hho sn>8 sn16 sn16 sn8 sn8 sn8 sn8
            }

            % Mesure 25
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <sn hho> sn8 sn sn sn
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            cymc4 sn8 <cymc bd> s4 <hho sn>4

            % Mesure 33
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>8 sn16 sn
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            <cymc>4 sn8 <cymc bd> s4 <hho sn>
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> sn8 sn sn sn
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            sn4 hhp r2
            r1

            % Mesure 55
            cymc4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn>
            bd8 <cymc sn> r4 <cymc sn>8 bd <cymc sn> <cymc sn>
            cymc4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymc4 sn8 sn sn sn sn sn

            % Mesure 71
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> sn8 sn sn sn

            % Mesure 75
            cymc4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho <hho sn>
            hho4 <hho sn> hho8 sn sn sn
            bd8 <cymc sn>4. bd8 <cymc sn>4.
            r8 <cymc sn>4 <cymc sn> <cymc sn> <cymc sn>8

            % Mesure 83
            cymc4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            cymc4 sn8 <cymc bd> s4 <sn hho>
            cymc4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            <hho> sn8 sn16 sn sn8 sn sn sn
            cymc4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            sn4 hhp r2
            r1

            % Mesure 101
            cymc4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            bd8 <cymc sn> r4 <cymc sn>8 bd <cymc sn> <cymc sn>
            cymc4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            cymr4 <cymr sn> cymr <cymr sn> 
            <cymc bd>4 sn8 sn sn sn sn sn

            % Mesure 117
            cymc4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            <sn hho>4 hhp hhp hhp
            r1 r1 r1 r1
            hho4 hho <hho sn> hho
            hho4 hho <hho sn> hho
            hho4 hho <hho sn> hho
            hho4 sn8 sn sn sn sn sn
            hhp4 r2.
            hhp4 hhp hhp hhp
            r2 r4. <tomh bd>16 <tomh bd>
            tomh4 <cymc sn> r2

            % Mesure 133
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            s2. sn8 sn
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            s2. sn8 sn

            % Mesure 147 
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr8[ sn16 sn] sn8 sn sn16[ sn sn8] sn8 sn
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr8[ sn16 sn] sn8 sn sn16[ sn sn8] sn8 sn        
            
            % Mesure 163
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>

            
            % Mesure 182
            cymr4 <cymr sn>8 s4 <cymr bd>8 sn8 sn
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr sn8 sn8
            r1

            \bar "||"
          } 
          \\ 
          { 
            bd4 s bd8 bd8 s4
            r8 bd8 s4 bd8 bd8 s4
            bd4 s bd8 bd8 s4
            r8 bd s4 bd8 bd s4
            bd4 s bd8 bd8 s4
            r8 bd s4 bd8 bd s4

            % Mesure 7
            s1
            s1
            \repeat unfold 2 {
              \repeat unfold 7 {
                bd4 s4 bd8 bd8 s4
              }
              bd4 s2.
            }

            % Mesure 25
            \repeat unfold 2 {
              \repeat unfold 3 {
                bd4 s bd8 bd8 s4
              }
            }
            bd4 s bd8 bd8 s4  
            bd4 s4 r8 bd s4

            % Mesure 33
            \repeat unfold 7 {
              bd4 s bd8 bd8 s4
            }
            bd4 s r8 bd s4

            \repeat unfold 3 {
              bd4 s bd8 bd8 s4
            }
            bd4 s2.

            \repeat unfold 8 {
              bd4 s bd8 bd s4
            }
            s1
            s1

            % Mesure 55
            \repeat unfold 2 {
              \repeat unfold 7 {
                bd4 s bd8 bd s4
              }

              bd4 s2.
            }

            % Mesure 71
            \repeat unfold 3 {
              bd4 s bd8 bd s4
            }
            bd4 s2.

            % Mesure 75
            \repeat unfold 5 {
              bd4 s bd8 bd s4
            }

            bd4 s bd s

            s1
            s1

            % Mesure 83
            \repeat unfold 3 {
              bd4 s4 bd8 bd8 s4
            }

            bd4 s4 r8 bd s4

            \repeat unfold 3 {
              bd4 s4 bd8 bd8 s4
            }

            bd4 s2.

            \repeat unfold 8 {
              bd4 s4 bd8 bd8 s4
            }

            s1
            s1

            % Mesure 101
            \repeat unfold 2 {
              \repeat unfold 7 {
                bd4 s4 bd8 bd8 s4
              }

              s1
            }

            % Mesure 117
            bd4 s bd8 bd s4
            bd4 s bd8 bd s4
            bd4 s bd s4
            bd4 s2.
            s1 s1 s1 s1
            bd4 s2.
            bd4 bd s2
            bd4 s2.
            bd4 s2.
            s1
            s1
            s1
            s1

            % Mesure 133
            \repeat unfold 5 {
              bd4 s bd8 bd8 s4
            }

            bd8 toml16 tommh16 bd8 bd sn bd s4

            \repeat unfold 7 {
              bd4 s bd8 bd8 s4
            }

            bd8 toml16 tommh16 bd8 bd sn bd s4

            % Mesure 147
            \repeat unfold 2 {
              \repeat unfold 7 {
                bd4 s bd8 bd8 s4
              }

              bd4 s2.
            }

            % Mesure 163
            \repeat unfold 19 {
              bd4 s bd8 bd8 s4
            }

            % Mesure 182
            bd4 s8 bd4 s8 s4
            \repeat unfold 8 {
              bd4 s bd8 bd8 s4
            }


          } 

        >>

      } 
    >>

  }
