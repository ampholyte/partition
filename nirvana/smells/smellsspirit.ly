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
    title = "Nirvana - Smells Like Teen Spirit Drum"
    composer = "Nirvana - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Nirvana - Smells Like Teen Spirit - arr. Ampholyte"
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
      \new DrumVoice = "1" { s1 *1 } % voix du haut (une mesure)
      \new DrumVoice = "2" { s1 *1 } % voix du bas (une mesure)
      \drummode 
      { 
        % #(override-auto-beam-setting '(end * * 4 4) 3 4) 
        % #(override-auto-beam-setting '(end * * 4 4) 1 4)
        % Les deux lignes precedentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par defaut.

        << 
          \tempo 4 = 118 
          {
            % Intro
            r1^"Intro" r1 r1
            sn16 bd hh bd sn bd hh bd sn bd hh bd sn8 bd

            % Theme
            \repeat volta 3 {
              cymc4^"Theme" <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd^"3x"
            }

            cymc4 <hho sn>8. sn16 <bd hho> sn bd bd <hho sn>8 bd
            cymc4 <hho sn>8 bd hho8 sn16 sn sn sn sn sn

            % Verse 1
            hh8^"Verse 1" hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh> hho

            \repeat volta 3 {
              hh8 hh <sn hh> hh hh hh <sn hh> hho
              hh8 hh <sn hh> hh hh hh <sn hh> hh^"3x"
            }

            hh8 hh <sn hh> hh hh hh <hho sn>4

            % Pre-Chorus
            cymc4^"Pre-Chorus" <hho sn>8 hho hho hho <sn hho> hho
            \repeat volta 3 {
              hho8 hho <sn hho> hho hho hho <sn hho> hho
              cymc4 <sn hho>8 hho hho hho <sn hho> hho^"3x"
            }

            sn16 sn sn sn sn sn sn sn sn sn sn bd sn8 bd

            % Chorus
            cymc4^"Chorus" <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd

            \repeat volta 3 {
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd^"3x"
            }

            \repeat volta 2 {
              cymc4 <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd
              cymc4 <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd
            }

            % Post-Chorus
            cymc4^"Post-Chorus" <sn hho>8 \times 2/3 {toml16 toml <toml bd>} <hho sn>8 bd r4
            cymc4 <hho sn>8. <hho bd>16 sn bd hho bd toml bd hho bd
            cymc4 <sn hho[>8 \times 2/3 {toml16 toml <toml bd]>} <hho sn>8 bd r4
            cymc4 <hho sn>8 bd hho8 sn16 sn sn sn sn sn

            % Verse 2 
            hh8^"Verse 2" hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh> hho

            \repeat volta 2 {
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh> hho
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh> hho
            }

            hh8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh hho4


            % Pre-Chorus
            cymc4^"Pre-Chorus" <hho sn>8 hho hho hho <sn hho> hho
            \repeat volta 3 {
              hho8 hho <sn hho> hho hho hho <sn hho> hho
              cymc4 <sn hho>8 hho hho hho <sn hho> hho^"3x"
            }

            sn16 sn sn sn sn sn sn sn sn sn sn bd sn8 bd

            % Chorus
            cymc4^"Chorus" <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd

            \repeat volta 2 {
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            }

            \repeat volta 2 {
              cymc4 <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd
              cymc4 <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd
            }

            % Post-Chorus
            cymc4^"Post-Chorus" <sn hho>8 \times 2/3 {toml16 toml <toml bd>} <hho sn>8 bd r4
            cymc4 <hho sn>8. <hho bd>16 sn bd hho bd toml bd hho bd
            cymc4 <sn hho[>8 \times 2/3 {toml16 toml <toml bd]>} <hho sn>8 bd r4
            cymc4 <hho sn>8 bd hho8 sn16 sn sn sn sn sn

            % Solo 
            cymc4^"Solo" <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            \repeat volta 2 {
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <hho sn>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            }
            cymc4 <hho sn>8. sn16 bd sn sn sn sn sn sn sn

            % Verse 3
            hh8^"Verse 3" hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh> hho

            \repeat volta 2 {
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh> hho
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh> hho
            }

            hh8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh hho4

            % Pre-Chorus
            cymc4^"Pre-Chorus" <sn hho>8 hho hho hho <hho sn> hho

            \repeat volta 3 {
              hho8 hho <sn hho> hho hho hho <sn hho> hho
              cymc4 <sn hho>8 hho hho hho <sn hho> hho^"3x"
            }

            sn16 sn sn sn sn sn sn sn <sn bd> sn sn bd sn8 bd

            % Chorus 
            cymc4^"Chorus" <sn hho>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            cymc4 <sn hho>8. sn16 <hho bd> sn bd bd <hho sn>8 bd

            \repeat volta 2 {
              cymc4 <sn hho>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <sn hho>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
              cymc4 <sn hho>8. sn16 <hho bd> sn bd bd <hho sn>8 bd
            }

            % Outro
            cymc4^"Outro" <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd

            \repeat volta 3{ 
              cymc4 <cymc sn>8. sn16 <cymc bd> sn bd bd <cymc sn>8 bd^"3x"
            }

            \repeat volta 2 {
              cymc4 <cymc sn>8 cymc16 bd <cymc sn> bd cymc bd <cymc sn>8 <cymc bd>
              cymc4 <cymc sn>8 cymc16 bd <cymc sn> bd cymc bd <cymc sn>8 <cymc bd>
              cymc4 <cymc sn>8 cymc16 bd <cymc sn> bd cymc bd <cymc sn>8 <cymc bd>
              cymc4 <cymc sn>8 cymc16 bd <cymc sn> bd cymc bd <cymc sn>8 <cymc bd>
            }

            <cymc bd>1 
            \bar "||"

          } 

          \\ 
          { 
            % Intro
            s1 s1 s1 s1

            % Theme
            \repeat volta 3 {
              bd8. bd16 s2.
              bd8. bd16 s2.
            }

            bd8. bd16 s2.
            bd8. bd16 s2.

            % Verse 1

            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            \repeat volta 3 {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }

            bd8 bd s4 bd8 bd s4


            % Pre-Chorus
            bd8 bd s4 bd8 bd s4
            \repeat volta 3 {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }

            bd8 bd bd bd s2

            % Chorus
            bd8. bd16 s2. 
            bd8. bd16 s2. 
            \repeat volta 3 {
              bd8. bd16 s2. 
              bd8. bd16 s2. 
            }

            \repeat volta 2 {
              bd8. bd16 s2. 
              bd8. bd16 s2. 
            }


            % Post-Chorus
            \repeat unfold 3 {
              bd8 bd s2.
            }
            bd8 bd s4 bd s

            % Verse 2 
            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            \repeat volta 2 {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }

            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4

            % Pre-Chorus
            bd8 bd s4 bd8 bd s4
            \repeat volta 3 {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }
            bd8 bd s4 bd8 bd s4

            % Chorus
            bd8. bd16 s2. 
            bd8. bd16 s2. 
            \repeat volta 2 {
              bd8. bd16 s2. 
              bd8. bd16 s2. 
              bd8. bd16 s2. 
            }

            \repeat volta 2 {
              bd8. bd16 s2. 
              bd8. bd16 s2.
            }

            % Post-Chorus
            \repeat unfold 3 {
              bd8 bd s2.
            }
            bd8 bd s4 bd s

            % Solo
            bd8. bd16 s2.
            \repeat volta 2 {
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
            }

            bd8. bd16 s2.

            % Verse 3
            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            \repeat volta 2 {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }

            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4

            % Pre-Chorus
            bd8 bd s4 bd8 bd s4

            \repeat volta 3  {
              bd8 bd s4 bd8 bd s4
              bd8 bd s4 bd8 bd s4
            }
            bd8 bd bd bd s2

            % Chorus
            bd8. bd16 s2.
            bd8. bd16 s2.

            \repeat volta 2 {
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
            }

            % Outro
            bd8. bd16 s2.
            \repeat volta 3 {
              bd8. bd16 s2.
            }

            \repeat volta 2 {
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
              bd8. bd16 s2.
            }
            s1
          } 

        >>

      } 
    >>

  }
