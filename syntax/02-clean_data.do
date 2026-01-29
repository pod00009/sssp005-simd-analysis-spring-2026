// Sally Shaw
// 2024/05/02

// File to convert division, council area, region to factor variables

// load the merged data

use "$datapath/merged_dataset.dta", clear
numlabel _all, add


// convert to factor

encode division, gen(division_f)
encode council_area, gen(council_area_f)
encode region, gen(region_f)


save "$datapath/clean_dataset.dta", replace


