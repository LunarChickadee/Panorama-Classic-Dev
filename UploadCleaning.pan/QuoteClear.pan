;QuoteClear
local vFieldName
godesignsheet
field «Field Name»
loop
vFieldName=«Field Name»[2,-2]
«Field Name»=vFieldName
downrecord
until info("stopped")
