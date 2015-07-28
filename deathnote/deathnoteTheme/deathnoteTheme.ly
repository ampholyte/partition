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
    title = "Death Note Theme Drum"
    composer = "Yoshihisa Hirano - arr. Ampholyte"

  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Death Note Theme arr. Ampholyte"
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
    
    % Pour reduire sur une seule page

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
    % #(override-auto-beam-setting '(end * * 4 4) 3 4) 
    % #(override-auto-beam-setting '(end * * 4 4) 1 4)
      % Les deux lignes precedentes permettent de
      % grouper les croches par deux au lieu de
      % quatre dans la configuration par defaut.

      << 
        \tempo 4 = 68 
        {
          % 1
          s1^"1"
          \repeat unfold 3 {
            s1
          }

          \repeat unfold 4 {
            s2 hho
          }

          \repeat unfold 8 {
            cymr4 cymr hho cymr
          }

          % Break
          cymr4^"Break" cymr cymr cymr
          cymr4 cymr cymr cymr

          % 1 + distortion

          cymr8^"Part 1 + distortion" cymr cymr cymr cymr cymr cymr cymr
          \repeat unfold 6 {
            cymr8 cymr cymr cymr cymr cymr cymr cymr
          }

          cymr8 cymr cymr cymr cymr cymr <cymr sn[> cymr16 sn32 sn]

          % 2 

          hho8^"Part 2 " hho hho hho hho hho <hho sn> hho

          \repeat unfold 6 {
            hho8 hho hho hho hho hho <hho sn> hho
          }

          hho8 hho hho hho <hho sn>16 sn <hho sn> sn sn32[sn sn sn sn sn sn sn]

          % 3

          hho8^"Part 3" hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> hho16 sn32 sn]
          hho8 hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> sn32 sn sn sn]
          hho8 hho <hho sn> hho hho hho <hho sn> hho

          hho8 hho hho hho <sn hho>16 sn <sn hho> sn sn32[sn sn sn sn sn sn sn]
          hho8 hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> hho16 sn32 sn]
          hho8 hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> sn32 sn sn sn]

          % 4
          hho8^"Part 4" hho <sn hho> hho hho hho <hho sn> hho
          
          \repeat unfold 2 {
            hho8 hho <sn hho> hho hho hho <hho sn> hho
          }

          hho8 hho <sn hho> hho hho hho <sn hho[> sn32 sn sn sn]

          \repeat unfold 3 {
            hho8 hho <sn hho> hho hho hho <hho sn> hho
          }

          hho8 hho hho hho <hho sn>16 sn <hho sn> hho sn32[sn sn sn sn sn sn sn]

          % End
          hho8^"End" hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> hho16 sn32 sn]
          hho8 hho <sn hho[> hho16 sn32 sn] hho8 hho <sn hho[> sn32 sn sn sn]

          <hho sn>1
         
          \bar "||"

          
        } 
        \\ 
        { 
          % 1
          \repeat unfold 8 {
            bd4 r bd r
          }

          \repeat unfold 3 {
            bd4 s bd s
          }

          bd4 s bd bd

          \repeat unfold 3 {
            bd4 s bd s
          }
          bd4 s bd toml

          % Break
          \repeat unfold 2 {
            bd4 bd bd bd
          }

          % 1 + Distortion
          \repeat unfold 8 {
            bd4 bd bd bd 
          }

          % 2
          \repeat unfold 7 {
            bd8 bd bd4 bd8 bd bd4
          }
		
          bd16 bd bd bd bd bd bd bd bd bd bd bd bd bd bd bd 

          % 3
          \repeat unfold 2 {
            bd4 bd bd bd
          }

          bd8 bd bd4 bd8 bd bd4

          bd16 bd bd bd bd bd bd bd bd bd bd bd bd bd bd bd

          % 4
          \repeat unfold 7 {
            bd8 bd bd4 bd8 bd bd4
          }

          bd16 bd bd bd bd bd bd bd bd bd bd bd bd bd bd bd 

          % End
          \repeat unfold 2 {
            bd4 bd bd bd
          }

          bd4 s2.

        } 

      >>

    } 
  >>

}
