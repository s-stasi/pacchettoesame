#' Documentazione completa del file
#'
#' Questo commento integra tutto il contenuto del file fornito, inclusi descrizioni e blocchi di codice non eseguiti.
#'
#' ---
#' title: "ex. cap7"
#' output: html_document
#' date: "2024-12-05"
#' ---
#' 
#' # pag. 211
#' 
#' ## 8.2
#' 
#' I tempi di reazione a uno stimolante per un campione casuale di 9 soggetti sono stati 2.5, 3.6, 3.1, 4.3, 2.9, 2.3, 2.6, 4.1, e 3.4 secondi. Calcolare media e mediana.
#' 
#' 
#' ```R
#' x <- c(2.5, 3.6, 3.1, 4.3, 2.9, 2.3, 2.6, 4.1, 3.4)
#'     x
#'     
#' # media
#'   mean(x)
#'     
#' # mediana
#'   median(x)
#' ```
#' 
#' 
#' ```R
#' x <- c(2, 1, 3, 0, 1, 3, 6, 0, 3, 3, 5, 2, 1, 4, 2)
#'     x
#'     
#' # media
#'   mean(x)
#'     
#' # mediana
#'   median(x)
#'   
#' # moda
#'   table(x)      # moda = 3
#' ```
#' 
#' 
#' ```R
#' x <- c(100, 40, 75, 15, 20, 100, 75, 50, 30, 10, 55, 75, 25, 50, 90, 80, 15, 25, 45, 100)
#'     x
#'     
#' # media
#'   mean(x)
#'   
#' # moda
#'   table(x)        # moda = 75 e 100
#' ```
#' 
#' 
#' ```R
#' x <- c(5, 11, 9, 5, 10, 15, 6, 10, 5, 10)
#'     x
#'     
#' # campo di variazione
#'     range(x)            # 15 - 5 = 10
#'     
#' # deviazione standard
#'     sd(x)
#' ```
#' 
#' 
#' ```R
#' x <- c(3.2, 1.9,	2.7, 2.4, 2.8, 2.9,	3.8, 3.0,	2.5, 3.3, 1.8, 2.5,	3.7, 2.8,	2.0, 3.2, 2.3, 2.1,	2.5, 1.9)
#'     x
#'     
#' # deviazione standard
#'   sd(x)
#' ```
#' 
#' 
#' ```R
#' n = 16
#'   mu = 50
#'   sigma = 5
#'   
#'   int_1 = mu - 1.9*5
#'     int_1
#' 
#'   int_2 = mu - 0.4*5
#'     int_2
#'     
#'     
#'   pnorm(int_2, mu, sigma) - pnorm(int_1, mu, sigma)
#' ```
#' 
#' 
#' ```R
#' # aumenta da 64 a 196
#'   mu = 78.3
#'   sigma = 5.6
#'   n1 = 64
#'   n2 = 196
#'   
#'   var_1 = (sigma^2) / n1
#'     var_1
#'     
#'   var_2 = (sigma^2) / n2
#'     var_2
#'     
#'     
#' # diminuisce da 784 a 49
#'   mu = 78.3
#'   sigma = 5.6
#'   n1 = 784
#'   n2 = 49
#'   
#'   var_1 = (sigma^2) / n1
#'     var_1
#'     
#'   var_2 = (sigma^2) / n2
#'     var_2
#' ```
#' 
#' 
#' ```R
#' x <- c(4, 5, 6, 7)
#'     
#'   p <- c(0.2, 0.4, 0.3, 0.1)
#' 
#'     
#' # media
#'   mu = sum(x * p)
#'     mu
#' 
#' # varianza = E[X^2]-E[X]^2
#'   #E[X^2] = E1
#'   E1 = sum(x^2 * p)
#'     E1
#'     
#'   #E[X^2] = E2
#'   E2 = sum(x * p)^2
#'     E2  
#'   
#'   var = E1 - E2
#'     var
#' ```
#' 
#' 
#' ```R
#' n = 36
#'   mu = 5.3
#'   sigma = 0.81
#' 
#' # media
#'   mu_bar = 5.3      # mu_bar = mu
#'   
#' 
#' # varianza campionaria = sigma^2 / n
#'   sigma2_bar = sigma / 36
#'     sigma2_bar
#' ```
#' 
#' 
#' ```R
#' n = 36
#'   mu_bar = 5.3
#'   sigma2_bar = 0.0225              # varianza
#'   sigma_bar = sqrt(sigma2_bar)     # deviazione
#'     sigma_bar
#' 
#'   x = 5.5
#' 
#'   pnorm(x, mu_bar, sigma_bar)
#' ```
#' 
#' 
#' ```R
#' mu = 7
#'   sigma = 1
#'   n = 9
#'   
#'   x1 = 6.4
#'   x2 = 7.2
#'     
#'   mu_bar = mu
#'   sigma_bar = sigma / sqrt(n)
#'   
#'   pnorm(x2, mu_bar, sigma_bar) - pnorm(x1, mu_bar, sigma_bar)
#' ```
#' 
#' 
#' ```R
#' mu = 7
#'   sigma = 1
#'   n = 9
#'   
#'   x1 = 6.4
#'   x2 = 7.2
#'     
#'   mu_bar = mu
#'   sigma_bar = sigma / sqrt(n)
#'   
#'   p = 0.15
#'   
#'   qnorm(1-p, mu_bar, sigma_bar)        # area a destra = 1-0.15 = 0.85
#' ```
#' 
#' 
#' ```R
#' # 1.
#'   alpha1 = 0.025
#'   v1 = 15
#'   
#'   qchisq(1-alpha1, v1)
#' 
#' # 2.  
#'   alpha2 = 0.01
#'   v2 = 7
#'   
#'   qchisq(1-alpha2, v2)
#'   
#' # 3.  
#'   alpha3 = 0.05
#'   v3 = 24
#'   
#'   qchisq(1-alpha3, v3)
#' ```
#' 
#' 
#' ```R
#' # 1.
#'   alpha1 = 0.99
#'   v1 = 4
#'   
#'   qchisq(1-alpha1, v1)
#' 
#' # 2.  
#'   alpha2 = 0.025
#'   v2 = 19
#'   
#'   qchisq(1-alpha2, v2)
#'   
#' # 3.  
#'   alpha3 = 0.045
#'   v3 = 25
#'   
#'   qchisq(1-alpha3, v3)
#' ```
#' 
#' 
#' ```R
#' # S^2 = varianza campionaria di una popolazione normale --> la statistica ha D.CHI-QUADRO
#'   n = 25
#'   v = 24            # gradi di libertà: n-1 = 25-1 = 24
#'   sigma2 = 6
#'   s2 = 9.1          # varianza campionaria
#'   
#'   chi2 = (s2*(n-1)) / sigma2        #trasformazione in chi-quadro
#'   
#'   1 - pchisq(chi2, v)
#' ```
#' 
#' 
#' ```R
#' # D.CHI-QUADRO
#'   n = 25
#'   v = 24            # gradi di libertà
#'   sigma2 = 6
#'   s2_min = 3.462        
#'   s2_max = 10.745  
#' 
#'   chi2_min = (s2_min*(n-1)) / sigma2        #trasformazione in chi-quadro
#'   chi2_max = (s2_max*(n-1)) / sigma2        #trasformazione in chi-quadro
#'   
#'   pchisq(chi2_max, v) - pchisq(chi2_min, v)
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d.normale Z
#' # trovare n (dimensione campione)
#'   sigma = 5.8
#'   alpha = 1-0.99
#'   me = 2
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   n = (z_a2 * sigma / me)^2
#'     n
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d.normale Z
#' # trovare IC
#'   sigma = 0.0015
#'   alpha = 1-0.95
#'   n = 75
#'   xbar = 0.310
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = xbar - z_a2 * sigma / sqrt(n)
#'   upper = xbar + z_a2 * sigma / sqrt(n)
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d.normale Z
#' # trovare IC
#'   n = 100
#'   xbar = 23500
#'   sigma = 3900
#'   alpha = 1-0.99
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = xbar - z_a2 * sigma / sqrt(n)
#'   upper = xbar + z_a2 * sigma / sqrt(n)
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d.normale Z
#' # trovare errore
#'   n = 100
#'   xbar = 23500
#'   sigma = 3900
#'   alpha = 1-0.99
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   me = z_a2 * sigma / sqrt(n)
#'     me
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d.normale Z
#' # trovare IC
#'   n = 20
#'   xbar = 11.3
#'   sigma = 2.45
#'   alpha = 1-0.95
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = xbar - z_a2 * sigma / sqrt(n)
#'   upper = xbar + z_a2 * sigma / sqrt(n)
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza ignota --> d. T-student
#' # trovare IC
#'   diametro <- c(1.01, 0.97, 1.03, 1.04, 0.99, 0.98, 0.99, 1.01, 1.03)
#'   
#'   n = length(diametro)
#'   xbar = mean(diametro)
#'   sigma = sd(diametro)
#'   alpha = 1-0.99
#'   v = n-1
#'   
#'   t_a2 = qt(1-alpha/2, v)
#'   
#'   lower = xbar - t_a2 * sigma / sqrt(n)
#'   upper = xbar + t_a2 * sigma / sqrt(n)
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota --> d. normale Z
#' # trovare IC
#'   n = 12
#'   xbar = 48.50
#'   sigma = 1.5
#'   alpha = 1-0.90
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = xbar - z_a2 * sigma / sqrt(n)
#'   upper = xbar + z_a2 * sigma / sqrt(n)
#'   
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la MEDIA: varianza nota, ma per il calcolo del quantile si usa d. T-student
#' # trovare IC
#'   n = 25
#'   xbar = 325.05
#'   sigma = 0.5
#'   alpha = 1-0.95
#'   p = 0.90
#'   v = n-1
#'   
#'   t_a2 = qt(1-alpha/2, v)
#'   
#'   lower = xbar - t_a2 * sigma
#'   upper = xbar + t_a2 * sigma
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # metodo IQR: calcolare quartili, determinare i limiti, verifica se il 16-esimo valore supera i limiti
#'   tempi <- c(3.4, 2.5, 4.8, 2.9, 3.6, 2.8, 3.3, 5.6, 3.7, 2.8, 4.4, 4.0, 5.2, 3.0, 4.8)
#'   
#' # quartili
#'   Q1 = quantile(tempi, 0.25)
#'   Q3 = quantile(tempi, 0.75)
#'   
#'   IQR = Q3 - Q1
#' 
#' # limiti
#'   lower = Q1 - 1.5 * IQR
#'   upper = Q3 + 1.5 * IQR
#' 
#'   IC <- c(lower, upper)
#'     IC
#'     
#' # veririca
#'   outlier <- 6.9 > upper | 6.9 < lower
#'     outlier                               # è un outlier perchè non è compreso nell'IC
#' ```
#' 
#' 
#' ```R
#' # IC per la PROPORZIONE: d.normale Z
#' # trovare IC
#'   n = 1000
#'   x = 228
#'   alpha = 1-0.99
#'   
#'   p = x/n
#'   
#'   sigma_p = sqrt(p*(1-p)/n)
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = p - z_a2 * sigma_p
#'   upper = p + z_a2 * sigma_p
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la PROPORZIONE: d.normale Z
#' # trovare IC
#'   n = 200
#'   x = 114
#'   p = x/n
#'   alpha = 1-0.96
#'   
#'   sigma_p = sqrt(p*(1-p)/n)
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = p - z_a2 * sigma_p
#'   upper = p + z_a2 * sigma_p
#'   
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' n = 200
#'   x = 114
#'   p = 0.57
#'   alpha = 1-0.96
#'   
#'   sigma_p = sqrt(p*(1-p)/n)
#'   
#'   z_a2 = qnorm(1-alpha/2)
#' 
#'   me = z_a2 * sigma_p
#'     me
#' ```
#' 
#' 
#' ```R
#' # IC per la PROPORZIONE: d.normale Z
#' # trovare IC
#'   n = 40
#'   x = 34
#'   p = x/n
#'   alpha = 1-0.95
#'   
#'   sigma_p = sqrt(p*(1-p)/n)
#'   
#'   z_a2 = qnorm(1-alpha/2)
#'   
#'   lower = p - z_a2 * sigma_p
#'   upper = p + z_a2 * sigma_p
#'   
#'   IC <- c(lower, upper)
#'     IC
#'     
#' # sistema è migliore? --> paragone IC
#'   # sistema esistente con p = 0.8
#'   n1 = 40
#'   x1 = 34
#'   p1 = 0.8
#'   alpha1 = 1-0.95
#'   
#'   sigma_p1 = sqrt(p1*(1-p1)/n1)
#'   
#'   z_a2.1 = qnorm(1-alpha1/2)
#'   
#'   lower1 = p1 - z_a2.1 * sigma_p1
#'   upper1 = p1 + z_a2.1 * sigma_p1
#'   
#'   IC1 <- c(lower1, upper1)
#'     IC1
#' 
#'   # IC sistema 2 già trovato  
#'     
#'   # p = 0.8 è incluso nell'intervallo, quindi non è significativamente migliore
#' ```
#' 
#' 
#' ```R
#' # IC per la VARIANZA: d.chi-quadro 
#' # trovare IC
#'   durata <- c(1.9, 2.4, 3.0, 3.5, 4.2)
#'   n = 5
#'   v = n-1
#'   s2 = var(durata)
#'   alpha = 1-0.95
#'   
#'   chi2_lower = qchisq(1-alpha/2, v)
#'   chi2_upper = qchisq(alpha/2, v)
#'   
#'   lower = (s2 * (n-1)) / chi2_lower
#'   upper = (s2 * (n-1)) / chi2_upper
#'   
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # IC per la VARIANZA: d.chi-quadro 
#' # trovare IC
#'   n = 10
#'   v = n-1
#'   xbar = 230
#'   s2 = 15^2
#'   alpha = 1-0.99
#'   
#'   chi2_lower = qchisq(1-alpha/2, v)
#'   chi2_upper = qchisq(alpha/2, v)
#'   
#'   lower = (s2 * (n-1)) / chi2_lower
#'   upper = (s2 * (n-1)) / chi2_upper
#' 
#'   IC <- c(lower, upper)
#'     IC
#' ```
#' 
#' 
#' ```R
#' # H0 : p0 = 0.6
#' # H1 : p < 0.6
#' 
#' # errore I : rifiutare H0 quando è vera
#' 
#'   p0 = 0.6
#'   n = 50
#'   x_crit = 24       # approssimazione 0.05
#'   
#'   z = (24.5 - p0 * n) / sqrt(n * p0 * (1-p0))
#' 
#'   pnorm(z)
#' ```
#' 
#' 
#' ```R
#' p2 <- c(0.3, 0.4, 0.5)
#'   z2 <- (24.5 - p2 * n) / sqrt(n * p2 * (1-p2))
#' 
#'   1 - pnorm(z2)
#' ```
#' 
#' 
#' ```R
#' p0 = 0.6
#'   n = 200
#'   x_min = 110
#'   x_max = 130
#'   
#'   mu0 = n * p0
#'   sigma0 = sqrt(mu0 * (1-p0))
#'   
#'   alpha = pnorm(x_min - 0.5, mu0, sigma0) + (1 - pnorm(x_max + 0.5, mu0, sigma0)) 
#'     alpha
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza nota (Z)
#' # errore I
#'   mu = 200
#'   sigma = 15
#'   n = 9
#'   xbar1 = 191
#'   xbar2 = 209
#'   
#'   z_1 = (xbar1 - mu) / (sigma/sqrt(n))
#'   z_2 = (xbar2 - mu) / (sigma/sqrt(n))
#'   
#'   eI = pnorm(z_1) + (1-pnorm(z_2)) 
#'     eI
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza nota
#' # errore II
#'   mu = 215
#'   sigma = 15
#'   n = 9
#'   xbar1 = 191
#'   xbar2 = 209
#'   
#'   z_1 = (xbar1 - mu) / (sigma/sqrt(n))
#'   z_2 = (xbar2 - mu) / (sigma/sqrt(n))
#'   
#'   eII = pnorm(z_2) - pnorm(z_1)
#'     eII
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza nota (Z)
#'   n = 64 
#'   mu = 32
#'   mu0 = 40
#'   xbar = 38
#'   sigma = 5.8
#'   
#'   z = (xbar-mu0) / (sigma/sqrt(n))
#'     z
#'   
#'   pnorm(z)
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza nota (Z)
#'   mu0 = 800
#'   sigma = 40
#'   n = 30
#'   xbar = 788
#'   
#'   z = (xbar - mu0) / (sigma/sqrt(n))
#'     z
#'   
#'   pvalue = 2*pnorm(z)       # moltiplico per 2 perchè il test è bilaterale
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza ignota (t-student)
#'   mu0 = 10
#'   n = 10
#'   contenuto <- c(10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8)
#'   
#'   s = sd(contenuto)
#'   xbar = mean(contenuto)
#'   
#'   t = (xbar-mu0) / (s/sqrt(n))
#'     t
#'   
#'   # si rifiuta H0 se pvalue < alpha    
#'   alpha = 0.01
#'   v = n-1
#'   
#'   pvalue = 2 * pt(-t, v)
#'     pvalue                    # non rifiuto H0
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza nota (Z)
#'   mu0 = 20000
#'   n = 100
#'   xbar = 23500
#'   sigma = 3900
#'   
#'   z = (xbar - mu0) / (sigma/sqrt(n))
#'     z
#'   
#'   v = n-1
#'   pvalue = 2*pt(-z, v)
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA di 2 CAMPIONI INDIPEDENTI, varianze uguali
#'   n1 = 30
#'   n2 = 30
#'   xbar1 = 34
#'   xbar2 = 0
#'   s1 = 10.5
#'   s2 = 10.2
#'   
#'   # deviazione standard combinata
#'   s12 = sqrt((s1^2*(n1-1) + s2^2*(n2-1)) / (n1+n2-2))
#'   
#'   t = (xbar1 - xbar2) / (s12 * sqrt(1/n1+1/n2))
#'     t
#'   
#'   v = n1+n2-2
#'   pvalue = pt(-t, v)
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA, varianza ignota
#'   mu0 = 35
#'   n = 20
#'   xbar = 33.1
#'   s = 4.3
#'   alpha = 0.05
#' 
#'   t = (xbar-mu0) / (s/sqrt(n))
#'     t
#' 
#'   v = n-1
#'   pvalue = pt(t, v)
#'     pvalue
#' 
#'   # rifiuto H0 perchè pvalue < alpha
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la MEDIA di 2 CAMPIONI INDIPENDENTI, varianze ignote diverse
#'   d = 12
#'   nA = 50
#'   nB = 50
#'   xbarA = 86.7
#'   xbarB = 77.8
#'   sA = 6.28
#'   sB = 5.61
#'   alpha = 0.05
#'   
#'   sAB = sqrt( (sA^2 * (nA-1) + sB^2 * (nB-1)) / (nA+nB-2) )
#'   
#'   t = ((xbarA - xbarB) - d) / (sAB * sqrt(1/nA+1/nA))
#'     t
#'   
#'   v = nA + nB - 2
#'   pvalue = pt(t, v)
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # dimensione campionaria per la MEDIA
#' 
#'   mu0 = 5.23
#'   mu1 = 5.20
#'   delta = mu0-mu1
#'   sigma = 0.24
#'   beta = 1-0.90
#'   alpha = 0.05
#'   
#'   z_a2 = qnorm(alpha/2)
#'   z_b = qnorm(beta)
#'   
#'   n = (z_a2 + z_b)^2 * sigma^2 / delta^2
#'     n
#' ```
#' 
#' 
#' ```R
#' # dimensione campionaria sulla MEDIA
#'   mu = 162.5
#'   sigma = 6.9
#'   beta = 1-0.95
#'   delta = 3.1
#'   alpha = 0.02
#'   
#'   # se non è specificato il test, si considera bilaterale
#'   z_a2 = qnorm(alpha/2)
#'   z_b = qnorm(beta)
#'   
#'   n = (z_a2 + z_b)^2 * sigma^2 / delta^2
#'     n
#' ```
#' 
#' 
#' ```R
#' # dimensione campionaria sulla MEDIA
#'   mu0 = 8.5
#'   delta = 1.2 * sigma
#'   sigma = 2.25
#'   beta = 1-0.8
#'   alpha = 0.05
#'   
#'   # se non è specificato il test, si considera bilaterale
#'   z_a2 = qnorm(alpha/2)
#'   z_b = qnorm(beta)
#'   
#'   n = (z_a2 + z_b)^2 * sigma^2 / delta^2
#'     n
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la PROPORZIONE (Z)
#'   p0 = 0.40
#'   n = 20
#'   x = 9
#'   p = x/n
#'   
#'   sigmap = sqrt((p0*(1-p0)) / n)
#'   
#'   z = (p-p0) / sigmap
#'     z
#'   
#'   alpha = 0.05
#'   pvalue = 
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la PROPORZIONE (Z)
#'   n = 300
#'   x = 250
#'   p = x/n
#'   alpha = 0.04
#'   p0 = 0.8
#'   
#'   sigmap = sqrt((p0*(1-p0)) / n)
#'   
#'   z = (p-p0) / sigmap
#'     z
#'   
#'   
#'   pvalue = qnorm(1-alpha)
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi per la PROPORZIONE (Z)
#'   p0 = 1/5
#'   n = 1000
#'   x = 136
#'   p = x/n
#'   
#'   sigmap = sqrt((p0*(1-p0)) / n)
#'   
#'   z = (p-p0) / sigmap
#'     z
#'   
#'   
#'   pvalue = 1-pnorm(z)
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi della VARIANZA
#'   x <- c(10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8)
#'   
#'   sigma0 = 0.03
#'   n = 10
#'   s2 = var(x)
#'   
#'   chi2 = (s2*(n-1)) / sigma0
#'     chi2
#'     
#'   
#'   v = n -1   
#'   pvalue = 2 * (1-pchisq(chi2, v))
#'     pvalue
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi della VARIANZA
#'   n = 64
#'   mu = 24.17
#'   sigma0 = 4.2
#'   s2 = 4.25
#'   
#'   chi2 = (s2 * (n-1)) / sigma0
#'     chi2
#'   
#'   v = n - 1
#'   pvalue = 2 * (1 - pchisq(chi2, v))
#'     pvalue     
#'     
#'   # non rifiuto H0
#' ```
#' 
#' 
#' ```R
#' # verifica di ipotesi della VARIANZA
#'   sigma0 = 1.15
#'   n = 25
#'   s2 = 2.03
#'   alpha = 0.05
#'   
#'   chi2 = (s2 * (n-1)) / sigma0
#'     chi2
#'   
#'   v = n - 1
#'   pvalue = 1 - pchisq(chi2, v)
#'     pvalue     
#'     
#'   # rifiuto H0 perchè pvalue < alpha
#' ```
#'
#' @param data Il parametro che viene passato alla funzione di esempio.
#' @return Una struttura dipendente dal comportamento della funzione implementata.
#' @examples
#' # Inserisci qui un esempio dell'uso della funzione.
#' @export
la_tua_funzione <- function(data) {
  # Implementazione della funzione
  return(NULL)
}
