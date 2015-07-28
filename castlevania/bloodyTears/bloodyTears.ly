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
    title = "Castlevania 4 - Bloody Tears Drum"
    composer = "Kenichi Matsubara - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header: "Castlevania 4 - Bloody Tears - arr. Ampholyte"
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
        % #(override-auto-beam-setting '(end * * 4 4) 3 4) 
        % #(override-auto-beam-setting '(end * * 4 4) 1 4)
        % Les deux lignes precedentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par defaut.

        << 
          \tempo 4 = 116 
          { 
            \repeat unfold 7 {
              r1
            }

            r2. \times 2/3 {<tomh tommh>16 <tommh toml> <tommh toml>]} <toml sn>8

            % Mesure 9 
            bd8 sn16 bd r16[bd16 sn8] bd8 sn bd16 bd sn8
            bd8 sn16 bd~ bd bd sn8 bd sn bd16 bd sn8
            bd8 sn16 bd~ bd bd sn8 bd sn bd16 bd sn8
            bd8 sn16 bd~ bd bd sn8 bd sn bd16 sn32 sn sn16 sn
            
            % Mesure 13 
            bd8 sn16 bd r16[bd16 sn8] bd8 sn bd16 bd sn8
            bd8 sn16 bd~ bd bd sn8 bd sn bd16 bd sn8
            bd8 sn16 bd~ bd bd sn8 bd sn bd16 bd sn8
            bd8 sn16 bd~ bd[bd sn r] <bd sn>16[ sn32 sn sn sn sn sn] <sn bd>16[ sn r sn]

            % Mesure 17
            bd8 sn16 bd r[bd sn8] bd sn bd16 bd sn8
            bd8 sn16 bd~ bd[bd sn8] bd sn bd16 bd sn sn
            bd8 sn16 bd~ bd[bd sn8] bd[ sn16 r32 bd] bd16 bd sn8
            bd8 sn16 bd~ bd[bd sn8] bd16[ sn  sn bd] bd[ sn32 sn sn16 sn]

            % Mesure 21
            bd8 sn16 bd r16[bd16 sn8] bd sn bd16 bd sn8
            bd8 sn16 bd~ bd[bd sn8] bd sn bd16[r sn sn]
            bd8 sn16 bd~ bd[bd sn8] bd sn bd16 bd16 sn8
            bd8 sn16 bd~ bd[bd sn8] bd16 sn sn bd bd[sn sn32 sn sn16]
            
            % Mesure 25
            <sn bd>8 sn16 bd r16[bd16 sn8] bd sn bd16 bd sn8
            bd8 sn16 bd~ bd[bd sn8] bd sn bd16 bd16 sn8
            bd8 sn16 bd~ bd[bd sn8] bd sn bd16 bd16 sn8
            bd16[sn8 bd16] sn8[bd32 bd sn16] bd16[sn \times 2/3 {tomh16 tomh tomh]} \times 2/3 {<tommh bd>16[ tommh tommh} \times 2/3 {sn16 sn sn]}

            % Mesure 29
            sn16 sn sn sn sn[ sn <bd sn>32 bd <bd sn>16] sn16 sn sn sn sn[sn <bd sn>32 bd <bd sn>16]
            sn16 sn sn sn sn[ sn <bd sn>32 bd <bd sn>16] sn16 sn sn sn sn sn sn sn

            sn16 sn sn sn sn[ sn <bd sn>32 bd <bd sn>16] sn16 sn sn sn sn[sn <bd sn>32 bd <bd sn>16]
            sn16 sn sn sn sn[ sn <bd sn>32 bd <bd sn>16] sn16 sn sn sn sn sn sn sn
            r1 
            r1 
            r2. \times 2/3 {tommh16[ toml toml} sn8]

            \bar "||"

            %{

            bd4 r2.
            bd4 r4 r16 bd8. sn4
            bd4 r2.
            bd4 r4 r16 bd8. sn16[ r sn sn]

            % Mesure 5
            \repeat unfold 3 {
              bd8 sn r16[ bd sn8] bd8 sn bd16 bd sn8
              bd8 sn r16[ bd sn8] bd8 sn bd16 bd sn sn
            }

            % Mesure 11 
            bd8 sn r16[ bd sn8] bd8 sn bd16 bd sn8
            bd8 sn r16[ bd sn sn] r8[ bd16 sn] r16[sn sn sn]

            \repeat unfold 3 {
              bd8 sn16 bd r16[ bd sn8] bd8 sn16 bd r16[bd sn sn]
            }

            % Mesure 16
            bd8 sn16 bd r16[bd sn8] r16[bd sn sn] r sn sn sn
            bd4 r2.

            bd4 r r16[ bd8.] sn4
            bd4 r2.
            bd4 r r16[ bd8.] sn8[sn16 sn]

            \repeat unfold 3 {
              bd8 sn r16[bd sn8] bd8 sn bd16 bd sn8
              bd8 sn r16[bd sn8] bd8 sn bd16 bd sn sn
            }

            % Mesure 27
            bd8 sn r16[bd sn8] bd8 sn bd16 bd sn8
            bd8 sn r16[bd sn sn] r8[bd16 sn] r16[sn sn sn]

            \repeat unfold 3 {
              bd8[sn16 bd] r16[ bd8.] bd8[sn16 bd] r16[bd sn sn]
            }

            bd8[sn16 bd] r16[bd8.] bd8[sn16 bd] r16[sn sn sn]

            \bar "||"%}
          } 

        >>

      } 
    >>

  }
