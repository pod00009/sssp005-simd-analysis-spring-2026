// Ben Matthews
// 2024/05/02

// File to merge SIMD data with LA Lookup data by Council Area

// load the SIMD data

use "$datapath/simd_series.dta", clear
numlabel _all, add


// Merge the datasets

merge m:1 council_area using "$datapath/la_lookup.dta"

// Save the data

save "$datapath/merged_dataset.dta", replace

