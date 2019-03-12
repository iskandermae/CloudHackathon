 res←truCalcLendingCurVal arg;__rargshape;accint;curval;curvalqc;margininitpct;mipct;quocur;usehaircut;xs;curvalcloud
⍝V: V=4, R=ANI-20150617-12:29, C=BRJ-20071207-13:37, M=FNSTRANS(mTRU_CALC)
⍝0: Calculates current value, taking margin/haircut into account.
⍝3: arg[1] : margininitpct As vtDOUBLE|vtNULL
⍝3:    [2] : usehaircut    As vtBOOL
⍝3:    [3] : curvalqc      As vtDOUBLE|vtNULL
⍝3:    [4] : quocur        As vtUINT
⍝3:    [5] : accint        As vtDOUBLE
⍝4: res[1] : xs            As vtXS
⍝4:    [2] : curval        As vtDOUBLE

 margininitpct usehaircut curvalqc quocur accint←arg
 xs←0

⍝_________________________________________________________
⍝ ... If haircut/init margin is empty interpret it as 100.
⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 :If 0∊margininitpct
    mipct←100
 :Else
    mipct←margininitpct
 :EndIf

⍝______________________________________
⍝ ... Use hair cut or inital margin pct
⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
 :If usehaircut

    ⍝________________________________________________
    ⍝ ... Calculate pct as haircut pct: value×100/pct
    ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
    curval←((curvalqc+accint)×(100 xDivr mipct))
 :Else

    ⍝____________________________________________________
    ⍝ ... Calculate pct as init margin pct: value×pct/100
    ⍝¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
    curval←((curvalqc+accint)×(mipct xDivr 100))
 :EndIf

End:
 res←xs curval
