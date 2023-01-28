import partition_core

var p = partition_core.Partition()
p.slots = []

var part = partition_core.Partition_info()
part.type = 1       # data
part.subtype = 2        # nvs
part.start = 0x009000
part.sz    = 0x005000
part.label = 'nvs'
part.flags = 0
p.slots.push(part)

part = partition_core.Partition_info()
part.type = 1       # data
part.subtype = 0        # otadata
part.start = 0x00E000
part.sz    = 0x002000
part.label = 'otadata'
part.flags = 0
p.slots.push(part)

part = partition_core.Partition_info()
part.type = 0       # app
part.subtype = 16   # ota_0
part.start = 0x010000
part.sz    = 0x180000
part.label = 'appart'
part.flags = 0
p.slots.push(part)

part = partition_core.Partition_info()
part.type = 0       # app
part.subtype = 17   # ota_1
part.start = 0x200000
part.sz    = 0x180000
part.label = 'app1'
part.flags = 0
p.slots.push(part)

part = partition_core.Partition_info()
part.type = 1       # data
part.subtype = 130  # spiffs
part.start = 0x380000
part.sz    = 0x070000
part.label = 'spiffs'
part.flags = 0
p.slots.push(part)

p.otadata.has_factory = true
p.otadata.offset = 0xE000
p.otadata.set_ota_max(1)
p.otadata.set_active(0)

# if you're happy
p.save()
