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
    title = "The Blues Brothers - Soul Man - Titre Drum"
    composer = "The Blues Brothers  - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"The Blues Brothers - Soul Man - arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup

    % Pour réduire sur une seule page

    system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
    ragged-last-bottom = ##f
    ragged-bottom = ##f
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
          \tempo 4 = 120 
          {
            hh4 hh hh hh
            <hh cymr>4 hh hh hh
            hh4 hh hh hh
            hh4 hh <hh sn> r
            hho4 <hh sn> hho <hh sn>
            hho <hh sn> hho <hh sn>
            hho4 <hh sn>8 bd hho4 <hh sn>
            hho4 <hh sn> hho <hh sn>

            % Mesure 9
            \bar "|:"  
            hho4 <hh sn> hho <hh sn>
            hho4 <hh sn>8 bd hho4 <hh sn>
            hho4 <hh sn> hho <hh sn>
            hho4 <hh sn> hho <sn hh>
            hho <hh sn>8 bd hho4 <sn hh>
            hho4 <hh sn> hho <hh sn>
            hho4 <hh sn> hho <hh sn>
            hho4 <hh sn>8 bd hho4 <hh sn[>16 sn bd8]

            % Mesure 17
            \repeat unfold 7 {
              hho4 <hh sn>8 bd hho4 <hh sn>8 bd
            }

            sn8[ r16 bd~] bd[r sn8] sn bd sn16[ sn bd8]^"3x"
            \bar ":|"

            % Mesure 25
            <hho bd>8 hho16 bd <sn hho>8 hho <hho bd> hho16 bd <sn hho>8 hho
            <hho bd>8 hho16 bd <sn hho>8 hho <hho bd> hho16 bd <sn hho>8 hho
            <hho bd>8 hho16 bd <sn hho>8 hho <hho bd> hho16 bd <sn hho>16 sn hho8

            hh4 <sn hh> hh <hh sn>
            hh4 <hh sn>8 sn hh4 <hh sn>8 sn
            \repeat unfold 4 {
              hh4 hh hh hh
            }

            \repeat unfold 3 {
              hh4 <sn hh> hh <hh sn>
            }

            cymr8[r16 bd~] bd[ r cymr8] cymr bd sn bd16 bd

            % Mesure 38
            \repeat unfold 3 {
              hho4 <sn hh> hho <hh sn>
              hho4 <sn hh> hho <hh sn>
              hho <hh sn>8 bd hho4 <hh sn>
            }

              hho4 <sn hh> hho <hh sn>
              hho4 <sn hh> hho <hh sn>

              hho4 <hh sn>8 bd <hho bd>16[ r8 sn16] sn sn sn sn
              sn4 r r8 <sn hho> r8[\times 2/3 {sn16 sn sn]}
              \times 2/3 {bd4 sn bd} sn8 sn <hho cymr>4

              \bar "||"
          } 
          \\ 
          { 
            s4 bd s bd
            s4 bd s bd
            s4 bd s bd 
            s4 bd bd s
            bd4 s bd8 bd s4
            bd4 s bd8 bd s4
            bd4 s bd8 bd s4
            bd4 s bd8 bd s4

            % Mesure 9
            \repeat unfold 8 {
              bd4 s bd8 bd s4	
            }

            % Mesure 17
            \repeat unfold 7 {
              bd8 bd s4 bd8 bd s4
            }
            s1

            % Mesure 25
            s1 s1 s1
            bd4 s bd s
            bd4 s bd s
            \repeat unfold 4 {
              s4 bd s bd 
            }

            \repeat unfold 3 {
              bd8 bd bd bd bd bd bd bd
            }

            s1

            % Mesure 38
            \repeat unfold 11 {
              bd4 s bd8 bd s4
            }

            bd4 s2.
            s1
            s1
          } 

        >>

      } 
    >>

  }
