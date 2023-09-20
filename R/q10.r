tp <- readline(prompt = "input total paise : ")
tp <- as.integer(tp)

rs <- tp/100
rs <- as.integer(rs)
ep <- tp %% 100

print(paste("total money is :",tp))
print(paste("ruppes", rs, "and paise" , ep))








