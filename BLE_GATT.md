# BLE GATT (WW-VEST)

Service: UUID_SVC
Characteristics:
- VEST_STATE (notify): mode, battV, skinT, ambT, RH, hotSideT
- VEST_CMD (write): mode:auto|manual, pwm:0-100, fan:0-100
- SENSORS (notify): skinT, ambT, RH
