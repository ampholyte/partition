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
  ride : cymr

  %}

  \header {
    title = "Fairy Tail  - Gray Theme Drum"
    composer = "Yasuharu Takanashi - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Fairy Tail - Gray Theme Drum - arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
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
          {
            \tempo 4=180
            \partial 4
            sn8 cymc
            s4 sn s sn
            s sn s sn
            s sn s sn
            s sn s2
            s4 sn s sn
            s4 sn s sn
            s4 sn s sn8 cymc
            sn8 sn sn sn r cymc16 cymc cymc cymc <cymc cymr bd>8
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>

            % Mesure 12 
            hho <sn hho> hho <sn hho>8 <sn cymc>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho8 sn <sn hho> <sn cymc bd>

            % Mesure 17
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 <hho sn> hho <hho sn>
            hho <hho sn> hho <hho sn>

            % Mesure 23
            hho4 <sn hho> hho <sn hho>
            hho <sn hho> cymc16 cymc cymc cymc <sn cymc> cymc <sn cymc bd>8
            s4 sn s sn 
            s sn bd8 <sn cymc>4 <sn cymc>8
            s4 sn s sn 
            s sn s sn8 <sn bd cymc>

            % Mesure 29
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>

            % Mesure 35
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho8 sn <sn hho> <sn cymc bd>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>

            % Mesure 41
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho8 sn hho4
            bd8 <sn hho> s4 <sn hho>8 bd bd <sn cymc>
            s4 sn8 sn sn sn sn <sn cymc>
            s4 sn8 bd16 bd s4 sn8 bd
            s4 sn8 bd16 bd s4 sn8 <sn bd cymc>

            % Mesure 47
            s4 sn8 bd16 bd s4 sn8 bd
            s4 sn8 bd16 bd s4 sn8 <bd sn cymc>
            s4 sn8 bd16 bd s4 sn8 bd
            s4 sn8 bd16 bd s4 sn8 bd
            <sn cymc>4 <sn cymc>4 <sn cymc>4 <sn cymc>4
            sn8 sn sn sn r8 cymc16 cymc cymc cymc <bd cymc cymr>8

            % Mesure 53
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>

            % Mesure 60
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho8 sn <sn hho> <sn hho bd>
            s4 <sn hho> hho <sn hho> 
            hho <sn hho> hho <sn hho> 
            hho <sn hho> hho <sn hho> 
            hho <sn hho> hho <sn hho>8 <sn cymc bd>  

            % Mesure 65
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> s2
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 bd16 bd
            sn8 sn sn sn sn sn sn hho

            % Mesure 71
            s1
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 <sn hho> hho <sn hho>

            % Mesure 77
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho8 sn <sn hho> <sn cymc bd>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>

            % Mesure 83
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 <sn hho> hho <sn hho>
            hho <sn hho> hho <sn hho>8 <sn cymc bd>
            s4 sn8 <sn cymc bd> s4 sn8 <sn cymc bd>
            s4 sn8 <sn cymc bd> s4 sn8 <sn cymc bd>
            s1
            s2. sn8 <sn cymc>

            \bar "||"
          } 
          \\ 
          { 

            \partial 4
            bd8 bd
            r8 bd s4 bd s
            bd s bd s
            bd s bd s
            bd s bd8 sn bd sn
            r8 bd s4 bd s 
            bd s bd s 
            bd s bd s
            bd8 bd bd bd s2
            r8 bd s4 bd s
            bd s bd s

            % Mesure 12
            bd4 s bd s
            bd4 s bd s
            r8 bd s4 bd s
            bd s bd s 
            bd s bd s
            bd s bd s

            % Mesure 17
            r8 bd s4 bd s 
            bd s bd s
            bd s bd s
            bd s bd s
            r8 bd s4 bd s
            bd s bd s

            % Mesure 23
            bd4 s bd s
            bd s bd s
            r8 bd s4 bd s 
            bd s2.
            r8 bd s4 bd s
            bd s bd8 bd s4

            % Mesure 29
            r8 bd s4 bd s
            bd s bd s
            bd s bd s
            bd s bd s
            r8 bd s4 bd s
            bd s bd s

            % Mesure 35
            bd s bd s bd s bd s
            r8 bd s4 bd s
            bd s bd s
            bd s bd s 
            bd s bd s

            % Mesure 41
            r8 bd s4 bd s
            bd s bd bd
            s bd8 bd s2
            r8 bd16 bd bd8 bd bd bd bd bd
            r8 bd16 bd s4 bd8 bd s4
            r8 bd16 bd s4 bd8 bd s4

            % Mesure 47
            r8 bd16 bd s4 bd8 bd s4
            r8 bd16 bd s4 bd8 bd s4
            r8 bd16 bd s4 bd8 bd s4
            r8 bd16 bd s4 bd8 bd s4
            bd8 bd bd bd bd bd bd bd 
            bd bd bd bd s2

            % Mesure 53
            r8 bd8 s4 bd s
            bd s bd s
            bd s bd s
            bd s bd s
            r8 bd8 s4 bd s
            bd s bd s

            % Mesure 60
            bd s bd s
            bd s bd s
            r8 bd s4 bd s 
            bd s bd s 
            bd s bd s 
            bd s bd s

            % Mesure 65
            r8 bd s4 bd s 
            bd s bd s
            bd s bd8 <bd sn> <bd sn> <sn bd cymc> 
            r8 bd s4 bd s 
            bd s bd s
            bd16 bd bd8 bd bd bd bd bd bd

            % Mesure 71
            r4 r2 bd8 <sn cymc>
            r8 bd s4 bd s
            bd s bd s
            bd s bd s
            bd s bd s
            r8 bd s4 bd s

            % Mesure 77
            bd s bd s
            bd s bd s
            bd s bd s
            r8 bd s4 bd s 
            bd s bd s
            bd s bd s

            % Mesure 83
            bd4 s bd s
            r8 bd s4 bd s
            bd s bd s 
            r8 bd s4 r8 bd s4
            r8 bd s4 r8 bd s4
            r1
            r2 r8 bd s4

            \bar "||"

          } 

        >>

      } 
    >>
  }


