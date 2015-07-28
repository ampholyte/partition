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
    title = "Final Fantasy 10  - Otherworld Drum"
    composer = "Junya Nakano - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:" Final Fantasy 10 - Otherworld  - arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup

    % Pour reduire sur une seule page

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
        %#(override-auto-beam-setting '(end * * 4 4) 3 4) 
        %#(override-auto-beam-setting '(end * * 4 4) 1 4)
        % Les deux lignes precedentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par defaut.

        << 
          \tempo 4 = 140 
          {
            \repeat volta 2 {
              cymc8 cymc cymc2.
              cymc8 cymc cymc2.
              cymc8 cymc cymc2.
              <cymc sn>8 bd <cymc bd> bd <cymc sn> tommh16 toml toml toml toml8
              cymc4 tomh16 tomh tomh tomh tommh tommh toml toml toml toml toml8
              cymc2 tommh16 tommh tommh toml sn8 toml16 toml
              cymc4 sn16.[ sn16. r32 sn32] sn[ sn sn sn sn sn sn sn] sn[ sn sn8.]

              % Mesure 8
              cymc4 <cymc sn> <cymc sn> sn16 sn sn sn
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> toml8 <cymc cymr bd>4.~
              <cymc cymr bd>1

              % Mesure 18
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc8 sn sn4

              % Mesure 26
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> <hh toml>
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> hh
              hh4 hh <hh sn> <toml hh>
              sn8 sn sn sn sn4 r

              % Mesure 35
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> cymc <cymc sn>
              cymc4 <cymc sn> tommh16 tommh8 tommh16 toml8[ toml16 toml]

              % Mesure 43
              \repeat unfold 7 {
                hh8. hh16 hh16[ r8 hh16] hh16[ r hh hh] hho4
              }

              hh8. hh16 hh16[ r8 hh16] sn16 sn sn sn sn sn sn sn

              % Mesure 51
              \repeat unfold 9 {
                hh8 hh16 hh <hho sn>8 hh16 hh hh8 hh16 hh hho8 hh16 hh
                hh8 hh16 hh <hho cymc>8 hh16 hh <hh cymc>8 hh16 hh <hho cymc>4
              }

              % Mesure 69
              cymc4 sn8 <cymc bd>4 sn8 cymc4 
              sn8 <cymc bd>4 sn8 cymc8 sn cymc4
              cymc4 sn8 <cymc bd>4 sn8 cymc4
              sn8 <cymc bd> sn sn tommh16 tommh tommh tommh toml toml toml toml
              cymc4 sn8 <cymc bd>4 sn8 cymc4 
              sn8 <cymc bd> sn sn tommh16 tommh tommh tommh toml toml toml toml
              cymc4 sn8 <cymc bd>4 sn8 cymc4 
              sn8 <cymc bd>4 sn8 cymc4 cymc4

              % Mesure 77
              \repeat unfold 7 {
                hh8. hh16 hh[ r8 hh16] hh[ r hh hh] hho4
              }

              hh8. hh16 hh[ r8 hh16] sn sn sn sn sn sn sn sn

              % Mesure 85
              \repeat unfold 2 {
                \repeat unfold 7 {
                  cymc4 <cymc sn> cymc <cymc sn>
                }
                cymc4 <cymc sn> cymc8 sn sn4

              }


              \bar "||"

            }

          } 
          \\ 
          { 
            \repeat volta 2 {
              bd8 bd s2.
              bd8 bd s2.
              bd8 bd s2.
              s1
              bd4 s2.
              bd4 s2.
              bd4 s2.


              % Mesure 8
              bd4 s2.
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s2.
              s1

              % Mesure 18
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd8 bd8 s4
              bd8 bd s4 bd4 s4

              % Mesure 26
              bd4 s2.
              bd4 bd s2
              bd4 s2.
              bd4 bd s2
              bd4 s2.
              bd4 bd s2
              bd4 s2.
              bd4 bd s2
              bd8 bd bd bd bd bd s4

              % Mesure 35
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s2.

              % Mesure 43
              \repeat unfold 8 {
                bd4 s2.
              }

              % Mesure 51
              \repeat unfold 9 {
                s2. bd4
                s1
              }

              % Mesure 69
              bd4 s2 bd4
              s2 bd4 bd
              bd4 s2 bd4
              s1
              bd4 s2 bd4
              s1
              bd4 s2 bd4
              s2 bd4 bd

              % Mesure 77
              \repeat unfold 8 {
                bd4 s2.
              }

              % Mesure 85
              \repeat unfold 2 {
                \repeat unfold 7 {
                  bd8 bd s4 bd8 bd s4
                }
                bd8 bd s4 bd4 s4
              }


            }
          } 

        >>

      } 
    >>

  }
