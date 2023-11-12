# 添加加载路径
push!(LOAD_PATH, "../src")
println(LOAD_PATH)

# 载入包
using Julia_ABC
using Test

@testset "Getopt" begin
    Daa=[1:10 1:10 3:12 4:13] 
    Bea=[0.1,0.5,0.3,0.4]
    outt=Julia_ABC.ABC_BP_v2(Data=Daa,BETA_vec=Bea, mode_allele=true, particles=1000,threshold_on_distance=0.95,verbose=false)
    outt=Julia_ABC.MomentInference_allele(Data=Daa,BETA_vec=Bea)
	@test size(outt) ==(10,3)
end