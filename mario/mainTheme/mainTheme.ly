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
    title = "Nintendo - Super Mario Bros Theme Drum"
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
        \fromproperty #'header:"Nintendo - Super Mario Bros Theme Drum - arr. Ampholyte"
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
          \tempo 4=105

          <hh sn>8 hh16 <hh sn>8 hh16 <hh sn>8 <hh sn>8. sn8 hh16 hh hh
          
          % Partie A 
          hh8^"A"[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}

          % Partie B
          hh8^"B"[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}

          % Partie C
          hh8^"C" bd16 <sn hh>8 bd16 hh8 hh8. <sn hh>8 bd16 bd bd
          hh8 bd16 <sn hh>8 bd16 hh8 hh8. <sn hh>8 bd16 bd bd
          hh8 bd16 <sn hh>8 bd16 hh8 hh8. <sn hh>8 bd16 bd bd
          hh8 bd16 <sn hh>8 bd16 hh8 hh8. <sn hh>8 bd16 bd bd

          % Partie A
          hh8^"A"[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}
          hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]} hh8[ \times 2/3 {hh16 r hh]} <sn hh>8[ \times 2/3 {hh16 r hh]}

          % Partie D
          hh8.^"D" hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh


          % Partie C
          <hh bd>8^"C" hh16 <sn hh>8 hh16 <hh bd>8 <hh bd>8. <sn hh>8 <hh bd>16 bd bd
          <hh bd>8 hh16 <sn hh>8 hh16 <hh bd>8 <hh bd>8. <sn hh>8 <hh bd>16 bd bd
          <hh bd>8 hh16 <sn hh>8 hh16 <hh bd>8 <hh bd>8. <sn hh>8 <hh bd>16 bd bd
          <hh bd>8 hh16 <sn hh>8 hh16 <hh bd>8 <hh bd>8. <sn hh>8 <hh bd>16 bd bd
          
          % Partie D
          hh8.^"D" hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>8 hh
          hh8. hh16 <sn hh>8 hh hh8. hh16 <sn hh>4

        } 
        \\ 
        { 
          s1

          % Partie A
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s

          % Partie B
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s

          % Partie C
          s1 
          s 
          s 
          s

          % Partie A
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          bd4 s bd s
          
          % Partie D
          bd4 s bd s 
          bd s bd s
          bd s bd s
          bd s bd s
          bd s bd s
          bd s bd s
          bd s bd s
          bd s bd s
          
          % Partie C
          s1
          s
          s
          s

          % Partie D
          bd4 s bd s 
          bd s bd s
          bd s bd s
          bd s bd s
        } 

      >>

    } 
  >>
}

