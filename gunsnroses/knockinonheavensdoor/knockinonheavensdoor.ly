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

  titlestr = "Guns N' Roses - Knockin' On Heaven's Door"
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
        \tempo 4 = 64
        {
          r1^"Intro"
          r1
          r1
          r2 sn16 bd sn bd sn tomh tommh toml
          <cymc bd>8^"Ride" cymr <cymr sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 bd toml bd
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 tomh tommh toml

          % Mesure 9
          <cymc bd>8^"1st Verse Hit-Hat" hh16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 hh
          <hh bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd>8 <hh bd>16 hh <hh sn>8 hho
          <hh bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 hh
          <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd> <hh bd>8 <hh bd> sn16 tommh toml8
          <cymc bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 hh
          <hh bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd>8 <hh bd>16 hh <hh sn>8 hho
          <hh bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 hh
          <cymc sn>8^"Ride" <cymr bd>16 bd <cymc sn>8 <cymr bd>16 bd sn bd bd tommh bd bd tommh toml 

          % Mesure 17
          <cymc bd>8^"Chorus" <cymr bd> <cymc sn> cymr <cymr bd> cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 bd toml bd
          <cymc bd>8 <cymr bd> <cymc sn> cymr <cymr bd> cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> <cymr bd>16 bd
          <cymr bd>8 <cymr bd>8 <cymc sn> cymr <cymr bd> cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 tomh tommh toml
          <cymc bd>8 <cymr bd> <cymr sn> cymr <cymr bd> cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd>16 tomh sn8 hho

          % Mesure 25
          <hh bd>8^"1st Solo Hit-Hat" hh16 hh <hh ss>8 hh16 hh <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd>
          <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd> <hh bd>8 <hh bd>16 hh <hh ss>8 hho
          <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd> <hh bd>8 hh16 hh <hh ss>8 hh16 hh
          <hh bd>8 hh16 hh <hh ss>8 hh16 hh <hh bd> hh <hh bd> hh <hh ss> hh toml8
          <cymc bd>8 hho <hh ss> hh16 hh <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd>
          <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd> <hh bd>8 <hh bd>16 hh <hh ss>8 hho
          <hh bd>8 hh16 hh <hh ss>8 hh16 <hh bd> <hh bd>8 hh16 hh <hh ss>8 hh16 hh
          <hh bd>8 hh16 hh <hh ss>8 hh16 bd sn bd bd tommh bd bd toml bd

          % Mesure 33
          <cymc bd>8^"2nd Verse" hho16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd>
          <hh bd>8 hh16 hh <hh sn>8 hh16 hh <hh bd> hh <hh bd> hh <hh sn> hh hho8
          <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd> <hh bd>8 hh16 hh <hh sn>8 hh16 hh 
          <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd> <hh bd>8 <hh bd>16 hh sn tommh toml8
          <cymc bd>8 hho16 hh <hh sn>8 hh16 <hh bd> <hh bd>8 hh16 hh <hh sn>8 hh16 hh 
          <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd> <hh bd> hh <hh bd> hh <hh sn> hh hho8
          <hh bd>8 hho16 hh <hh sn>8 hh16 hh <hh bd>8 hh16 hh <hh sn>8 hh16 <hh bd>
          <cymc sn>16 bd <hh bd> bd <cymc sn> bd <hh bd> bd sn bd sn bd sn tomh tommh toml

          % Mesure 41
          <cymc bd>8^"Chorus Ride" <cymr bd> <cymc sn> cymr <cymr bd> cymr <cymr sn> cymr
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> cymr
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn> cymr16 toml
          <tomh bd>8 <tomh bd> <cymc sn> cymr <cymr bd> cymr <cymr sn> cymr 
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 tomh tommh toml
          <cymc bd>8 <cymr bd> <cymc sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>16. sn32 sn16 sn sn tomh tommh toml

          % Mesure 49
          <cymc bd>8^"2nd Solo" <cymr bd>16 bd <cymc sn>8 cymr <cymr bd> cymr <cymr sn> cymr16 bd
          <cymr bd>8 <cymr bd> <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn>16 tommh toml8
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr sn> bd bd bd tommh bd sn bd 
          <cymc bd>8 cymr <cymc sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 <cymr bd> <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> <cymr sn>16 tommh toml8
          <cymc bd>8 cymr <cymc sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <tomh sn> <tomh sn> <tomh sn> <tomh sn> <tomh sn> <tomh sn> tommh8

          % Mesure 57
          <hh bd>16^"Hit-Hat" bd hh hh <hh sn>8 hh16 <hh bd> <hh bd>8 <hh bd>16 hh <hh sn>8 hh16 hh
          <hh bd>16 <hh bd> hh hh <hh sn> hh hh <hh bd> <hh bd> hh <hh bd> hh <hh sn> hh hho8
          <hh bd>16 bd hh hh <hh sn>8 hh16 <hh bd> <hh bd>8 <hh bd>16 hh <hh sn>8 hh16 hh
          <hh bd>16 <hh bd> hh hh <hh sn> hh hh <hh bd> <hh bd> hh hh <hh bd> <hh sn>8 <cymc sn> 
          <hh bd>16 bd hh hh <hh sn>8 hh16 <hh bd> <hh bd> <hh bd> hh hh <hh sn>8 hh16 hh16 
          <hh bd>16 <hh bd> hh hh <hh sn> hh hh <hh bd> <hh bd> hh <hh bd> hh <hh sn> <hh bd> <tomh sn>8
          <hh bd>16 bd hho8 <hh sn>8. hh16 <hh bd> <hh bd> <hh bd> <hh bd> <hh sn>8 hh16 hh
          <hh bd>16 <hh bd> <hh bd> <hh bd> <hh sn> hh hh <hh bd> <hh bd> <hh bd> <hh bd> <hh bd> <tomh toml> bd <tomh toml> <tomh toml>

          % Mesure 65
          <cymc bd>16^"Chorus" bd hho8 <hh sn> hh <hh bd>16 bd hh8 <hh sn> hh
          <hh bd>16 bd hh8 <hh sn> hh <hh bd>16 bd hh8 <hh sn> <hh sn>
          <hh bd>16 bd hh8 <hh sn> hh16 bd <hh bd> bd hh8 <hh sn> hh
          <hh bd>16 bd hh8 <hh sn> hh16 bd hh sn hh bd <hh sn> bd <cymc bd>8
          <cymc bd>16 bd hho8 <hh sn> hh16 bd <hh bd> bd hh8 <hh sn> hh
          <hh bd>16 bd hh8 <hh sn> hh <hh bd>16 bd hh8 <tomh sn> sn
          <hh bd>16 bd hho8 <hh sn> hh16 bd <hh bd> bd hh8 <hh sn> hh

          % Mesure 72
          <hh bd>16 bd hh8 <hh sn> hh16 bd <hh bd>8 <hh bd>16 tomh sn tommh tommh toml
          <cymc bd>16 bd hh8 <hh sn> hh16 bd <hh bd> bd hh8 <hh sn> hh
          <hh bd>16 bd hh8 <hh sn> hh <hh bd>16 bd hh bd <tomh sn>8 <hho sn> 
          <hh bd>16 bd hho8 <hh sn> hh16 bd <hh bd> bd hh8 <hh sn> hh
          <hh bd>16 bd hh8 <hh sn> hh16 bd <hh bd> hh hho8 <hh sn>16 hh hho8
          <hh bd>16 bd <hh bd>8 <tomh sn> hh16 bd <hh bd>16 bd <hh bd>8 <tomh sn> hh16 bd
          <hh bd>16 bd <hh bd>8 <tomh sn> hh16 bd <tomh sn> <tomh sn> <tomh sn> <tomh sn> <tomh sn> <tomh sn> sn sn 
          <cymc bd>16 <cymc bd>8. hh4 hh hh

          % Mesure 80
          <cymc sn>16 bd bd bd sn bd bd bd sn bd sn bd sn tomh tommh toml
          <cymc bd>8^"Outro Ride" <cymr bd>16 bd <cymc sn>8 cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd 
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16 bd toml bd
          <cymc bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn8. tomh16 
          tommh8 toml <cymr sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr sn> sn16 bd sn sn
          <cymc bd>8 <cymr bd> <cymc sn> cymr16 bd <cymr bd>8 cymr <cymr sn> cymr16 bd

          % Mesure 88
          <cymr bd>8 cymr <cymr sn> cymr16 bd <cymr bd>8 <cymr bd> sn16. sn32 sn16 sn
          sn16 <cymc bd>8 sn16 <cymc bd>8 sn16 <cymc bd>~ <cymc bd> sn <cymc bd>8 sn16 bd toml bd
          \tempo 4 = 50
          <cymc bd>16 cymc8.:64 cymc4:64 cymc4:64 cymc4:64
          \tempo 4 = 64
          cymr8 cymr16 cymr cymr8. \tuplet 3/2 {sn32 tomh toml} bd4 r4 \bar "|."
          
        } 
      >>

    } 
  >>

}
