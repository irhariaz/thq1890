IR <- function  (C,F,y,n) #use IR as input for (Total Coupon, Face Value, half yearly interest, final Payment )
  {
  i <- c(1:n) #matrix for [interest payment 1, Intrest payment 2, ..., Interest payment n]
  TR = (sum(C*exp(-y*i))) + (F*exp(-y[n]*n)) #Bond price
  return(TR)     
}

#input 

M <- c(0.07,0.09,0.03, 0.04) #for half yearly payments, and M[] value of interest at that point
IR(4000, 6000, M, 4) #input c,f,y,n

