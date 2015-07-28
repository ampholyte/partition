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
    title = "Children of Bodom - 4 Seasons Drum"
    composer = "Children of Bodom - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Children of Bodom - arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup

    % Pour reduire sur une seule page

     system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
     ragged-last-bottom = ##f
     ragged-bottom = ##f
  }

  \score {

    \new DrumStaff 
    << 
      \new DrumVoice = "1" { s2. *1 } % voix du haut (une mesure)
      \new DrumVoice = "2" { s2. *1 } % voix du bas (une mesure)
      \drummode 
      { 
        % #(override-auto-beam-setting '(end * * 3 4) 1 4)
        % #(override-auto-beam-setting '(end * * 3 4) 1 4)
        % Les deux lignes precedentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par defaut.

        <<

          \time 3/4
          \tempo 4 = 120
          {
            %{\newSpacingSection
            \time 4/4 
            % Intro
            r1^"Intro" 
            \repeat unfold 8 {
              r1
            }
          %}
            % Harmonies 
            r2.^"Harmonies (Attention intro de 9 mesures en C)"
            cymc4 r4 <cymc sn>4

            \repeat unfold 3 {
              hho8 bd hho sn hho4
              hho4 hho <hho sn>
            }
            
            cymc4 cymc cymc
            cymc4 hho <hho sn>
            hho8 bd hho sn16 sn <hho sn>8 sn

            % Solo 1
            hho4^"Solo 1" hho <hho sn>
            \repeat unfold 3 {
              hho4 hho <hho sn>
            }
            <hho cymc>4 hho <sn hho>
            hho4 hho <hho sn>
            hh4 hh <cymc sn>
            hho4 hho <hho sn>
            hho4 hh hh
            <cymc sn>4 hh hh
            hho4 hh hh

            % Bridge
            <sn cymc>4^"Bridge" hh hh
            hh4 hh8 bd hho4
            
            \repeat unfold 2 {
              <sn cymc>4 hh hh
              hh4 hh8 bd hho4
            }
            
            sn8 sn16 sn sn sn sn sn sn sn sn sn
            sn16 sn sn sn sn sn sn sn sn sn sn sn

            % Duet
            sn2.^"Duet"
            \repeat unfold 12 {
              hho4 hho hho
            }

            \repeat unfold 2 {
              sn8 sn sn sn sn sn
            }

            % Chorus
            <cymc>4^"Chorus" cymr <cymr sn>
            <cymc>4 cymr <cymr sn>

            \repeat unfold 7 {
              cymr4 cymr <cymr sn>
            }

            % Interlude
            sn16^"Interlude" tommh tommh toml toml toml toml sn sn4
            \repeat unfold 2 {
              sn16 tommh tommh toml toml toml toml sn sn4
            }

            cymc4 hh8 bd hh bd
            hho4 r4 <hho sn>
            hh8 bd hh bd <hho sn>4

            % Pre-solo
            <hho sn>4^"Pre-solo" hho8 bd hho bd 
            <sn hho>4 hho8 bd hho bd
            <hho sn>4 hho8 bd hho bd
            <sn hho>4 hho <sn hho>4

            % Tapping Solo
            <cymc bd>8.^"Tapping Solo" cymr16 cymr8 cymr cymr cymr
            cymr4 hh8 hh hho4
            cymr8. cymr16 cymr8 cymr cymr cymr
            cymr8. hh32 hh hh8 hho hho4
            cymr8. cymr16 cymr8 tomh16 tomh toml toml toml toml 

            \repeat unfold 3 {
              s4 r r
              s2.
            }

            % Re-Intro
            cymc4^"Re-Intro" hho8 sn hho4
            \repeat unfold 11 {
              hho4 hho8 sn hho4
            }
            <hh sn>4 r2
            r2.
            r2.
            r2.
            r2.

            cymc4 cymr <cymr sn>
            cymr4 cymr8 sn cymr4

            \repeat unfold 2 {
              cymr4 cymr <cymr sn>
              cymr4 cymr8 sn cymr4
            }

            cymr4 cymr <cymr sn>
            
            \repeat unfold 4 {
              cymc4 cymc cymc
            }

            cymc4 r2
            r2.
            sn16 sn sn sn sn sn sn sn sn sn sn sn
            cymc4 r2
            r2. 
            r2.
            r2.

            \repeat unfold 2 {
              cymc4 cymr8 bd cymr bd
              <cymc sn>4 cymr cymr
            }

            cymc4 cymc cymr
            cymc4 cymr cymr 
            cymc4 cymr8 bd cymr bd
            <cymc sn>4 cymc cymc
            cymc4 cymc cymc
            sn16 sn tomh tomh toml toml toml toml tomh tomh toml toml
            cymc4 r2

            
            \bar "||" 
            

          } 
          \\ 
          { 
            % Harmonies
            s2.
            bd4 bd4 s4

            \repeat unfold 3 {
              s2 bd4
              bd4 bd s
            }

            bd4 bd bd
            bd4 bd s
            s2.

            % Solo 1
            \repeat unfold 8 {
              bd4 bd8 bd s4
            }
            bd4 s2
            s2.
            bd4 s bd8 bd

            % Bridge
            \repeat unfold 3 {
              s2.
              bd8 bd s4 bd8 bd
            }
            s2. 
            s2.

            % Duet
            \repeat unfold 15 {
              s2.
            } 

            % Chorus
            \repeat unfold 9 {
              bd4 bd8 bd s4
            }

            % Interlude 
            s2. 
            s2.
            s2.
            bd4 s2
            s4 bd8 bd s4
            s2.

            % Pre-solo
            bd4 s2
            bd4 s2
            bd4 s2
            s2.

            % Tapping solo
            s2.
            \repeat unfold 4 {
              s2.
            }
            \repeat unfold 3 {
              <cymc bd>4 s2
              \times 3/2 {<cymc bd>4 <cymc bd>}
            }

            % Re-Intro
            \repeat unfold 12 {
              bd8 bd bd bd bd bd
            }

            \repeat unfold 5 {
              s2.
            }

            bd4 bd s
            \repeat unfold 3 {
              bd8 bd bd4 bd
              bd4 bd s
            }

            bd4 bd bd
            bd4 bd bd 
            bd4 bd bd
            bd4 bd bd
            bd4 s2
            s2.
            s2.
            bd4 s2
            s2. s2. s2.
            \repeat unfold 2 {
              bd4 s2  
              s2.
            }

            bd4 bd s
            s2.
            bd4 s2
            s4 bd bd 
            bd4 bd bd 
            s2. 
            bd4 s2

          } 

        >>

      } 
    >>

  }
