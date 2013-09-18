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
    title = "Fairy Tail  - Main Theme Drum"
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
        \fromproperty #'header:"Fairy Tail - Main Theme Drum - arr. Ampholyte"
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
        #(override-auto-beam-setting '(end * * 4 4) 3 4) 
        #(override-auto-beam-setting '(end * * 4 4) 1 4)
        % Les deux lignes précédentes permettent de
        % grouper les croches par deux au lieu de
        % quatre dans la configuration par défaut.

        << 
          {
            \tempo 4=110

            % Intro 
            cymc1^"Intro" 
            <cymc sn>2. sn4
            cymc1 
            cymc4 sn cymc8 sn <tomh tommh>16 <tomh tommh> <tomh toml> <tomh toml> 
            \bar "||"

            % Verse 1
            <cymc sn>8^"Verse1" hh s2.
            s1 
            s1 
            s1 
            s1 
            s1 
            s1 
            s1 
            \bar "||"

            % Bridge
            s1^"Bridge" 
            s1  
            s1 
            s1 
            \bar "||"

            % Verse 2
            <cymc hho>8^"Verse 2" hhc s2. 
            s1 
            s1 
            s1
            cymc8 hh s2.
            s1
            s1
            s2. cymc4

            % Bridge 
            cymc4^"Bridge" s2.
            s1

            % Verse 3
            <cymc hho>8^"Verse 3" hh s2.
            s1 
            s1
            s1
            cymc8 hh s2.
            s1
            s1
            s4 cymc8 hh sn16 sn sn sn sn sn sn sn

            % Pre-Verse
            cymc2.^"Pre-Verse" sn4
            cymc4 s4 s4 <tomh tommh>16 <tomh tommh> <tommh toml>8
            cymc4 s2.
            cymc4 cymc8 sn16 sn s2

            % Verse 4
            cymc8^"Verse 4" [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh s4
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <cymc hh>8 [hh16 hh]
            cymc8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 <hh bd>]
            hh8 [hh16 hh] <cymc hh>8 [<hh bd>16 <hh bd>] hh hh hh hh hh hh hh hh

            % Verse 5
            cymc8^"Verse 5" [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh hh hh hh <sn hh>8 [hh16 <hh bd>]
            hh8 [hh16 hh] <sn hh>8 [<bd hh>16 <bd hh>] hh hh hh hh <cymc sn>8 [hh16 hh]
            cymc8 [hh16 hh] <sn hh>8 [hh16 hh] hh16 hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh hh hh hh <sn hh>8 [hh16 hh]
            hh8 [hh16 hh] <sn hh>8 [hh16 hh] hh hh hh hh <sn hh>8 [hh16 <hh bd>]
            hh8 [hh16 hh] <cymc sn>8 [<hh bd>16 <hh bd>] hh hh hh hh hh hh hh hh

            % Verse 6
            s1^"Verse 6"
            s1
            s1
            s1

            % Pre-Verse            
            s1^"Pre-Verse"
            s1
            s1
            s1
            s1
            s1
            s1
            s1

            % Ending
            cymc1^"Ending"  
            cymc1
            cymc1
            r1
            cymc1
          } 
          \\ 
          { 
            % Intro
            bd1 
            bd2. sn4
            bd1 
            bd4 sn bd bd16 bd bd bd 

            \bar "||"

            % Verse 1
            bd4  sn8 hh bd16 bd <bd hh> bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd
            bd4  sn8 hh bd16 <bd hh> bd bd sn8 hh16 bd


            \bar "||"

            % Bridge
            bd8 hh sn hh bd hh sn hh 
            bd8 hh sn hh bd hh sn hh 
            bd8 hh sn hh bd hh sn hh 
            bd8 hh sn hh bd hh sn hh

            \bar "||"

            % Verse 2
            bd4 <sn hh>8 [hh16 hh] <hh bd>8 hh <sn hh> hh
            <bd hh>8 hh <sn hh> hh <bd hh> hh <sn hh> [hh16 hh]
            <bd hh>8 hh <sn hh> [hh16 hh] <hh bd>8 hh <sn hh> hh
            bd8 hh sn hh bd <bd hh> sn [<sn hh>16 <hh sn>]
            bd4 <sn hh>8 [hh16 hh] <hh bd>8 hh <sn hh> hh
            <bd hh>8 hh <sn hh> hh <bd hh> hh <sn hh> [hh16 hh]
            <bd hh>8 hh <sn hh> [hh16 hh] <hh bd>8 hh <sn hh> hh
            <bd hh>8 <hh bd> <sn hh> hh <bd hh> <hh bd> <sn hh> [<hh bd>16 <hh bd>]

            \bar "||"

            % Bridge
            bd4 sn8 [hh16 hh] bd8 hh sn hh
            bd hh sn hh bd hh sn <sn hh>

            \bar "||"

            % Verse 3 
            bd4 <hh sn>8 [hh16 hh] <bd hh>8 hh <sn hh> hh
            <bd hh>8 hh <sn hh> [hh16 hh] <bd hh>8 hh <sn hh> [hh16 hh]
            <bd hh>8 hh <sn hh> [hh16 hh] <bd hh>8 hh <sn hh> hh
            bd8 hh sn hh bd <bd hh> bd [<bd hh>16 <bd hh>]
            bd4 <hh sn>8 [hh16 hh] <bd hh>8 hh <sn hh> hh
            <hh bd>8 hh <sn hh> [hh16 hh] <bd hh>8 hh <sn hh> [hh16 hh]
            <bd hh>8 hh <sn hh> [hh16 hh] <bd hh>8 hh <sn hh> hh 
            <bd hh>8 <bd hh> <bd hh> <bd hh> s2

            \bar "||"

            % Pre-verse
            bd2. sn4
            bd4 sn bd8 sn bd16 bd bd8
            bd8 sn sn16 bd8 sn16 sn8 [bd32 bd bd bd] sn16 bd bd8
            bd8 [sn16 sn] s4 bd32 [bd bd16 bd bd] sn bd sn sn

            \bar "||"

            % Verse 4
            bd4 s bd16 bd bd bd s4
            bd4 s bd16 bd bd bd s4
            bd4 s bd16 bd bd bd <hh sn>8 [hh16 <hh bd>]
            bd8 [bd16 bd] s8 [bd16 bd] bd bd bd bd s4
            bd4 s bd16 bd bd bd s4
            bd4 s bd16 bd bd bd s4
            bd8 bd8 s4 bd16 bd bd bd s4
            bd8 [bd16 bd] s4 bd16 bd bd bd bd bd bd bd

            \bar "||"

            % Verse 5
            bd4 s4 bd16 bd bd bd s4  
            bd4 s4 bd16 bd bd bd s4  
            bd4 s4 bd16 bd bd bd s4  
            bd8 [bd16 bd] s4 bd16 bd bd bd s4  
            bd4 s4 bd16 bd bd bd s4  
            bd4 s4 bd16 bd bd bd s4  
            bd4 s4 bd16 bd bd bd s4  
            bd8 [bd16 bd] s4 bd16 bd bd bd bd bd bd bd  

            \bar "||"

            % Verse 6
            <bd cymc>8 hh sn hh bd16 bd <bd hh> bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]

            \bar "||"

            % Pre-Verse
            <bd cymc>8 hh sn hh bd16 bd <bd hh> bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            <bd cymc>8 hh sn hh bd16 bd <bd hh> bd sn8 [hh16 bd]
            bd8 hh sn hh bd16 <bd hh> bd bd sn8 [hh16 bd]
            bd8 [<hh bd>16 bd] <cymc>8 hh bd16 <bd hh> bd bd <cymc>8 [hh16 bd]
            <cymc bd>8 hh cymc hh <cymc bd>16 bd <bd hh> bd cymc8 [<hh bd>16 bd]

            \bar "||"

            % Ending
            bd1
            bd1
            bd1
            r1
            bd1

            \bar "||"
          } 

        >>

      } 
    >>
  }


