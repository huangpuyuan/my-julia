#掷两个骰子的概率，a骰子和b骰子之和为偶数的概率
N, faces = 10^6 , 1:6

#概率计算 iseven()判断偶数的函数返回true
numSol = sum([iseven(i+j) for i in faces, j in faces])/ length(faces)^2
#随机模拟试验
mcEst = sum([iseven(rand(faces)+rand(faces)) for i in 1:N])/N

println("Numrical solution = $numSol \nMonte Carlo estime = $mcEst")
