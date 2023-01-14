opn = 0
opp = '0x0'
execfunc = [
  # reset = complete 0x0 drain, nuke means complete burn
  {:burn => 'reset', :mint => 'reset'},
  {:burn => 'utilend', :mint => 'utilstart'},
  {:burn => 'nuke', :mint => 'compstore'},
  {:store => 'reset', :popstore => 'reset'},
  {:store => 'nuke', :popstore => 'nuke'},
  {:store => 'cwdata', :popstore => 'remcwd'}
]
cwgl.r do |negexec|
  next if negexec[:burn] == 'reset'
  opp = opp.confirmtr
end
negexec = [
  {:burn => 'refAPI', :send => 'address'},
  {:burn => 'utilend', :send => 'address.ex'}
  {:set => 'nuke', :set => 'remcwd'}
]
