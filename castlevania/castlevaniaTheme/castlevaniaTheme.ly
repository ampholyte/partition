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
    title = "Castlevania Theme Drum"
    composer = "Kinuyo Yamashita - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Castlevania Theme - arr. Ampholyte"
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
          {
            \tempo 4 = 140 

            % Stage 1
            s1^"Stage 1"
            cymc4. cymc cymc4
            r2 r8 tommh tomml tomml
            cymc4. cymc4 r8[\times 2/3 {sn8 sn sn]}

            \tempo 4 = 200
            cymc4 cymr <cymr sn> cymr8 bd
            cymr4 cymr <cymr sn>8 bd cymr4
            cymc4 cymr <cymr sn> cymr
            cymr4 cymr <cymr sn>8 bd cymr4

            % Mesure 9
            cymc4 cymr <cymr sn> cymr8 bd
            cymr4 cymr <cymr sn>8 bd cymr4
            cymc4 cymr <cymr sn> cymr 
            cymr4 cymr sn8 sn sn sn

            \bar "||"

            % Stage 2
            cymc4^"Stage 2" cymr <cymr sn> cymr8 bd
            cymr4 cymr <cymr sn>8 bd cymr4
            cymr4 cymr <cymr sn>8 bd cymr4
            cymr4 cymr <cymr sn>8 bd cymr sn
            cymc4 cymr <cymr sn> cymr8 bd
            cymr4 cymr <cymr sn>8 bd cymr4
            cymr4 cymr <cymr sn>8 bd cymr4
            cymr4 cymr <cymr sn>8 bd cymr4

            % Mesure 21
            <hho sn>4 <hho sn>4 <hho sn>4 <hho sn>4
            <hho sn>4 <hho sn>4 <hho sn>4 <hho sn>4
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>


            <hho sn>4 <hho sn>4 <hho sn>4 <hho sn>4
            <hho sn>4 <hho sn>4 <hho sn>4 <hho sn>4
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr toml8 toml

            \bar "||"

            \tempo 4 = 180
            % Stage 3
            cymc1^"Stage 3"
            r2. toml8 toml
            cymc1
            r2. toml8 toml
            cymc1
            r2. toml8 toml
            cymc1
            r1

            \repeat unfold 2 {
              cymr4 bd8 sn cymr4 cymr
              cymr4 bd8 sn cymr4 cymr
            }

            % Mesure 41
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> tommh16 tommh tommh8 toml toml

            \repeat unfold 2 {
              cymc4 <hho sn> hho <hho sn>
              hho4 <hho sn> hho <hho sn>
              hho4 <hho sn> hho <hho sn>
              hho4 <hho sn> hho <hho sn>
            }

            % Mesure 53
            cymc4 cymr <cymr sn> cymr 
            cymr8 sn r cymr sn bd cymr4
            cymc4 <sn hho> hho <sn hho>
            hho4 <sn hho> hho <sn hho>
            cymc4 cymr <cymr sn> cymr 
            cymr8 sn r cymr sn bd cymr4

            \bar "||"
            % Stage 4
            cymc4^"Stage 4" <sn hho> hho <sn hho>
            \repeat unfold 4 {
              hho <sn hho> hho <sn hho>
            }

            hho4 <sn hho> hho <hho sn>8 sn

            s4 sn cymc r

            \tempo 4 = 220
            r2. r8 <cymc bd>

            % Stage 5
            \repeat unfold 2 {
              r4.^"Stage 5" cymr8 r4. cymr8
              r4. cymr8 r4. cymr8
              r4. cymr8 r4. cymr8
              r4. cymr8 r4. <cymc bd>8
            }

            % Mesure 75
            \repeat unfold 2 {
              r8 hho bd hho bd <sn hho> r8 <bd hho>
              r8 <hho bd> r8 <hho sn> r8 <bd hho> r8 <bd cymc>
            }

            r4. <sn cymr>8 r4. <bd cymr>8
            r4. <sn cymr>8 s4 r8 <bd cymr>
            r4. <sn cymr>8 s2
            r8 bd r8 <sn cymr> r8 bd r8 <bd cymc>

            % Mesure 83
            r4. <sn cymr>8 r4. <cymr bd>8
            r4. <sn cymr>8 bd4 r8 <bd cymr>
            r8 bd bd <sn cymr> r bd bd <bd cymr>
            r8 bd r <cymc sn> r bd r <cymc bd>
            r8 hho bd hho bd <hho bd> r <bd hho>
            r8 <bd hho> r <hho sn> r <hho bd> r <cymc bd>
            r8 hho bd hho bd <sn hho> r <bd hho>
            r8 <bd hho> r <sn hho> r <bd hho> r <bd cymc>
            r1 r1 r1

            % Mesure 94
            r8 bd4 sn8 r8 bd r <bd cymc>
            r8 hho bd8 <sn hho> bd hho r8 <bd hho>
            \repeat unfold 2 {
              r8 <bd hho> bd <bd sn hho> bd <bd hho> bd <bd cymc>
              r8 hho bd <sn hho> bd hho r <bd hho>
            }
            r8 <bd hho> bd <bd sn hho> bd <bd hho> bd sn
            sn4 sn8 sn4 sn <cymc bd>8

            % Mesure 102
            \repeat unfold 3 {
              r8 hho bd <sn hho> bd hho r <bd hho> 
              r8 <bd hho> s2.
            }

            r8 sn sn tommh tommh tommh tommh toml

            toml8 toml toml bd sn sn sn sn

            % Stage 6
            \tempo 4 = 180
            \times 2/3 {<cymc sn bd>8^"Stage 6" r bd} \times 2/3 {r8 sn r} s2
            \times 2/3 {sn8 sn r} \times 2/3 {r8 sn r} s2
            \times 2/3 {sn8 r bd} \times 2/3 {r8 sn sn} \times 2/3 {r8 r sn} s4
            \times 2/3 {sn8 r bd} \times 2/3 {r8 sn r} s4 sn4
            \times 2/3 {sn8 r bd} \times 2/3 {r8 sn r} s4 s4
            \times 2/3 {sn8 sn r } \times 2/3 {r8 <cymc bd>4} r2
            r1

          } 
          \\ 
          {  
            % Stage 1
            bd8 bd <sn bd> bd bd bd <sn bd> bd
            bd4. bd bd4
            s1
            bd4. bd4 s4.
            bd4 bd8 bd s2
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s2
            bd4 bd8 bd s4 bd8 bd

            % Mesure 9
            bd4 bd8 bd s2
            bd4 bd8 bd8 s4 bd8 bd8
            bd4 bd8 bd8 s2
            bd4 bd8 bd8 s2

            % Stage 2
            bd4 bd8 bd s2
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s2
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s4 bd8 bd
            bd4 bd8 bd s4 bd8 bd

            % Mesure 21
            bd8 bd bd bd bd bd bd bd 
            bd8 bd bd bd bd bd bd bd 
            bd8 bd bd bd bd bd bd4 
            bd8 bd bd bd bd bd bd4

            bd8 bd bd bd bd bd bd bd 
            bd8 bd bd bd bd bd bd bd 
            bd8 bd bd bd bd bd bd4 
            bd8 bd bd bd bd bd bd bd 

            % Stage 3
            bd1
            s2. bd8 bd
            bd1 
            s2. bd8 bd
            bd1
            s2. bd8 bd
            bd1
            s1
            \repeat unfold 2 {
              bd4 s2.
              bd4 s2.
            }

            % Mesure 41
            bd16 bd bd8 bd bd bd16 bd bd8 bd bd 
            bd16 bd bd8 bd bd bd16 bd bd8 bd bd 
            bd16 bd bd8 bd bd bd16 bd bd8 bd bd 
            bd16 bd bd8 bd bd bd16 bd bd8 bd bd
            \repeat unfold 2 {
              bd4 s4 bd4 s4
              bd4 s4 bd4 s4
              bd4 s4 bd4 s4
              bd4 s4 bd4 s4
            }

            % Mesure 53
            bd4 s2.
            bd4 s2.
            bd4 s bd s
            bd4 s bd s
            bd4 s2.
            bd4 s2.

            % Stage 4
            bd8 bd16 bd bd8 bd16 bd bd8 bd16 bd bd8 bd16 bd
            \repeat unfold 4 {
              bd8 bd16 bd bd8 bd16 bd bd8 bd16 bd bd8 bd16 bd
            }
            bd8 bd16 bd bd8 bd16 bd bd8 bd16 bd bd4
            bd16 bd bd bd s4 bd4 s4
            r1

            % Stage 5
            \repeat unfold 13 {
              s1
            }

            s2 bd4 s
            s2 bd4 bd8 <bd cymr>
            s1

            % Mesure 83 
            s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1

            % Mesure 94
            \repeat unfold 8 {
              s1
            }

            % Mesure 102 
            \repeat unfold 3 {
              s1
              s4 bd8 <bd hho sn> bd <bd hho> bd <bd cymc> 
            }
            s1
            s1

            % Stage 6
            s2 \times 2/3 {bd8 r sn} \times 2/3 {r8 bd r}
            s2 \times 2/3 {bd8 r sn} \times 2/3 {r8 bd r}
            s2. \times 2/3 {r8 bd r}
            s2 \times 2/3 {bd8 r sn} s4
            s2 \times 2/3 {bd8 r sn} \times 2/3 {r8 bd r}
            s1
            s1

          } 

        >>

      } 
    >>

  }
