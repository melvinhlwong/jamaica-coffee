clear
cd "D:\Users\wong\Desktop\jamaica coffee"

import delimited "comtrade_trade_data.csv", clear
gen ln_value = ln(value)
twoway (line ln_value year, sort) if commoditycode==0901 & tradeflowcode==2


gen ln_kg=ln(netweightkg)
twoway (line ln_kg year, sort) if commoditycode==0901 & tradeflowcode==2, xlabel(#15)

twoway (line ln_kg year, sort) if commoditycode==0901 & tradeflowcode==2 & year>=2000
graph export JAM_cof_2000+.pdf
