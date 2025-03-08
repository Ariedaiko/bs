gg.clearResults()
gg.searchNumber('h E8 03 00 00 10 0E 00 00 E8 03 00 00',4,false,2^29,base-0xD000,base-0x6000)
gg.refineNumber('16',1)
local res = gg.getResults(gg.getResultsCount())
if #res<=0 then
  x.r('m4','b[17]_1')
end
for i = 1, #res do
  gg.clearResults()
  gg.searchNumber(('-257~256;'):rep(3)..('-257~~256;'):rep(3)..('-257~~256::25'),4,false,2^29,res[i].address-0x7ff,res[i].address-0x300)
  v=gg.getResults(gg.getResultsCount())
  if #v >= 1 then
    break
  end
end
if #v<=0 then
  x.r('m4','b[17]_2')
end
return v[1]

