# Julia_ABC
> qiu

## 换源
```julia
using Pkg
Pkg.add("JuliaZH")
using JuliaZH
JuliaZH.generate_startup("USTC")
```

## 装包
```julia
Pkg.add("Distributions")
Pkg.add("Distributed")
Pkg.add("CodecBzip2")
Pkg.add("SpecialFunctions")
Pkg.add("ProgressMeter")
Pkg.add("SharedArrays")
Pkg.add("Random")
Pkg.add("DataFrames")
Pkg.add("FreqTables")
Pkg.add("SparseArrays")
Pkg.add("MatrixMarket")
Pkg.add("StatsBase")
Pkg.add("GSL")
Pkg.add("LinearAlgebra")
Pkg.add("KernelDensity")
Pkg.add("Distances")
```
## 在原仓库上的修改
### 1. `runtest.jl`
- 在最前面添加
```julia
push!(LOAD_PATH, "../src")
println(LOAD_PATH)
```
- 取消掉`outt=Julia_ABC.ABC_BP_v2(Data=Daa,BETA_vec=Bea, mode_allele=true, particles=1000,threshold_on_distance=0.95,verbose=false)`的注释

### 2. `Julia_ABC.jl`
- 添加一条导包语句`using Distributions`

### 3. `ABC_BP_v2.jl`

- 如果`DataFrame`版本>=1.3（Julia版本>1.6），
    - 将425行`DataFrame(store_dat_all_median_3)`修改为`DataFrame(store_dat_all_median_3,:auto)`
    - 将568行`DataFrame(store_dat_all_median_3)`修改为`DataFrame(store_dat_all_median_3,:auto)`

## 运行
**先进入test目录**（通过命令`cd test`），然后运行`runtest.jl`。