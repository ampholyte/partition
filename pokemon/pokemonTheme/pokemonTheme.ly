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
    title = "Pokeman - Main Theme Drum"
    composer = "Junichi Masuda - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Pokemon - Main Theme - arr. Ampholyte"
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
          \tempo 4 = 140 
          {
            % Intro 
            <cymc cymr>1^"Intro"~
            <cymc cymr hho>1
            r4 sn16 sn sn sn cymr8 tomh tomh <toml bd>
            r8 <tomml bd> tomml tomh <tomml sn> sn16 sn toml4

            % Verse
            <cymc cymr>8 hh hh hh hh hh hh hh
            hh8 hh hh hh hh hh hh hho
            <cymc cymr>8 hh hh hh hh hh hh hh
            hh8 hh hh <toml cymc bd> r <bd tomh cymc>4 tommh8
            cymc8 hh hh hh hh hh hh hh
            hh8 hh hh hh hh hh hh hh

            cymc4 s2 cymc4
            hh8 hh hh hh hh <hh bd> <hh sn> hh
            cymc8 hh <sn hh> hh hh hh tomh tommh
            hh8 hh <sn hh> hh hh toml tomh tommh
            cymc8 hh <sn hh> hh hh hh toml tommh
            cymc8 hh hh <cymc toml bd> r8 <cymc tomh>4 tommh8

            cymc8 hh <sn hh> hh hh hh tomh tommh
            hh8 hh <sn hh> hh hh sn sn sn16 sn
            cymc4 s2 cymc4
            tomml8 tomml <tommh toml> <tommh toml> <tommh toml> bd sn sn16 sn
            
            % Chorus
            cymc8^"Chorus" hh <sn hh> hh hh <hh bd> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <sn bd>32 sn sn sn

            cymc8 hh <sn hh> hh hh <hh bd> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> <bd hh> 
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            cymc4 s2 cymc4
            tommh8 tommh <tommh toml> <tommh toml> <tommh toml> bd sn sn16 sn

            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <bd hh>
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn

            cymc4 s2 cymc4
            tommh8 tommh <tommh toml> <tommh toml> <tommh toml> bd sn sn16 sn
            cymc4 s2.

            % Interlude 
            <cymc cymr>1^"Interlude"
            r2. r8 tomh8
            tomh4 r4 r r8 toml
            r8 tommh tomh4 r8[ sn16 sn] toml8 hho

            % Verse II
            cymc8^"Verse II" hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh <sn hh> hh hh hh <sn hh> <bd hh> 
            hh8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh hh <cymc toml bd> r8 <cymc tomh bd>4 toml8
            cymc8 hh <sn hh> hh hh hh <sn hh> hh

            cymc8 hh <sn hh> hh hh hh <sn hh> hh
            cymc4 s2 cymc4
            hh8 hh hh hh sn <toml bd> hh hh
            cymc8 hh <sn hh> hh hh hh <sn hh> hh
            cymc8 hh <sn hh> hh hh toml tomh tommh
            hh8 hh <sn hh> hh hh hh <sn hh> <hh bd>

            hh8 hh hh <cymc toml bd> r <cymc tomh bd>4 toml8
            <cymc cymr>8 hh <sn hh> hh hh hh <sn hh> <bd hh>
            hh8 hh <sn hh> hh hh hh <sn hh> <hh bd>
            cymc4 s2 <cymc toml>4
            toml8 toml toml toml toml toml <tommh toml> <tommh toml>

            % Chorus
            cymc8^"Chorus" hh <sn hh> hh hh <hh bd> <sn hh> hh
            
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <sn bd>32 sn sn sn
            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> <bd hh> 
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            cymc4 s2 cymc4

            tommh8 tommh <tommh toml> <tommh toml> <tommh toml> bd sn sn16 sn
            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <bd hh>
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh

            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            cymc4 s2 cymc4
            tommh8 tommh <toml tommh> <toml tommh> <toml tommh> bd sn sn16 sn
            cymc4 s2.

            % Bridge
            <cymc cymr>1^"Bridge"
            r1 
            r1
            r4 r r8 sn <sn toml> <cymc bd>
            
            cymc1
            s1
            s1
            s2. tommh8 tommh
            cymc4 sn8 bd s2
            s4 sn8 bd s2

            s4 sn8 bd s2
            s4 sn8 bd s2
            s4 sn8 bd s2
            s4 sn8 bd s2
            cymc4 s2.

            % Solo
            <cymc cymr>8^"Solo" hh <sn hh> hh hh hh <sn hh> hh

            hh8 hh <sn hh> hh hh hh <sn hh> <hh bd>
            <cymc hh>8 hh <sn hh> hh hh hh <sn hh> hh
            hh8 hh hh <cymc toml> r8 <cymc tomh bd>4 toml8
            cymc8 hh <sn hh> hh hh hh <sn hh> hh
            cymc8 hh <sn hh> hh hh hh <sn hh> hh 
            cymc4 s2 cymc4

            hh8 hh hh hh sn <toml bd> hh hh
            tommh8 tommh <tommh toml> <tommh toml> <tommh toml> bd sn sn16 sn
            <cymc cymr>1

            % Final Chorus
            cymc8^"Final Chorus" hh8 <sn hh> hh hh <hh bd> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <sn bd>32 sn sn sn 
            cymc8 hh <sn hh> hh hh <hh bd> <sn hh> hh
            
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            cymc8 hh <sn hh> hh hh <hh bd> <sn hh> <bd hh> 
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            cymc4 s2 cymc4
            tommh8 tommh <toml tommh> <toml tommh> <toml tommh> bd sn sn16 sn
            cymc8 hh <sn hh> hh hh <bd hh> <sn hh> hh

            hh8 hh <sn hh> hh hh <bd hh> <sn hh> <bd hh> 
            hh8 hh <sn hh> hh hh <hh bd> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> hh
            hh8 hh <sn hh> hh hh <bd hh> <sn hh> sn16 sn
            cymc4 s2 cymc4

            tommh8 tommh <toml tommh> <toml tommh> <toml tommh> bd sn sn16 sn

            % Fin
            cymc4^"Fin" s2 r8 <cymc cymr bd>

            \bar "||"


          } 
          \\ 
          { 

            % Intro
            bd1~
            bd1
            s2 bd4 s
            s4 bd8 bd bd4 s

            % Verse
            bd4 s2.
            s1
            bd4 s2.
            s1
            bd4 s2.
            s1

            bd4 bd8 <bd cymc>4 bd8 bd4
            s1
            bd4 s2.
            bd8 bd s2.
            bd4 s2.
            bd4 s2.

            bd4 s2.
            bd8 bd8 s2.
            bd4 bd8 <bd cymc>4 bd8 bd4
            s1

            % Chorus
            bd4 s2.
            bd4 s2.

            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 bd8 <bd cymc>4 bd8 bd4
            s1

            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.

            bd4 bd8 <bd cymc>4 bd8 bd4
            s1
            bd4 bd8 <bd cymc>4 bd8 bd4
            
            % Interlude
            bd1
            s1
            s1
            s1

            % Verse II
            bd4 s bd8 bd s4
            bd4 s bd s
            bd4 s bd8 bd s4
            bd4 s2.
            bd4 s bd8 bd s4

            bd4 s bd8 bd s4
            bd4 bd8 <cymc bd>4 bd8 bd4
            s1
            bd4 s bd8 bd s4
            bd4 s bd8 bd bd bd 
            bd4 s bd s

            bd4 s2.
            bd4 s bd s
            bd4 s bd s 
            bd4 bd8 <bd tommh cymc>4 bd8 bd4
            s1

            % Chorus
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 bd8 <bd cymc>4 bd8 bd4

            s1
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.

            bd4 s2.
            bd4 bd8 <bd cymc>4 bd8 bd4
            s1
            bd4 bd8 <cymc bd>4 bd8 bd4

            % Bridge
            bd1
            s1
            s1
            s1
            
            bd4 bd bd bd 
            bd4 bd bd bd 
            bd4 bd bd bd 
            bd4 bd bd bd8 bd
            bd4 s r8 bd bd8 bd
            bd4 s bd8 bd bd bd

            bd4 s r8 bd bd bd 
            bd4 s bd8 bd bd bd
            bd4 s r8 bd bd bd 
            bd4 s bd8 bd bd bd
            bd4 bd8 <cymc bd>4 bd8 bd16 bd bd bd

            % Solo
            bd4 s bd8 bd s4

            bd4 s bd s 
            bd4 s bd8 bd s4
            bd4 s2.
            bd4 s bd8 bd s4
            bd4 s bd8 bd s4
            bd4 bd8 <cymc bd>4 bd8 bd4

            s1
            s1
            bd1

            % Final Chorus
            bd4 s2.
            bd4 s2.
            bd4 s2.

            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 bd8 <cymc bd>4 bd8 bd4
            s1
            bd4 s2.

            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 s2.
            bd4 bd8 <cymc bd>4 bd8 bd4

            s1

            % Fin
            bd4 bd8 <bd cymc> s2

          } 

        >>

      } 
    >>

  }
