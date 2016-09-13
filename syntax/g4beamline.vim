if exists("b:current_syntax")
    finish
endif

syntax region g4beamlineComment start="^\s*#" skip="\\$" end="$" keepend

" BUG: this line matches lines begins with " *" but not "*" (notice the
" space character). Need further investigation.
syntax match g4beamlineComment /^\s*\*.*$/

syntax keyword g4beamlineConditional if endif

syntax keyword g4beamlineRepeat do enddo
syntax keyword g4beamlineRepeat for endfor

" The help command
syntax keyword g4beamlineStatement help man

" Program control commands
syntax keyword g4beamlineStatement define
syntax keyword g4beamlineStatement group endgroup
syntax keyword g4beamlineStatement exit g4ui geometry
syntax keyword g4beamlineStatement include list output param
syntax keyword g4beamlineStatement randomseed showmaterial trackermode tune

" Centerline layout commands
syntax keyword g4beamlineStatement corner cornerarc start

" Beam definition commands
syntax keyword g4beamlineStatement beam cosmicraybeam
syntax keyword g4beamlineStatement particlesource reference

" Auxiliary definition commands
syntax keyword g4beamlineStatement material particlecolor trackcolor

" Beamline element definition commands
syntax keyword g4beamlineStatement absorber boolean box coil sylinder
syntax keyword g4beamlineStatement extrusion fieldexpr fieldmap
syntax keyword g4beamlineStatement genericbend genericquad
syntax keyword g4beamlineStatement helicaldipole helicalharmonic
syntax keyword g4beamlineStatement idealsectorbend lilens
syntax keyword g4beamlineStatement multipole
syntax keyword g4beamlineStatement particlefilter pillbox polycone
syntax keyword g4beamlineStatement rfdevice solenoid sphere
syntax keyword g4beamlineStatement tess tessellatedsolid torus
syntax keyword g4beamlineStatement trap tube tubs

" The place command
syntax keyword g4beamlineStatement place

" Track and Event cuts
syntax keyword g4beamlineStatement eventcuts trackcuts

" Data output commands
syntax keyword g4beamlineStatement beamlossntuple detector fieldtuple
syntax keyword g4beamlineStatement newparticlentuple ntuple printf
syntax keyword g4beamlineStatement printfield probefield profile
syntax keyword g4beamlineStatement timentuple totalenergy trace tracker
syntax keyword g4beamlineStatement trackerplan usertrackfilter
syntax keyword g4beamlineStatement virtualdetector zntuple

" Physics commands
syntax keyword g4beamlineStatement bug1021 emfactor muminuscapturefix
syntax keyword g4beamlineStatement physics reweightprocess setdecay
syntax keyword g4beamlineStatement spacecharge spacechargelw

" Other commands
syntax keyword g4beamlineStatement collective demo fieldlines label
syntax keyword g4beamlineStatement movie survey test

syntax match g4beamlineIdentifier "$\h\w*"

syntax match g4beamlineOperator "\v\*"
syntax match g4beamlineOperator "\v\/"
syntax match g4beamlineOperator "\v\+"
syntax match g4beamlineOperator "\v\-"
syntax match g4beamlineOperator "\v\="
syntax match g4beamlineOperator "\v\<"
syntax match g4beamlineOperator "\v\<\="
syntax match g4beamlineOperator "\v\>"
syntax match g4beamlineOperator "\v\>\="
syntax match g4beamlineOperator "\v\=\="
syntax match g4beamlineOperator "\v\!\="
syntax match g4beamlineOperator "\v\|\|"
syntax match g4beamlineOperator "\v\&\&"
syntax match g4beamlineOperator "\v\("
syntax match g4beamlineOperator "\v\)"


syntax keyword g4beamlineConstant pi e gamma radian rad degree, deg

syntax match g4beamlineSpecial "\\$"

highlight def link g4beamlineComment Comment
highlight def link g4beamlineConditional Conditional
highlight def link g4beamlineRepeat Repeat
highlight def link g4beamlineStatement Statement
highlight def link g4beamlineIdentifier Identifier
highlight def link g4beamlineOperator Operator
highlight def link g4beamlineConstant Constant
highlight def link g4beamlineSpecial Special

let b:current_syntax = "g4beamline"
