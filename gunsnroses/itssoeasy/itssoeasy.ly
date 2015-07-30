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
  bell : cyms

  %}

  titlestr = "Guns N' Roses - It's So Easy"
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
      % Les deux lignes precedentes permettent de
      % grouper les croches par deux au lieu de
      % quatre dans la configuration par defaut.
      % Permet de séparer les croches par groupe de 2 
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(1 1 1 1)

      << 
        \tempo 4 = 150 
        {
          r1
          r1
          <cymc bd>16 sn sn sn sn sn sn sn <cymc bd> sn sn sn sn sn <cymc bd> sn
          sn16 sn sn sn sn sn sn sn sn sn sn sn sn sn sn sn
          <cymc bd>16 sn sn sn sn sn sn sn <cymc bd> sn sn sn sn sn <cymc bd> sn
          sn16 sn sn sn sn sn sn sn sn sn sn sn sn sn sn sn
          <cymc bd>16 sn sn sn sn sn sn sn <cymc bd> sn sn sn sn sn <cymc bd>8 

          % Mesure 8
          s4 \acciaccatura sn8 sn4 s4 \acciaccatura sn8 sn8 bd
          <cymc bd>4^"Ride" <cymr sn> cymr <cymr sn>8 bd
          r8 bd8 <cymr sn>4 cymr <cymr sn>
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd8 <cymr sn>4 cymr <cymr sn>
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd8 <cymr sn>4 cymr <cymr sn>
          
          % Mesure 15
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd8 <cymr sn>4 sn16 sn bd bd <cymc sn>4
          <cymc bd>4^"Bell" <cyms sn>8 bd cyms4 <cyms sn>8 bd
          cyms8 bd <cyms sn> bd <cyms> bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd16 bd <cymc sn>4

          % Mesure 23
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd \acciaccatura sn sn bd \acciaccatura sn sn bd \acciaccatura sn sn bd
          <cymc bd>4^"Ride" <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>

          % Mesure 31
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn>4 sn16 sn bd bd <cymc sn>4
          <cymc bd>4^"Bell" <cyms sn>8 bd cyms4 <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4

          % Mesure 39
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd \acciaccatura sn sn bd \acciaccatura sn sn bd \acciaccatura sn sn bd
          <cymc bd>4^"Ride" cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymc sn> <cymc sn>
          <cymc bd>4^"Hit-Hat" <hho sn>8 bd <hho bd>4 <hho sn>8 bd
          <hho bd>4 <hho sn>8 bd <hho bd>4 hho8 bd

          % Mesure 47
          <hho bd>4 <hho sn>8 bd <hho bd>4 hho8 bd
          <hho bd>4 <hho sn>8 bd hho4 \acciaccatura sn8 sn8 bd
          <cymc bd>4 <hho bd> <hho bd> <hho bd> 
          <hho bd>4 <hho bd> <hho bd> <hho bd>
          <hho bd>4 <hho bd> <hho bd> <hho bd>
          \acciaccatura sn8 sn8 bd \acciaccatura sn sn bd \acciaccatura sn sn bd \acciaccatura sn sn bd
          <cymc bd>4^"Ride" <cymr sn>8 bd sn <cymc bd> <cymc bd> <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>

          % Mesure 55
          <cymc bd>4 <cymr sn>8 bd \acciaccatura sn sn <cymc bd> <cymc bd> <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd \acciaccatura sn sn <cymc bd> <cymc bd> <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd \acciaccatura sn sn <cymc bd> <cymc bd> <cymc bd>
          r8 bd <cymc sn> bd <cymc sn> bd <cymc sn> bd
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          <cymr bd>8 bd <cymr sn>4 cymr <cymr sn>

          % Mesure 63
          <cymr bd>4 <cymr sn> cymr <cymr sn>8 bd
          cymr8 bd <cymr sn>4 cymr <cymc sn>4
          <cymr bd>4 <cymr sn> cymr <cymr sn>8 bd
          cymr8 bd <cymr sn>4 cymr <cymr sn>4
          <cymr bd>4 <cymr sn> cymr <cymr sn>8 bd
          cymr8 bd <cymc sn> bd <cymc sn> bd <cymc sn> bd
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd <cymr sn> bd cymr4 <cymr sn>

          % Mesure 71
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn> cymr <cymr sn>8 bd
          r8 bd <cymr sn>4 sn16 sn bd bd <cymc sn>4
          <cymc bd>4^"Bell" <cyms sn>8 bd cyms4 <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4

          % Mesure 79
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd <cyms sn> bd cyms bd16 bd <cymc sn>4
          cyms4 <cyms sn> cyms <cyms sn>8 bd
          cyms8 bd \acciaccatura sn sn bd \acciaccatura sn sn bd \acciaccatura sn sn bd 
          <cymc bd>4^"Ride" cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymr sn> cymr

          % Mesure 87
          <cymc bd>4 cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymc sn> cymr
          <cymc bd>4 cymr <cymc sn> cymr
          <cymc bd>4 cymr <cymr sn> cymr
          <cymc bd>4 cymr <cymc sn> <cymc sn>
          <cymc bd>4^"Hit-Hat" <hho sn>8 bd <hho bd>4 <hho sn>8 bd 
          <hho bd>4 <hho sn>8 bd <hho bd>4 <hho sn>8 bd 

          % Mesure 95
          <hho bd>4 <hho sn>8 bd <hho bd>4 <hho sn>8 bd 
          <hho bd>4 <hho sn>8 bd hho4 <cymc sn>
          <cymc bd>4 <hho sn>8 bd <hho bd>4 <hho sn>8 bd
          <hho bd>4 <hho sn>8 bd <hho bd>4 <hho sn>8 bd 
          <hho bd>4 <hho sn>8 bd <hho bd>4 <hho sn>8 bd 
          <hho bd>4 <cymc sn>8 bd <cymc sn> bd <cymc sn> bd
          <cymc bd>4^"Ride" <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          % Not crash with this comment  
          r8 bd <cymr sn> bd cymr4 <cymr sn>

          % Mesure 103
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymc sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymc sn> bd cymr4 <cymc sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          
          % Mesure 111
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 \acciaccatura sn8 sn4
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>

          % Mesure 119
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd cymr4 <cymr sn>8 <cymc bd>
          r8 bd <cymr sn> bd cymr4 <cymr sn>
          <cymc bd>4 <cymr sn>8 bd \acciaccatura sn sn <cymc bd> <cymc bd> <cymc bd> \bar "|."

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
          
          % Mesure 8
          bd8 bd s4 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 15
          s2 bd8 bd s4
          s1
          s2 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1
          
          % Mesure 23
          bd8 bd s4 bd8 bd8 s4
          s1
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 31 
          s2 bd8 bd s4
          s1
          s2 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1

          % Mesure 39
          bd8 bd s4 bd8 bd s4
          s1
          s1
          s1
          s1
          s1
          s1
          s1

          % Mesure 47
          s1
          s2 bd8 bd s4
          s1
          s1
          s1
          s1
          s1
          s2 bd8 bd s4

          % Mesure 55
          s1
          s2 bd8 bd s4
          s1
          s2 bd8 bd s4
          s1
          s1
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 63
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 71
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1
          s2 bd8 bd s4
          s1

          % Mesure 79
          bd8 bd s4 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1
          bd8 bd s4 bd8 bd s4
          s1
          s1 
          s1

          % Mesure 87
          s1 
          s1
          s1
          s1
          s1
          s1
          s1
          s1

          % Mesure 95
          s1
          s2 bd8 bd s4
          s1
          s1
          s1
          s1
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 103 
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 111
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4

          % Mesure 119
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s2 bd8 bd s4
          s1
        } 

      >>

    } 
  >>

}
