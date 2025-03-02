gg.clearResults()
gg.searchNumber('32400',4,false,2^29,base,base+0xffffff)
local v = gg.getResults(1,3)[1].address
gg.clearResults()
gg.searchNumber('-257~256;'..('-257~~256;'):rep(4)..'-257~256::31',4,false,2^29,v,v+0xfff)
gg.refineNumber('-257~~256',4)
if gg.getResultsCount() <= 0 then
  x.r('ms1', 'Ticket1[1]')
end
return gg.getResults(4,gg.getResultsCount()-4)
