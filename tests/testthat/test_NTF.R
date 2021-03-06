X <- toyModel("CP")

out1_1 <- NTF(X, rank=3, algorithm="Frobenius", num.iter=2)
out1_2 <- NTF(X, rank=3, algorithm="Frobenius", init="ALS", num.iter=2)
out1_3 <- NTF(X, rank=3, algorithm="Frobenius", init="Random", num.iter=2)
out2 <- NTF(X, rank=3, algorithm="KL", num.iter=2)
out3 <- NTF(X, rank=3, algorithm="IS", num.iter=2)
out4 <- NTF(X, rank=3, algorithm="Pearson", num.iter=2)
out5 <- NTF(X, rank=3, algorithm="Hellinger", num.iter=2)
out6 <- NTF(X, rank=3, algorithm="Neyman", num.iter=2)
out7 <- NTF(X, rank=3, algorithm="Alpha", num.iter=2)
out8 <- NTF(X, rank=3, algorithm="Beta", num.iter=2)
out9 <- NTF(X, rank=3, algorithm="HALS", num.iter=2)
out10 <- NTF(X, rank=3, algorithm="Alpha-HALS", num.iter=2)
out11 <- NTF(X, rank=3, algorithm="Beta-HALS", num.iter=2)

expect_equivalent(length(out1_1), 4)
expect_equivalent(length(out1_2), 4)
expect_equivalent(length(out1_3), 4)
expect_equivalent(length(out2), 4)
expect_equivalent(length(out3), 4)
expect_equivalent(length(out4), 4)
expect_equivalent(length(out5), 4)
expect_equivalent(length(out6), 4)
expect_equivalent(length(out7), 4)
expect_equivalent(length(out8), 4)
expect_equivalent(length(out9), 4)
expect_equivalent(length(out10), 4)
expect_equivalent(length(out11), 4)
