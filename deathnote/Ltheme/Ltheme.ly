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
    title = "Death Note - Ls Theme B Drum"
    composer = "Makoto Saito - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Death Note - Ls Theme B - arr. Ampholyte"
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
          \tempo 4 = 107
          {
            r1 r1 r1 r1
            r1 r1 r1 r1

            \repeat unfold 20 {
              hh8 hh hh hh hh hh hh hh
            }

            % Mesure 29
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 r2 hh8 <sn hh>16 <sn hho> hh8

            % Mesure 37


            \repeat unfold 4 {
              <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            }

            % Mesure 53 
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 r2 hh8 <sn hh>16 <sn hho> hh8

            r1 r1 r1 r1

            % Mesure 65
            \repeat unfold 2 {
              <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
              hh8 hh <sn hh> hh hh hh <sn hh> hh
              hh8 hh <sn hh> hh hh hh <sn hh>16 sn hh8
            }

            \bar "||"
          } 
          \\ 
          { 
            s1 s1 s1 s1
            s1 s1 s1 s1

            \repeat unfold 20 {
              bd4 bd bd bd
            }

            % Mesure 29 
            bd4 s bd s
            bd4 s bd bd
            bd4 s bd s
            bd4 s bd bd 
            bd4 s bd s
            bd4 s bd bd
            bd4 s bd s
            bd4 s2 bd4

            % Mesure 37
            \repeat unfold 11{
              bd4 s bd s
              bd4 s bd bd
            }

            bd4 s bd s
            bd4 s2 bd4
            
            s1 s1 s1 s1
            
            % Mesure 65
            \repeat unfold 4 {
              bd4 s bd s
              bd4 s bd bd

            }

          } 

        >>

      } 
    >>

  }
