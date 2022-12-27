class CproT
  def ALLOC_0
    @ALLOC_0
  end
  def PRT_0
    @PRT_0
  end
  def ALLOC_1
    @ALLOC_1
  end
  def ALLOC_2
    @ALLOC_2
  end
  def PRT_1
    @PRT_1
  end
end
class CcoWTR
  def PERM_BURN
    @PERM_BURN
  end
  def RES_VAL_0
    @RES_VAL_0
  end
end
wicav = CproT.withdraw("#addr","#usn","#pubval")
decav = CproT.deposit("#addr","#usn","#pubval")
wipcav = CcoWTR.==("#pnbval","#pnretval")
