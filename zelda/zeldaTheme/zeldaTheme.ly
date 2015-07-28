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
    title = "The Legend Of Zelda - Overworld Drum"
    composer = "Koji Kondo - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"The Legend Of Zelda - Overworld Drum - arr. Ampholyte"
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
      %#(override-auto-beam-setting '(end * * 4 4) 3 4) 
      %#(override-auto-beam-setting '(end * * 4 4) 1 4)
      % Les deux lignes precedentes permettent de
      % grouper les croches par deux au lieu de
      % quatre dans la configuration par defaut.

      << 
        \tempo 4=150
        {
          sn4 r r \times 2/3 {sn8 sn sn}
          sn4 r r \times 2/3 {sn8 sn sn}
          sn4 r r \times 2/3 {sn8 sn sn}
          sn4 sn8 sn sn4 sn

          % Debut reprise 
          \repeat volta 4 {
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn
            sn4 \times 2/3 {sn8 sn sn} sn4 sn^"x4"
          }
          
        } 
      >>

    } 
  >>
}


