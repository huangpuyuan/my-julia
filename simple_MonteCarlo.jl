using Statistics
#比较两种模式的快慢,@time用于性能检测
#slower
@time begin
     data = Float64[]
        for i in 1:10^6
           group = Float64[]
               for j in 1:5*10^2
                  push!(group,rand())
               end
           push!(data,mean(group))
        end
        println("98% of the means lite in the estimated range:",
                     (quantile(data,0.01),quantile(data,0.99)))
end;

#faster
@time begin
   data = [mean(rand(5*10^2)) for _ in 1:10^6]
   println("98% of the means lite in the estimated range:",
                  (quantile(data,0.01),quantile(data,0.99))  )
end;
