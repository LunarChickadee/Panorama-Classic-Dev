local counter, DescArrayLength
DescArrayLength=arraysize(DescArray,¶)
counter=1

loop
counter=counter+1
if array(DescArray,counter,¶) contains lower(PlainTextName)
PriceFileMatchDesc=PriceFileMatchDesc+array(DescArray,counter,¶)+¶
endif
if counter=DescArrayLength
downRecord
counter=1
endif
until info("stopped")