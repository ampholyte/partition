\version "2.18.2"

% Regle pour les pages
#(set-global-staff-size 19.5) % taille des notes
#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f) 

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
  bell : cyms
  %}

  titlestr = "Guns N' Roses - Live And Let Die"
  composerstr = "Drum - arr. Ampholyte"
  

  \header {
    title = \titlestr
    composer = \composerstr 

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header: \titlestr
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
      % Les deux lignes precedentes permettent de
      % grouper les croches par deux au lieu de
      % quatre dans la configuration par defaut.
      % Permet de séparer les croches par groupe de 2 
      \set DrumVoice.beamExceptions = #'()
      \set DrumVoice.baseMoment = #(ly:make-moment 1/4)
      \set DrumVoice.beatStructure = #'(1 1 1 1)

      << 
        \tempo 4 = 62 
        {
          r1^"Intro"
          r1
          r1
          r1
          r1
          r1
          r1
          cymr4^"Ride" r2 sn16 toml32 toml32 bd8

          % Mesure 9
          \tempo 4 = 70
          <cymc bd>4 sn8 <cymc bd>4. tomh16 tommh toml8
          <cymc bd>8. bd16 sn8 <cymc bd>4 sn8 tomh16 tommh toml8
          <cymc bd>8. bd16 sn8 <cymc bd> sn tomh tommh16 tommh toml8
          \time 3/8 <cymc bd>8.[ bd16 sn8]

          \tempo 4 = 152
          \time 4/4 cymc4^"Hit-Hat" <hh sn>4 <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
        
          % Mesure 15
          <hh bd>4 <hh sn> <hh bd> <hh sn>8 bd
          hh8 bd <hh sn> bd hh bd <hh sn>4
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>8 bd
          hh8 bd sn <cymc bd>4 bd8 sn4
          <hh bd>4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> <hh bd> <hh sn>
          
          % Mesure 23
          <hh bd>4 <hh sn> <hh bd> <hh sn>8 bd
          <toml sn>8 <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> \acciaccatura sn8 sn
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd> <hh sn>8 bd hh bd <hh sn>4
          <hh bd>4 <hh sn> <hh bd> <hh sn>
          <hh bd> <hh sn>8 bd hh bd <hh sn>4
          <hh bd>4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 sn8 <cymc bd>4 sn8 <cymc bd>4

          % Mesure 31
          sn8 <cymc bd>4 bd8 sn4 toml
          \time 2/4 sn16 sn toml8 r4
          \time 4/4 <cymc bd>4 sn8 <cymc bd>4 sn8 <cymc bd>4
          \time 5/4 sn8 <cymc bd>4 bd8 sn4 toml sn16 sn toml toml

          \tempo 4 = 80
          \time 4/4 <cymc bd>8 hho <hh sn> hho <hh bd> hh16 hh <hh sn>8 hh
          <hh bd>8 hho <hh sn> hho <hh bd> hh16 hh <hh sn>8 hh16 hh
          <hh bd>8 hho <hh sn> hho <hh bd> hh <hh sn> hh
          \time 3/8 <hh bd>8[ toml16 toml sn8]

          % Mesure 39
          \time 4/4 cymc1
          \tempo 4 = 152
          <toml sn>8 <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> sn4
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          <hh bd>4 <hh sn> <hh bd> <hh sn>8 bd
          hh8 bd <hh sn> bd hh bd <hh sn>4
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>

          % Mesure 47
          <hh bd>4 <hh sn> <hh bd> <hh sn>8 bd
          hh8 bd sn <cymc bd>~ <cymc bd>2
          \tempo 4 = 62
          <cymc bd>4^"Ride" hhp cymr hhp
          cymr4 hhp cymr hhp
          cymr4 hhp cymr hhp
          cymr4 hhp cymr hhp
          cymr4 hhp cymr hhp
          cymr4 hhp cymr hhp

          % Mesure 55
          cymr4 hhp cymr hhp
          cymr16 cymr cymr8 r4 cymr sn16 toml32 toml bd8
          \tempo 4 = 70
          <cymc bd>4 sn8 <cymc bd>4. tomh16 tommh toml8
          <cymc bd>8. bd16 sn8 <cymc bd> sn tomh tommh16 tommh toml8
          <cymc bd>8. bd16 sn8 <cymc bd>4 sn8 tommh16 tommh toml8
          \time 3/8 <cymc bd>8.[ bd16 sn8]

          % Mesure 61
          \tempo 4 = 158
          \time 4/4 cymc4^"Outro" <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          hh4 <hh sn> <hh bd> <hh sn>8 bd
          hh8 bd <hh sn> bd hh bd <hh sn>4
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>8 bd
          hh8 bd sn <cymc bd>4 bd8 sn16 sn sn sn 

          % Mesure 69
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>8 bd
          hh8 bd <hh sn> bd hh bd <hh sn>4
          cymc4 <hh sn> <hh bd> <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>
          <hh bd>4 <hh sn> hh <hh sn>8 bd
          \tempo 4 = 15
          sn8 <cymc bd>4. <cymc bd>2 \bar "|."

        } 
        \\ 
        { 
          s1
          s1
          s1
          s1
          s1
          s1
          s1
          s1

          % Mesure 9
          s1
          s1
          s1
          \time 3/8 s4.
		  
          \time 4/4 bd8 bd s2.
          s2 bd8 bd s4

          % Mesure 15
          s1
          s1
          bd8 bd s2.
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1
          s1
          s1

          % Mesure 23
          s1
          s1
          bd8 bd s2.
          s1
          s1
          s1
          s1
          s1

          % Mesure 31
          s1
          \time 2/4 s2
          \time 4/4 s1
          \time 5/4 s1 s4
          \time 4/4 s1
          s1
          s1
          \time 3/8 s4.

          % Mesure 39
          \time 4/4 bd4 hhp hhp hhp
          s1
          bd8 bd s2.
          s2 bd8 bd s4
          s1
          s1
          bd8 bd s2.
          s2 bd8 bd s4

          % Mesure 47
          s1
          s1
          s1
          s1
          s1
          s1
          s1
          s1

          % Mesure 55
          s1
          s1
          s1
          s1
          s1
          \time 3/8 s4.

          % Mesure 61
          \time 4/4 bd8 bd s2.
          s2 bd8 bd s4
          bd8 bd s2.
          s1
          bd8 bd s2.
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1

          % Mesure 69
          bd8 bd s2.
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1
          bd8 bd s2.
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1

        } 

      >>

    } 
  >>

}
