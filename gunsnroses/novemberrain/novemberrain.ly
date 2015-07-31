\version "2.18.2"

% Regle pour les pages
% #(set-global-staff-size 19.5) % taille des notes
% #(set-default-paper-size "a4")
% #(ly:set-option 'point-and-click #f) 

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

  titlestr = "Guns N' Roses - November Rain"
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
        \tempo 4 = 75
        {
          r1^"Intro" r1 r1 r1 r1 r1 r1 r1

          % Mesure 9
          r1 r1 r1 r1 r1 r1
          r2 sn8 tomh8 tommh16 tommh toml8
          <cymc bd>4^"Ride" cymr cymr cymr
          cymr cymr cymr cymc4:32 

          % Mesure 18
          cymc4 cymr cymr cymr
          cymr4 cymr tomh8 toml tommh16 tommh toml8
          <cymc bd>4 cymr cymr cymr 
          cymr4 cymr cymr cymc4:32
          cymr4 cymr cymr cymr 
          cymr4 cymr tomh8 toml tommh16 tommh toml8

          % Mesure 24
          <cymc bd>4^"1st Verse" cymr cymr cymr8 bd
          <cymr bd>4 cymr cymr cymr 
          <cymr bd>4 cymr cymr cymr8 bd
          <cymr bd>4 cymr tomh8. tommh16 tommh8 toml
          <cymc bd>4 cymr cymr cymr8 bd
          <cymr bd>4 cymr cymr cymr
          <cymr bd>4 cymr cymr cymr8 bd
          <cymr bd>4 cymr sn8 tomh tommh16 tommh toml8

          % Mesure 32
          <cymc bd>4^"Hit-Hat" <hh sn>8 hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh sn>8 tomh tommh16 tommh toml8

          % Mesure 40
          <cymc bd>4^"2nd Verse Ride" cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr cymr <cymr sn>
          <cymr bd>4 cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr cymr8. tommh16 tommh8 toml
          <cymc bd>4 cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr cymr <cymr sn>
          <cymr bd>4 cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr cymr8 tomh tommh16 tommh toml8

          % Mesure 48
          <cymc bd>4 cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr cymr <cymr sn>
          <cymr bd>4 cymr cymr <cymr sn>8 bd
          <cymr bd>4 cymr8. bd16 sn8 tomh tommh16 tommh toml8
          <cymc bd>4^"Hit-Hat" <hh sn>8 hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn>8 hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh sn>8 tomh tommh16 tommh toml8

          % Mesure 56
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> hh
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh sn>8 tomh tommh16 tommh toml8
          <cymc bd>4^"Ride" cymr cymr <cymr toml>
          cymr4 cymr cymr <cymr tommh>8 toml
          <cymc bd>4 cymr cymr <cymr toml>
          cymr4 cymr cymr <cymr tommh>8 toml

          % Mesure 64
          <cymc bd>4 cymr cymr <cymr toml>
          cymr4 cymr cymr <cymr tommh>8 toml
          <cymc bd>4 cymr cymr <cymr toml>8 bd
          <cymc sn>8 <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> sn16 sn tommh8
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr 
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 sn tommh8

          % Mesure 72
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr16 bd
          <cymc sn>8 <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> <toml sn>
          <tomh sn>8 <toml sn> <toml sn> <toml sn> sn tomh tommh16 tommh toml8
          <cymc bd>8^"Guitar Solo 1 Ride" hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>

          % Mesure 80
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 tomh tommh16 tommh toml8
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd> 
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 hh tommh16 tommh toml8
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>

          % Mesure 88
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 tomh tommh16 tommh toml8
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 tomh tommh16 tommh toml8
          <cymc bd>4^"Ride" cymr cymr <cymr toml>
          cymr4 cymr cymr <cymr tommh>8 toml
          <cymc bd>4 cymr cymr <cymr toml>

          % Mesure 96
          cymr4 cymr cymr <cymr tommh>8 toml
          <cymc bd>4 cymr cymr <cymr toml>
          cymr4 cymr cymr  <cymr tommh>8 toml
          <cymc bd>4 cymr cymr <cymr toml>8 bd
          <cymc sn>8 <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> <toml sn> <toml sn>
          <toml sn>8 <toml sn> <toml sn> <toml sn> sn tommh sn16 tommh toml8
          <cymc bd>8^"Guitar Solo 2 Hit-Hat" hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>

          % Mesure 104
          <cymc bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 
          <hh bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> sn16 sn toml8
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd>8 <hh sn> <hh bd> 
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 hh16 sn sn8 toml
          <cymc bd>8^"3rd Verse" hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 

          % Mesure 112
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <hh sn>8 <hh sn> tomh16 tomh tommh8
          <cymc bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd> 
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd sn8. tomh16 tommh8 toml
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh <hh bd> <hh bd> <hh sn> <hh bd>

          % Mesure 120
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd <cymc sn>8 hh16 sn sn8 tommh
          <cymc bd>8 hh <hh sn> hh16 bd <hh bd>8 <hh bd> <hh sn> <hh bd>
          <hh bd>8 hh <hh sn> hh16 bd sn8 tommh toml16 toml tomh8
          <cymc bd>8^"Ride" cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr
          <cymc bd>8 <cymr sn> cymr16 tommh cymr bd <cymr sn>8 tomh tommh16 tommh toml8
          <cymc bd>8 cymr <cymr sn> cymr <cymr bd> cymr <cymr sn> cymr
          <cymc bd>8 sn8~ sn16 tommh8 bd16 sn8 tomh tommh16 tommh toml8

          % Mesure 128
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> cymr <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr <cymc bd> tomh tommh16 tommh toml8
          <cymc bd>8 cymr <cymr sn> cymr <cymr bd> <cymr bd> <cymr sn> cymr 
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymc sn>8 tomh tommh16 tommh toml8
          <cymc cymr bd>1
          r1
          r2^"Outro" r4 r8 \tuplet 3/2 {sn16 sn sn} 
          sn8 sn sn \tuplet 3/2 {sn16 sn sn} sn sn8 sn16 sn8 sn16 sn

          % Mesure 136
          <sn bd>8 sn <sn bd> \tuplet 3/2 {sn16 sn sn} <sn bd> sn8 sn16 <sn bd> sn \tuplet 3/2 {sn16 sn sn}
          <sn bd>8 sn <sn bd> \tuplet 3/2 {sn16 sn sn} <sn bd> sn8 sn16 <sn bd>8 sn16 sn
          <sn bd>8 sn <sn bd> \tuplet 3/2 {sn16 sn sn} <sn bd> sn8 sn16 <sn bd> sn \tuplet 3/2 {sn16 sn sn}
          <sn bd>8 sn <sn bd> \tuplet 3/2 {sn16 sn sn} <sn bd> sn8 sn16 <sn bd>8 sn16 sn
          <sn bd>8 sn <sn bd> \tuplet 3/2 {sn16 sn sn} <sn bd> sn8 sn16 <sn bd>8 sn16 sn
          <sn bd>16 sn sn sn <sn bd> sn sn sn <sn bd> sn sn sn <tommh bd> tommh toml toml
          <cymc bd>8^"Ride" <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr

          % Mesure 144
          <cymr bd>8 cymr <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> sn16 sn
          <cymc bd>8 <cymr bd> <cymr sn>16 bd cymr8 <cymr bd> cymr16 bd <cymr sn> bd cymr8
          <cymr bd>8 cymr16 bd <cymr sn>8 cymr16 bd <cymr sn>8 <cymr bd> sn16 sn tommh8
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymc bd>8 <cymr bd> <cymr sn>16 bd cymr8 <cymr bd>16 sn cymr bd <cymr sn>8 cymr
          <cymr bd>8 cymr16 bd <cymr sn>8 cymr16 bd <cymr sn>8 <cymr sn>8 sn16 sn tommh tommh

          % Mesure 152
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr16  bd
          <cymc sn>16 bd cymr bd <cymr sn> bd cymr bd <cymr sn> bd cymr bd <cymr sn> bd cymr bd
          <cymr sn>16 bd cymr bd <cymr sn> bd cymr bd <cymr sn>8 sn16 sn tommh tommh toml toml
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr16 bd

          % Mesure 160
          <cymr sn>8 cymr16 tommh cymr8 <cymr sn> cymr16 tommh cymr bd <cymr sn> bd cymr bd 
          <cymr sn>16 bd cymr bd <cymr sn> bd cymr bd <cymr sn>8 sn sn16 sn sn sn 
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr16 bd
          <cymc sn>16 bd cymr bd <cymr sn> bd cymr bd <cymr sn> bd cymr bd <cymr sn> bd cymr bd

          % Mesure 166
          <cymr sn>16 bd cymr bd <cymr sn> bd cymr bd <cymr sn>8 <cymr sn> sn16 sn sn8
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> <cymc sn> cymr 
          <cymr bd>8 <cymr bd> <cymc sn> cymr <cymr bd> <cymr bd> sn4
          <cymc bd>4 sn <cymc bd>8. bd16 sn4
          <cymc cymr bd>1
          r1 r1 r1 \bar "|."
        } 

      >>

    } 
  >>

}
