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

  titlestr = "Compositeur - Titre"
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
        \tempo 4 =  
        {

        } 
        \\ 
        { 

        } 

      >>

    } 
  >>

}
