# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fits a Lorenz regression Use Lorenz.Reg (LorenzRegression) With (In) R Software
install.packages("LorenzRegression")
library("LorenzRegression")
Lorenz.Reg = read.csv("https://raw.githubusercontent.com/timbulwidodostp/Lorenz.Reg/main/Lorenz.Reg/Lorenz.Reg.csv",sep = ";")
# Estimation Fits a Lorenz regression Use Lorenz.Reg (LorenzRegression) With (In) R Software
NPLR <- Lorenz.Reg(Income ~ Sex + Health.level + Age + Work.Hours + Education + Seniority, data = Lorenz.Reg, penalty = "none", popSize = 15)
PLR <- Lorenz.Reg(Income ~ Sex + Health.level + Age + Work.Hours + Education + Seniority, data = Lorenz.Reg, penalty = "SCAD", 
eps = 0.06, grid.arg = "h", grid.value=c(0.5,1,2)*nrow(Lorenz.Reg)^(-1/5.5))
summary(NPLR)
summary(PLR)
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished