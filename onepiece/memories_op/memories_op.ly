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
    title = "One Piece  - Memories Drum"
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
        \fromproperty #'header:"One Piece  - Memories Drum - arr. Ampholyte"
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
          \tempo 4 = 133 
          {
            % Intro 
            s1
            s1^"Intro"
            s1
            s1
            s1

            \repeat unfold 12 {
              hh8-> hh hh-> hh hh-> hh <hh ss>-> hh
            }

            \bar "||"
            % Verse 1
            hh8^"Verse 1" hh hh <hh bd> hh hh <hh ss> hh

            \repeat unfold 14 {
              hh8-> hh hh-> <hh bd> hh-> hh <hh ss>-> hh
            }

            hh8 hh hh hh hh4 toml

            \bar "||"
            % Pre-Chorus
            <cymc toml>8^"Pre-Chorus" hh <sn hh> <bd hh> hh hh <sn hh> hh

            hh8 hh <sn hh> <hh bd> hh hh <sn hh> hh
            hh8 hh <sn hh> <hh bd> hh hh <sn hh> hh
            hh8 hh <sn hh> <hho bd> hh hh <sn hh> hh

            <cymc toml>8 hh <sn hh> <bd hh> hh hh sn16 sn <bd hh toml>8

            hh8 <hh bd> <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hho4 sn8 tommh tomh toml <cymc sn>4
            <cymc toml>8 hh <sn hh> <bd hh> hh hh <sn hh> hh

            hh8 hh <sn hh> <hh bd> hh hh <sn hh> hh
            hh8 hh <sn hh> <hh bd> hh hh <sn hh> hh
            hh8 hh <sn hh> <hho bd> hh hh <sn hh> hh

            <toml cymc>8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            <toml cymc>8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            cymc4 <sn hho>8 bd sn toml tomh16 tomh tommh8

            \bar "||"
            % Chorus
            <cymc toml>8^"Chorus" cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr <hho sn> <hho sn>4

            \bar "||"
            % Main Riff
            <cymc toml>8^"Main riff" hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh hho <hhp sn>8  tommh4 toml8 tomh4

            \bar "||"
            % Verse 2
            <cymc toml>8^"Verse 2"-> hh hh-> <hh bd> hh-> hh <sn hh>-> hh
            \repeat unfold 3 {
              hh8-> hh hh-> <hh bd> hh-> hh <sn hh>-> hh

            }
            hh8-> hh hh-> <hh bd> hh-> hh <sn hh>-> <hh bd>

            <cymc toml>8-> hh hh-> <hh bd> hh-> hh <sn hh>-> hh

            \repeat unfold 9 {
              hh8-> hh hh-> <hh bd> hh-> hh <sn hh>-> hh
            }
            hh8-> hh hh-> <hh bd> hh-> hh <sn hh>-> <cymc bd>
            r8 <toml bd> sn[ tomh32 toml tommh16] sn8 <bd toml>4 r8

            \bar "||"
            % Pre-Chorus
            <cymc toml>8^"Pre-Chorus" hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh 
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> <hh bd>
            <cymc toml>8 hh <sn hh> <bd hh> hh hh sn16 sn <cymc toml>8
            hh8 <hh bd> <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hho4 sn8 tommh tomh toml <cymc sn>4
            <cymc toml>8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> <hh bd>
            <cymc toml>8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            <cymc toml>8 hh <sn hh> <bd hh> hh hh <sn hh> hh
            cymc4 <sn hho>8 bd sn toml tomh16 tomh tommh8

            \bar "||"
            % Chorus
            <cymc toml>8^"Chorus" cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr toml <sn hho>4 
            <cymc toml>8 cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr <hho sn> <hho sn>4

            \bar "||"
            % Chorus
            <cymc toml>8^"Chorus" cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr toml <sn hho>4 
            <cymc toml>8 cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            <cymc toml> cymr <cymr sn> <cymr bd> cymr cymr <cymr sn> cymr
            cymr cymr <cymr sn> <cymr bd> cymr <hho sn> <hho sn>4

            \bar "||"
            % Trans
            <cymc toml>8^"Trans" hh <sn hh> <bd hh> hh hh <sn hh> hh
            hh8 hho <sn hhp> tommh4 toml8 tomh4

            \bar "||"
            % Chorus
            hh8->^"Chorus"-> hh hh-> hh hh-> hh hh-> hh
            \repeat unfold 5 {
              hh8-> hh hh-> hh hh-> hh hh-> hh
            }

            \bar "||"
            % Outro
            hho1^"Outro"
            s1 s s s s

            \bar "||"
          } 
          \\ 
          { 
            % Intro
            r1
            r1
            r1
            r1
            r1


            \repeat unfold 12 {
              s1
            }

            % Verse 1 
            \repeat unfold 16 {
              bd4 s bd s
            }   

            % Pre-Chorus
            bd4 s bd s 
            bd4 s bd s 
            bd4 s bd s 
            bd4 s bd8 bd s4 
            bd4 s bd s
            s4 s bd s
            bd4 s bd s 
            bd4 s s s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd8 bd s4
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s s s

            % Chorus
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s

            % Main riff
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s s s

            % Verse 2
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            s4 s s s

            % Pre-Chorus
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd8 bd s4
            bd4 s bd s
            s4 s bd s
            bd4 s bd s
            bd4 s s s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd8 bd s4
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s s s 

            % Chorus 
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s

            % Chorus
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s
            bd4 s bd s

            % Trans
            bd4 s bd s
            bd4 s s s

            % Chorus
            \repeat unfold 6 {
              s1
            }

            % Outro
            s1
            \repeat unfold 5 {
              r1
            }  
          } 

        >>

      } 
    >>

  }
