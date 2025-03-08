gg.clearResults()
gg.searchNumber('h 00 00 00 00 64 00 00 00 00 00 00 00',4,false,2^29,base-0xD000,base-0x6000)
local res = gg.getResults(gg.getResultsCount())
if #res<=0 then
  x.r('m4','b[17]_1')
end
gg.clearResults()
gg.searchNumber(('-257~256;'):rep(3)..('-257~~256;'):rep(3)..('-257~~256::25'),4,false,2^29,res[1].address-0x999,res[1].address)
local res = gg.getResults(gg.getResultsCount())
if #res<=0 then
  x.r('m4','b[17]_2')
end
return res[1]
