 res←prInit arg
  res←⊂'loaded'
 :Trap
   '/principia/principia_ap'⎕CMD''
 :Else
   res←⊂'error'
 :EndTrap
