#'
#' ---
#'   title: "Stima"
#' author: ""
#' date: "2024-11-11"
#' output: html_document
#' editor_options:
#'   markdown:
#'   wrap: 72
#' ---
#'
#'   ```{r setup, include=FALSE}
#' knitr::opts_chunk$set(echo = TRUE)
#' ```
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
#'  ## 8.3
#'  Il numero di risposte sbagliate in un test con risposta vero-falso che misura le competenze per un campione casuale di 15 studenti sono: 2, 1, 3, 0, 1, 3, 6, 0, 3, 3, 5, 2, 1, 4, e 2. Trovare media, mediana e moda.
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
#' ## 8.4
#' Un campione casuale di dipendenti di un impianto di produzione locale ha fatto le seguenti donazioni, in dollari, alla United Fund: 100, 40, 75, 15, 20, 100, 75, 50, 30, 10, 55, 75, 25, 50, 90, 80, 15, 25, 45, e 100. Calcolare media e moda.
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
#' ## 8.5
#' Il tempo di attesa, in minuti, di 10 pazienti in un ambulatorio medico prima di essere ricevuti sono: 5, 11, 9, 5, 10, 15, 6, 10, 5, e 10. Si considerino i dati un campione casuale, calcolare campo di variazione e deviazione standard.
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
#' ## 8.7
#' Le medie dei punteggi assegnati a 20 studenti scelti casualmente sono le seguenti: 3.2, 1.9, 2.7, 2.4, 2.8, 2.9, 3.8, 3.0, 2.5, 3.3, 1.8, 2.5, 3.7, 2.8, 2.0, 3.2, 2.3, 2.1, 2.5, 1.9. Si calcoli la deviazione standard.
#' ```R
#' x <- c(3.2, 1.9,	2.7, 2.4, 2.8, 2.9,	3.8, 3.0,	2.5, 3.3, 1.8, 2.5,	3.7, 2.8,	2.0, 3.2, 2.3, 2.1,	2.5, 1.9)
#'     x
#'
#' # deviazione standard
#'   sd(x)
#' ```
#'
#' ## 8.9
#' Se tutti i possibili campioni di dimensione 16 sono estratti da una popolazione normale con media pari a 50 e deviazione standard pari a 5, qual è la probabilità che la media campionaria X_bar sia contenuta nell’intervallo che va da μ-1.9(σ) a μ-0.4(σ)? Si supponga che le medie sui campioni possano essere misurate a qualsiasi grado di precisione.
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
#' ## 8.10
#' Un certo tipo di filato è prodotto con una resistenza alla trazione media di 78.3 kg e una deviazione standard di 5.6 kg. Come cambia la varianza della media campionaria quando la dimensione del campione aumenta da 64 a 196? Quando diminuisce da 784 a 49?
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
#' ## 8.12
#' La variabile casuale X, che rappresenta il numero di ciliegie contenute in una sfoglia alla ciliegia, ha la seguente distribuzione di probabilità: x = {4,5,6,7}; rispettivamente P(X=x) = {0.2, 0.4, 0.3, 0.1} Trovare media e varianza di X.
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
#' Trovare media e varianza di X per un campione casuale di 36 sfoglie alla ciliegia.
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
#' Determinare la probabilità che il numero medio di ciliegie in 36 sfoglie alla ciliegia sia inferiore a 5.5.
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
#' ## 8.13
#' La vita media di una macchina per il pane è di 7 anni, con una deviazione standard di 1 anno. Supponendo che la vita di questa macchina segua approssimativamente una distribuzione normale, trovare la probabilità che la vita media di un campione casuale di 9 macchine sia tra i 6.4 e i 7.2 anni;
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
#' il valore di x per cui alla sua destra ricadrebbe il 15% delle medie ottenute da campioni casuali di dimensione 9.
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
#' ## 8.19
#' Per una distribuzione chi-quadro si trovi 1. χ\^2(0.025) quando v = 15 2. χ\^2(0.01) quando v = 7 3. χ\^2(0.05) quando v = 24
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
#' ## 8.20
#' Per una distribuzione chi-quadro, si trovi χ\^2_α in modo che: 1. $P(X^2 > χ^2_α)=0.99$ quando v = 4 2. $P(X^2 > χ^2_α)=0.025$ quando v = 19 3. $P(X^2 > χ^2_α)=0.045$ quando v = 25
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
#' ## 8.21
#' Si assuma che la varianza del campione sia misurata in modo continuo. Determinare la probabilità che un campione casuale di 25 osservazioni, da una popolazione normale con varianza 6, abbia una varianza campionaria S\^2: maggiore di 9.1;
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
#' compresa tra 3.462 e 10.745.
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
#' # pag. 256
#' ## 9.1
#' Un ricercatore di UCLA afferma che la durata della vita dei topi può essere aumentata fino al 25%, quando le calorie nella loro dieta dal momento in cui sono svezzati, sono ridotte di circa il 40%. La dieta stretta viene arricchita da vitamine e proteine. Si assuma che sia noto da studi precedenti che σ = 5.8 mesi. Quanti topi devono essere inclusi nel campione, se si vuole essere confidenti al 99% che la durata della vita media calcolata sul campione differisca non più di 2 mesi dalla vita media della popolazione di tutti i topi sottoposti a questa dieta ridotta?
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
#' ## 9.2
#' Molti pazienti cardiopatici portano un pacemaker impiantato per controllare il battito cardiaco. Uno specifico componente in plastica viene montato sulla parte superiore del pacemaker. Si assume una deviazione standard di 0.0015 pollici e una distribuzione approssimativamente normale. Trovare un intervallo di confidenza al 95% per la media delle profondità di tutti i componenti prodotti da una certa società sapendo che un campione casuale di 75 componenti ha una profondità media di 0.310 pollici.
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
#' ## 9.3
#' Un campione casuale di 100 proprietari di automobili, nello stato della Virginia guida l’auto in media 23500 km all’anno con una deviazione standard di 3900 chilometri. Assumere che la distribuzione del chilometraggio sia approssimativamente normale.
#'
#' 1.  Costruire un intervallo di confidenza al 99% per il numero medio di chilometri che un’automobile percorre ogni anno in Virginia.
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
#' 2.  Cosa si può affermare al 99% di confidenza sulla possibile grandezza dell’errore se si stima che il numero medio di chilometri percorsi dai proprietari di auto in Virginia è 23500 km all’anno?
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
#' ## 9.5
#' Il consumo regolare di cereali zuccherati contribuisce alla carie dei denti, alle malattie cardiache e ad altre malattie degenerative, secondo gli studi condotti dal Dr. WH Bowen del National Institute of Health e dal Dr. J. Yudben, Professore di Nutrizione e Dietetica presso l’Università di Londra. In un campione casuale composto da 20 singole porzioni simili di Alpha-Bits, il contenuto medio di zucchero è pari a 11.3 grammi con una deviazione standard di 2.45 grammi. Supponendo che il tenore di zucchero sia normalmente distribuito, costruire un intervallo di confidenza al 95% per lo zucchero medio contenuto nelle singole porzioni di Alpha-Bits.
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
#' ## 9.6
#' Una macchina produce pezzi di metallo di forma cilindrica. Viene estratto un campione di pezzi e i diametri sono misurati ottenendo: 1.01, 0.97, 1.03, 1.04, 0.99, 0.98, 0.99, 1.01 e 1.03 centimetri. Trovare un intervallo di confidenza al 99% per il diametro medio dei pezzi prodotti da questa macchina, ipotizzando approssimativamente distribuzione normale.
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
#' ## 9.7
#' Viene considerato un campione casuale di 12 perni per lo studio della durezza di Rockwell della testa del perno. Le misure della durezza di Rockwell sono realizzate per ciascuno dei 12 pezzi, ottenendo un valore medio 48.50 e deviazione standard campionaria 1.5. Supponendo che le misure siano normalmente distribuite, costruire un intervallo di confidenza al 90% per la durezza media di Rockwell.
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
#' ## 9.10
#' Un campione casuale di 25 compresse di aspirina tamponata contiene, in media, 325.05 mg di aspirina per compressa, con una deviazione standard di 0.5 mg. Trovare i limiti di tolleranza al 95% che contengano il 90% del contenuto della compressa per questa marca di aspirina tamponata. Si supponga che il contenuto di aspirina sia distribuito normalmente.
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
#' ## 9.13
#' Sono stati registrati i seguenti tempi di asciugatura, in ore, di un certo marchio di vernice acrilica: 3.4, 2.5, 4.8, 2.9, 3.6, 2.8, 3.3, 5.6, 3.7, 2.8, 4.4, 4.0, 5.2, 3.0, 4.8. Si assuma che le misure siano un campione casuale estratto da una popolazione normale. Si supponga che alle 15 osservazioni se ne aggiunga una sedicesima di valore pari a 6.9 ore. Rispetto alle originarie 15 osservazioni, il 16-esimo valore è un outlier? Giustificare.
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
#' ## 9.27
#' In un campione casuale di 1000 case in una certa città, si è constatato che 228 sono riscaldate a gasolio. Si trovino gli intervalli di confidenza al 99% per la proporzione di case in questa città che sono riscaldate a gasolio.
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
#' ## 9.28
#' In una città è stato selezionato un campione casuale di 200 elettori e 114 sostengono una petizione sull’annessione. 1. Trovare l’intervallo di confidenza al 96% per la porporzione della popolazione votante a favore della petizione.
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
#' 2.  Cosa si può affermare con il 96% di confidenza sulla possibile dimensione dell’errore, se si stima che la proporzione degli elettori a favore della petizione sull’annessione è 0.57?
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
#' ## 9.29
#' Un nuovo sistema di lancio di razzi viene preso in considerazione per piccoli razzi a corto raggio. Il sistema esistente ha p = 0.8 di probabilità che un lancio sia effettuato con successo. Un campione di 40 lanci sperimentali viene effettuato con il nuovo sistema e 34 hanno successo. Si costruisca un intervallo di confidenza al 95% per p. Si può concludere che il nuovo sistema sia il migliore?
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
#' ## 9.37
#' Un produttore di batterie per auto sostiene che le batterie dureranno, in media, 3 anni, con una varianza di 1 anno. Se 5 di queste batterie hanno durata di 1.9, 2.4, 3.0, 3.5, e 4.2 anni, si costruisca un intervallo di confidenza al 95% per $σ^2$ e si decida se l’affermazione del produttore su $σ^2=1$ sia valida. Si assuma che il popolazione della vita delle batterie sia approssimativamente normalmente distribuita.
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
#' ## 9.39
#' Un campione casuale di 10 barrette energetiche al cioccolato di una certa marca ha, in media, 230 calorie per barretta, con una deviazione standard di 15 calorie. Si assuma che la distribuzione del contenuto di calorie sia approssimativamente normale. Costruire un intervallo di confidenza al 99% per σ.
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
#' # pag.
#' ## 10.3
#' Un produttore di tessuti asserisce che la proporzione di ordini di materia prima che arriva in ritardo è p = 0.6. Se si osserva che in un campione casuale di 50 ordini, 24 arrivano in ritardo, l’ipotesi nulla che p = 0.6 dovrebbe essere rifiutata in favore di p \< 0.6. In questo caso, la regione critica è definita da x ≤ 24, dove x è il numero di ordini nel campione che arriva in ritardo. (Utilizzare l’approssimazione normale.) Calcolare la probabilità di commettere un errore di I tipo se la vera proporzione fosse p = 0.6.
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
#' Calcolare la probabilità di commettere un errore di II tipo per le ipotesi alternative p = 0.3, p = 0.4 e p = 0.5.
#' ```R
#' p2 <- c(0.3, 0.4, 0.5)
#'   z2 <- (24.5 - p2 * n) / sqrt(n * p2 * (1-p2))
#'
#'   1 - pnorm(z2)
#' ```
#'
#' ## 10.4
#' La proporzione di adulti di una piccola città in possesso di una laurea è stimato essere p = 0.6. Per verificare l’ipotesi, viene selezionato un campione casuale di 200 adulti. Sia x il numero di laureati nel campione. Se 110 ≤ x ≤ 130, allora non si dovrebbe rifiutare l’ipotesi nulla che p = 0.6, altrimenti si dovrebbe concludere che p ≠ 0.6. Utilizzare l’approssimazione normale. Calcolare α, assumendo p = 0.6.
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
#' ## 10.8
#' Un distributore di bevande è regolato in modo tale che la quantità di bevanda dispensata ha una distribuzione normale con media di 200 millilitri e deviazione standard di 15 millilitri. Il distributore viene controllato selezionando un campione di 9 bevande e misurando il contenuto medio. Se xbar appartiene all’intervallo 191 \< xbar \< 209, allora il distributore funziona in modo soddisfacente, altrimenti si conclude che μ ≠ 200 millilitri. Calcolare la probabilità di commettere un errore di I tipo quando μ = 200 millilitri.
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
#' Calcolare la probabilità di commettere un errore di II tipo quando μ = 215 millilitri.
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
#' ## 10.10
#' In un articolo di ricerca, Richard H. Weindruch della UCLA Medical School sostiene che i topi con una vita media di 32 mesi potrebbero vivere circa 40 mesi se il 40% delle calorie nella loro dieta venisse sostituito da vitamine e proteine. C’è qualche ragione di credere che μ \< 40, se 64 topi trattati con questa dieta hanno una vita media di 38 mesi e una deviazione standard di 5.8 mesi? Fissare un P-value per stabilire le conclusioni.
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
#' ## 10.11
#' Un’azienda elettrica produce lampadine la cui durata ha approssimativamente una distribuzione normale con media 800 ore e deviazione standard 40 ore. Verificare l’ipotesi che μ = 800 ore contro l’ipotesi alternativa che μ ≠ 800 ore, considerando un campione casuale di 30 lampadine con durata media 788 ore. Per rispondere, fissare un P-value.
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
#' ## 10.12
#' Verificare l’ipotesi che il contenuto medio dei contenitori di un particolare lubrificante è 10 litri se il contenuto medio di un campione casuale di 10 contenitori di lubrificante è rispettivamente: 10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3 e 9.8 litri. Fissare il livello di significatività α = 0.01 e assumere che la distribuzione dei contenuti sia normale.
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
#' ## 10.13
#' Si sostiene che le automobili percorrono in media 20000 chilometri all’anno. Per verificare questa affermazione viene chiesto a 100 automobilisti scelti a caso di dichiarare i chilometri percorsi con le proprie auto. Saresti d’accordo con l’affermazione fatta sapendo che la media calcolata sul campione è pari a 23500 chilometri con deviazione standard 3900 chilometri? Fissare un P-value per stabilire le conclusioni.
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
#' ## 10.14
#' Uno studio condotto presso l’Università del Colorado a Boulder ha evidenziato che correre aumenta la percentuale del tasso metabolico a riposo (RMR) nelle donne anziane. La media di RMR in 30 donne anziane che praticano la corsa era del 34.0% più elevata della media di RMR in 30 donne anziane sedentarie, e le deviazioni standard erano rispettivamente 10.5% e 10.2%. Si può sostenere che c’è stato un aumento significativo nella percentuale di RMR per le donne che praticano la corsa in confronto alle donne sedentarie? Si assuma che le popolazioni abbiano una distribuzione normale con varianze uguali. Fissare un P-value per stabilire le conclusioni.
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
#' ## 10.15
#' L’esperienza passata indica che il tempo impiegato dagli studenti dell’ultimo anno di scuola superiore per completare un test standardizzato è una variabile casuale normale, con media 35 minuti. Se un campione casuale di 20 studenti dell’ultimo anno di scuola superiore impiegasse in media 33.1 minuti per completare questo test con deviazione standard 4.3 minuti, verificare l’ipotesi che μ = 35 contro l’ipotesi alternativa che μ \< 35 minuti, per α = 0.05.
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
#' ## 10.16
#' Un imprenditore manifatturiero sostiene che la forza di tensione media della fibra A superi la forza di tensione media della fibra B di almeno 12 chilogrammi. Per verificare questa affermazione, 50 filamenti di ciascun tipo di fibra vengono testati in condizioni uguali. Per il filo di tipo A si osserva una forza di tensione media di 86.7 chilogrammi e una deviazione standard di 6.28 chilogrammi, mentre per il filo di tipo B si osserva una forza di tensione media di 77.8 chilogrammi e una deviazione standard di 5.61 chilogrammi. Verificare l’affermazione dell’imprenditore per α = 0.05.
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
#' ## 10.24
#' Un campione casuale di 64 sacchetti di popcorn pesano, in media, 5.23 once con una deviazione standard di 0.24 once. Quale deve essere la dimensione del campione se la potenza desiderata per il test è 0.90, quando la vera media è 5.20? Si assuma che σ = 0.24.
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
#' ## 10.25
#' L’altezza media delle femmine di una classe di matricole di un certo college è stata, storicamente, di 162.5 centimetri, con una deviazione standard di 6.9 centimetri. Quale deve essere la dimensione del campione se la potenza desiderata per il test è 0.95, quando la vera altezza media differisce, da quella storica, di 3.1 centimetri? Si utilizzi α = 0.02.
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
#' ## 10.26
#' Nell’American Heart Association journal Hypertension, i ricercatori affermano che i soggetti che praticano la Transcendental Meditation (TM) abbassano significativamente la loro pressione arteriosa. Se un campione di 225 maschi pratica la TM per 8.5 ore alla settimana con una deviazione standard di 2.25 ore, quale deve essere la dimensione del campione se si vuole ottenere una potenza del test di 0.8 quando la vera media del tempo di pratica della TM supera il valore ipotizzato di 1.2⁢σ? Utilizzare α = 0.05.
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
#' ## 10.28
#' Un esperto di marketing di un’azienda produttrice di pasta crede che il 40% degli amanti della pasta preferisca come tipo di pasta la lasagna. Se 9 su 20 amanti della pasta scegliessero la lasagna come tipo di pasta, che cosa si potrebbe concludere sulla convinzione dell’esperto? Utilizzare un livello di significatività di 0.05.
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
#' ## 10.29
#' Un nuovo tipo di radar sta per essere adottato dal sistema di difesa missilistico. Il sistema viene verificato tramite un esperimento aereo in cui viene simulato un abbattimento o un mancato abbattimento. Se, date 300 prove, 250 risultano in un abbattimento, a un livello di significatività di 0.04, l’affermazione che la probabilità di un abbattimento con il nuovo sistema non supera la probabilità di 0.8 del sistema esistente si accetta o si rifiuta?
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
#' ## 10.30
#' Una compagnia energetica sostiene che un quinto delle abitazioni di una certa città utilizzano un riscaldamento a olio combustibile. Esiste qualche ragione di credere che meno di un quinto sono riscaldate da olio combustibile se, in un campione di 1000 abitazioni di questa città, 136 utilizzano l’olio combustibile? Utilizzare un P-value per stabilire le conclusioni.
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
#' ## 10.34
#' La quantità dei contenitori di un particolare lubrificante ha una distribuzione normale, con varianza di 0.03 litri. Verificare l’ipotesi che $σ^2 = 0.03$ contro l’ipotesi alternativa che $σ^2 ≠ 0.03$, per il campione casuale di 10 contenitori. Utilizzare un P-value per stabilire le conclusioni.
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
#' ## 10.35
#' In Virginia, le aflatossine prodotte dalle muffe cresciute sulle coltivazioni di arachidi devono essere monitorate. Un campione di 64 partite di arachidi rivela che i livelli di aflatossine sono, in media, di 24.17 ppm, con una varianza di 4.25 ppm. Verificare l’ipotesi che $σ^2 = 4.2$ ppm contro l’ipotesi alternativa che $σ^2 ≠ 4.2$ ppm. Utilizzare un P-value per stabilire le conclusioni.
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
#' ## 10.36
#' Un distributore automatico di bevande viene considerato fuori controllo se la varianza del contenuto erogato supera 1.15 decilitri. Se un campione casuale di 25 bevande avesse una varianza di 2.03 decilitri, si potrebbe affermare che, a un livello di significatività di 0.05, il distributore è fuori controllo? Assumere che il contenuto di bevanda abbia una distribuzione approssimativamente normale.
#' # verifica di ipotesi della VARIANZA
#' ```R
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
esercizi <- function(data) {
  # Implementazione della funzione
  return(NULL)
}
?esercizi
?esercitazioni
?formulario
