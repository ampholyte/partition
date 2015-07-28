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
    title = "Dust N' Bones Drum"
    composer = "Guns N' Roses - arr. Ampholyte"
  }

  \paper {
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'header:"Dust N' Bones - Dust N' Bones - arr. Ampholyte"
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
      % Permet de separer les croches par groupe de 2 
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \drummode 
      { 
        << 
          \tempo 4 = 140 
          {
            bd4 hho r hho  
            bd4 hho r hho  
            bd4 hho r hho  
            bd4 hho r hho  
            bd4 hho r hho 
            bd4 hho r <tommh toml>

            % Mesure 7
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn> 
            <hho bd>4 <hho sn> hho <hho sn> 
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8 
            <hho bd>4 <hho sn> hho <hho sn> 
            <hho bd>4 <hho sn> hho <hho sn> 
            <hho bd>4 <hho sn> hho <hho sn> 
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn sn sn sn

            % Mesure 15 
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8 
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn toml toml toml
           
            % Mesure 23
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho \slashedGrace sn8 sn4

            % Mesure 27
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <cymc sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>

            % Mesure 31
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <cymc sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>

            % Mesure 35
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> hho sn16 sn \slashedGrace sn8 sn8 
            <cymc bd>4 <hho sn> hho <hho sn>

            % Mesure 39
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            cymr4 <cymr sn>8 bd cymr4 <cymr sn>8 bd
            cymr4 tomh16 tomh tomh8 tommh16 tommh tommh8 toml16 toml toml8 

            % Mesure 43 
            <cymc bd>4 hho r hho8 bd
            <cymc bd>4 hho r \slashedGrace sn8 sn4
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8 
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn sn sn sn

            % Mesure 53
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8 
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn toml toml toml

            % Mesure 61
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8
            <hho bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <cymc sn>
       
            % Mesure 67
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <cymc sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            
            % Mesure 73
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> hho sn16 sn sn sn
            <cymc bd>4 <hho sn> hho <hho sn>
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            cymr4 <cymr sn> cymr <cymr sn>8 bd

            % Mesure 79
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            cymr4 tomh16 tomh tomh8 tommh16 tommh tommh8 toml16 toml toml8
            <cymc bd>4 hho r hho8 bd
            bd4 hho r hho

            bd4 hho r hho8 bd
            bd4 hho r hho
            bd4 hho r hho8 bd
            bd4 hho r hho

            % Mesure 87
            bd4 hho r hho8 bd
            sn16 sn sn sn sn sn sn sn tommh tommh tommh tommh toml toml toml toml
            <cymc bd>4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn>8 <cymc bd>4 bd8 <cymr sn>4
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn>8 <cymc bd>4 bd8 <cymr sn>4

            % Mesure 93
            cymr4 <cymr sn> cymr <cymr sn>
            <cymr bd>8. sn16 sn8 <cymc bd>4 bd8 <cymr sn>4
            cymr4 <cymr sn> cymr <cymr sn>
            <cymr bd>8. sn16 sn8 <cymc bd>4 bd8 <cymr sn>8 <cymc sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn>8 bd bd cymr bd <cymr sn>

            % Mesure 99
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn>8 <cymc bd>4 bd8 <cymr sn>4
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn>8 bd bd cymr bd <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            \time 2/4 <cymr bd>8. sn16 sn4

            % Mesure 105
            \time 4/4
            <cymc bd>4 hho r hho8 bd
            bd4 hho r <tommh toml>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8 

            % Mesure 111 
            bd4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn sn sn sn
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
           
            % Mesure 117
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>8 \slashedGrace sn8 sn8
            bd4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn toml toml toml

            % Mesure 123
            <cymc bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn sn sn sn
            <cymc bd>4 <hho sn> <cymc bd> <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> <hho bd>8. sn16 sn toml toml toml

            % Mesure 129
            <cymc bd>4 <cymc sn> hho <hho sn>
            <hho bd>4 <hho sn> hho <hho sn>
            <cymc bd>4 <hho sn> hho <hho sn>
            <hho bd>4 <hho sn> sn16 sn sn sn sn sn sn sn
            cymc4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymc sn>

            % Mesure 135
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymc sn>
            cymc4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymc sn>
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymr sn>8 <cymc sn>8

            % Mesure 141
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymc sn>
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> cymr <cymc sn>

            % Mesure 147
            cymr4 <cymr sn> cymr <cymr sn>8 bd
            <cymr bd>4 <cymr sn> bd8 sn16 sn sn sn sn sn
            cymc4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>
            cymr4 <cymr sn> cymr <cymr sn>

            % Mesure 153
            <cymc bd>8. sn16 sn sn sn sn <cymc bd>8. sn16 sn sn sn sn
            <cymc bd>8 sn16 sn sn sn sn sn tommh tommh tommh tommh toml toml toml toml
            <cymc bd>1
            r2. r8. sn16
            sn16 tommh8. sn16 sn tommh8~ tommh4. sn16 sn
            sn16 sn sn sn tommh tommh tommh tommh toml toml toml toml sn sn sn sn
            <cymc bd>1  \bar "|."
             
          } 
          \\ 
          { 
            s1 
            s1 
            s1
            s1 
            s1 
            s1

            % Mesure 7
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s1
           
            % Mesure 15 
            s2 bd8 bd s4 
            s1 
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s1

            % Mesure 23
            s2 bd8 bd s4
            s1
            s2 bd8 bd s4
            s2 bd8 bd s4

            % Mesure 27
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4

            % Mesure 31
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4

            % Mesure 35
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            
            % Mesure 39
            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.

            % Mesure 43 
            s1 
            s1
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s1

            % Mesure 53
            s2 bd8 bd s4 
            s1
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s1

            % Mesure 61
            s2 bd8 bd s4 
            s1
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 

            % Mesure 67
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4 

            % Mesure 73
            s2 bd8 bd s4 
            s2 bd8 bd s4 
            s2 bd8 bd s4
            s2 bd8 bd s4
            bd8 bd s4 bd8 bd s4
            bd8 bd s4 bd8 bd s4

            % Mesure 79
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.
            s1 
            s1
            s1
            s1
            s1
            s1

            % Mesure 85
            s1
            s1
            s2 bd8 bd s4
            bd8 bd s2.
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.

            % Mesure 93
            bd8 bd s4 bd8 bd s4
            s1
            bd8 bd s4 bd8 bd s4
            s1
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.

            % Mesure 99
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.
            bd8 bd s4 bd8 bd s4
            bd8 bd s2.
            bd8 bd s4 bd8 bd s4
            \time 2/4 s2
            
            % Mesure 105
            \time 4/4
            s1
            s1
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            
            % Mesure 111
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s1
            s2 bd8 bd s4
            s1

            % Mesure 117
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s1
           
            % Mesure 123
            s2 bd8 bd s4
            s1
            s1
            s1
            s2 bd8 bd s4
            s1

            % Mesure 129
            s2 bd8 bd s4
            s2 bd8 bd s4
            s2 bd8 bd s4
            s1 
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4

            % Mesure 135
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4
         
            % Mesure 141
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            s2 bd8 bd s4

            % Mesure 147
            bd8 bd8 s4 bd8 bd s4
            s1
            bd8 bd8 s4 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4
            bd8 bd8 s4 bd8 bd s4

            % Mesure 153
            s1
            s1
            s1
            s1  
            s1
            s1
            s1  \bar "|."
          } 

        >>

      } 
    >>

  }
