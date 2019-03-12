 r←y xDivr x
⍝V: V=12, R=KVM-20151119-17:22, M=FNSMAIN(mXFNS_ADVANCED)
⍝0: Division which is resistent to zero in the denominator.
⍝2: y As vtDOUBLE|vtDOUBLE[]|vtDOUBLE[;]                   : scalar or conformable numeric array
⍝3: x As vtDOUBLE|vtDOUBLE[$2:y:1]|vtDOUBLE[$2:y:1;$2:y:2] : scalar or conformable numeric array
⍝4: r As vtDOUBLE|vtDOUBLE[$2:y:1]|vtDOUBLE[$2:y:1;$2:y:2] : numeric array
⍝5: AFC: RC{($2:y:0,$3:x:0,$4:r:0)|($2:y:1,$3:x:1,$4:r:1)|($2:y:0,$3:x:1,$4:r:1)|($2:y:1,$3:x:0,$4:r:1)|($2:y:2,$3:x:2,$4:r:2)|($2:y:0,$3:x:2,$4:r:2)|($2:y:2,$3:x:0,$4:r:2)}
⍝5: FST: StaticTypeChk
 ⎕SHADOW'⎕DIV'
 ⎕DIV←1
 r←y÷x
