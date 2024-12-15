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
#' ### ESERCIZIO 1
#'
#' Si consideri $T$ una variabile casuale distribuita come una $t$-Student
#' con $v=19$ gradi di libertà
#'
#' 1.  Si calcoli $P(T > 0.533)$
#'
#'   ```R
#' # I modo:
#' 1-pt(0.533, 19)
#' #  II modo:
#' pt(0.533, 19, lower.tail = F)
#' ```
#'
#' 2.  Si calcoli $P(T < 1.066)$
#'
#'   ```R
#' pt(1.066, 19)
#' ```
#'
#' 3.  Si calcoli $P(-2.093 < T < 2.093)$
#'
#'   ```R
#' pt(2.093, 19) - pt(-2.093, 19)
#' # alt, per simmetria
#' 2 * (pt(2.093,19) - 0.5)
#' ```
#'
#' 4.  Si trovi $k$ tale che $P(T > k) = 0.025$ P(T \> k) = 1 - P(T \< k) =
#'   1 - 0.025 = 0.975
#'
#' ```R
#' qt(0.975, 19, lower.tail=TRUE)
#'
#' # test di correttezza, deve fare 0.975
#' pt(qt(0.975, 19, lower.tail=TRUE), 19)
#'
#' # alternativa: coda destra
#' qt(0.025, 19, lower.tail=FALSE)
#'
#' # test di correttezza, deve fare 0.975
#' pt(qt(0.025, 19, lower.tail=FALSE), 19, lower.tail=FALSE)
#'
#'
#' ```
#'
#' 5.  Si trovi $k$ tale che $P(T > k) = 0.975$
#'
#'   ```R
#' qt(0.025, 19)
#' ```
#'
#' 6.  Si trovi quanto invece dovrebbe valere $v$ per far si che
#' $P(T> 1.895) = 0.05$
#'
#'   ```R
#' for(v in 1:30){
#'   print(qt(1-0.05, v))
#' }
#'
#' # alt
#'
#' for(v in 1:30){
#'   if( round(qt(1-0.05, v), 3) == 1.895){
#'     print(paste("v is", v))
#'   }
#' }
#'
#' ```
#'
#' ### ESERCIZIO 2
#'
#' In un campione casuale di 53 campioni di cemento armato la porosità
#' media è risultata (in %) $21.6$ e la deviazione standard di 3.2.
#'
#' 1.  Trovare un intervallo di confidenza al 90% per la porosità media nei
#' campioni di questo tipo di cemento.
#' $$ P( \bar{X} - z_{\alpha/2} \frac{\sigma}{\sqrt{n}} < \mu < \bar{X} + z_{\alpha/2} \frac{\sigma}{\sqrt{n}}) = 0.9 $$
#'
#'   ```R
#' n = 53
#' xbar = 21.6
#' sigma = 3.2
#'
#' alpha = 1-0.9
#' z_a2 = qnorm(1-alpha/2)
#'
#' lower = xbar - z_a2*sigma/sqrt(n)
#' upper = xbar + z_a2*sigma/sqrt(n)
#' ci = c(lower, upper)
#'
#' ```
#'
#' 2.  Trovare un intervallo di confidenza al 95% per la porosità media nei
#' campioni di questo tipo di cemento.
#'
#' ```R
#'
#' alpha1 = 1-0.95
#' z_a2_1 = qnorm(1 - alpha1/2)
#'
#' lower2 = xbar - z_a2_1*sigma/sqrt(n)
#' upper2 = xbar + z_a2_1*sigma/sqrt(n)
#' ci2 = c(lower2, upper2)
#'
#'
#' ```
#'
#' 3.  Quale è il livello di confidenza per l’intervallo (21.0, 22.2)?
#'
#'   ```R
#'
#' # Sappiamo che il margine di errore è
#' # ME = z_(alpha/2)*sigma/sqrt(n)
#' # Ma si può calcolare anche dall'ampiezza dell'intervallo (w)
#' # w = 2*ME = 22.2 - 21.0 = 1.2
#' # ME = w/2 = 0.6
#' # risolvere in termini di z_(alpha/2)
#' z_a2 = 1.365
#' # 1 - alpha/2
#' pnorm(z_a2)
#'
#' # alpha
#' (1-0.9138768)*2
#'
#' 1-(1-0.9138768)*2 # livello di confidenza
#'
#' ```
#'
#' 4.  Quanti campioni devono essere utilizzati affinché un intervallo con
#' grado di fiducia pari al 90% specifichi la media a meno di
#' $\pm 0.3$?
#'
#'   ```R
#'
#' # chiamiamo margine di errore
#' me = 0.3
#'
#' # me = z_(alpha/2)*sigma/sqrt(n)
#'
#' # n = z_(alpha/2)^2*sigma^2/me^2
#'
#' alpha = 1-0.9
#'
#' n = qnorm(1-alpha/2)^2*sigma^2/me^2
#'
#' round(n) # n è un numero intero, quindi arrotondiamo all'unità
#' ```
#'
#' 5.  Quante osservazioni campionarie devono essere utilizzati affinché un
#' intervallo con grado di fiducia pari al 95% specifichi la media a
#' meno di $\pm 0.3$?
#'
#'   ```R
#'
#' alpha1 = 1-0.95
#'
#' n1 = qnorm(1-alpha1/2)^2*sigma^2/me^2
#'
#' round(n1) # n è un numero intero, quindi arrotondiamo all'unità
#' ```
#'
#' ### ESERCIZIO 3
#'
#' Si vuole monitorare la circonferenza di palloni di pallavolo (in
#'                                                               centimetri) prodotti da una nota ditta, che si sa, in popolazione,
#' essere distribuita normalmente con media $\mu$. Si estrae un campione di
#' dimensione n=20 palloni e si ottiene che $\bar{X} = 78$ e $s = 2.5$.
#'
#' 1.  Trovare un intervallo bilaterale per $\alpha = 0.05$ per la
#' circonferenza dei palloni di pallavolo in popolazione.
#'
#' ```R
#' n=20
#' xbar = 78
#' s=2.5
#' alpha= 0.05
#'
#' # lower bound
#' lower = xbar - qt(1-alpha/2, n-1)*s/sqrt(n)
#' # upper bound
#' upper = xbar + qt(1-alpha/2, n-1)*s/sqrt(n)
#'
#' ```
#'
#' 2.  Determinare la dimensione campionaria minima che garantisca un
#' margine di errore di 2 con un livello di confidenza del 95%
#'
#' ```R
#' me = 2
#' alpha = 1-0.95
#' t = qt(1-alpha/2, n-1)
#' n1 = t^2*s^2/me^2
#'
#' round(n1)
#'
#' ```
#'
#' ### ESERCIZIO 4
#'
#' Su segnalazione degli abitanti, si sono rilevate le velocità di 7
#' automobili che sono transitate in una zona dove vige il limite di 50
#' km/h. Le misurazioni hanno dato i seguenti risultati:
#'
#'   ```R
#' c(79, 73, 68, 77, 86, 71, 69)
#' ```
#'
#' Assumendo che la popolazione delle velocità sia distribuita normalmente,
#' si calcoli:
#'
#'   1.  media e varianza campionaria
#'
#' ```R
#' x <- c(79, 73, 68, 77, 86, 71, 69)
#'
#' n <- length(x)
#'
#' xbar = mean(x)
#'
#' s2 = var(x) # il denominatore è già n-1
#' ```
#'
#' 2.  un intervallo di confidenza al 95% per la velocità media delle
#' automobili
#'
#' ```R
#' alpha = 1-0.95
#'
#' # lower bound
#' lower = xbar - qt(1-alpha/2, n-1)*sqrt(s2/n)
#' # upper bound
#' upper = xbar + qt(1-alpha/2, n-1)*sqrt(s2/n)
#'
#' ```
#'
#' 3.  il corrispondente margine d’errore
#'
#' ```R
#'
#' qt(1-alpha/2, n-1)*sqrt(s2)/sqrt(n)
#'
#' ```
#'
#' ### ESERCIZIO 5
#'
#' Sia X una variabile casuale che descrive il peso (in grammi) dei palloni
#' da pallavolo prodotti da una nota ditta. Si estraggono casualmente n =
#'   100 unità da tale produzione e si ottiene che:
#'   $\sum_{i=1}^n x_i = 22800$ e $\sum_{i=1}^n x_i^2 = 5252900$.
#'
#' a.  determinare media e varianza campionaria
#' b.  Si costruisca l’intervallo di confidenza per il peso medio al
#' livello di confidenza del 98%.
#'
#' Svolto alla lavagna.
#'
#' ```R
#'
#' # b
#'
#' alpha = 1-0.98
#' n = 100
#' xbar = 228
#' s = 23.46
#'
#' # lower bound
#' xbar - qt(1-alpha/2, n-1)*s/sqrt(n)
#' # upper bound
#' xbar + qt(1-alpha/2, n-1)*s/sqrt(n)
#' ```
#'
#' ### ESERCIZIO 6
#'
#' In un campione casuale di 95 aziende produttrici, 67 hanno dichiarato di
#' aver ottenuto la certificazione ISO negli ultimi due anni.
#'
#' Determinare l’intervallo di confidenza al livello 99% per la proporzione
#' delle aziende che sono state certificate negli ultimi 2 anni.
#'
#' ```R
#'
#' alpha = 1 - 0.99
#' n = 95
#' x = 67 # numero di successi
#'
#' # quindi x si distribuisce come una Binomiale di parametro p
#' # p per n che tende a infinito si distribuisce come Normale con parametri p e p(1-p)/n
#'
#' # Intervallo di confidenza a livello 99%
#'
#' # [p - z_alpha/2 * sqrt(p(1-p)/n); p + z_alpha/2 * sqrt(p(1-p)/n)]
#'
#' p = 67/95
#'
#' # lower bound
#' lower = round(p - qnorm(1-alpha/2)*sqrt(p*(1-p)/n),3)
#'
#' # upper bound
#' upper = round(p + qnorm(1-alpha/2)*sqrt(p*(1-p)/n),3)
#'
#' c(lower, upper)
#'
#' ```
#'
#' ### ESERCIZIO 7
#'
#' In un sondaggio si vuole conoscere l’opinione dei cittadini riguardo la
#' seguente domanda: "pensa di andare a votare alle prossime elezioni?".
#'
#' Usando l'approssimazione (della binomiale) alla normale (attraverso
#' TLC), quanti cittadini devono essere intervistati affinchè, con un
#' livello di confidenza del 95%, il margine di errore nella stima
#' intervallare della proporzione corrisponda al massimo al 2%?
#'
#' ```R
#'
#' # n = ?
#'
#' me = 0.02
#' alpha = 1-0.95
#' # Sappiamo che:
#' # me = z_alpha/2 * sqrt(p*(1-p)/n)
#'
#' # come capire quanto vale p? In questi casi, in modo cautelare si pone p = 0.5
#' # p*(1-p) = 0.5 * 0.5 = 0.25
#'
#' n = 0.25 * qnorm(1-alpha/2)^2 / me^2
#'
#' round(n)
#'
#' ```
#'
#' ### ESERCIZIO 8
#'
#' Il responsabile del controllo qualità di una industria chimica ha
#' estratto un campione casuale di 20 sacchi da 50 kg di fertilizzante per
#' stimare la varianza nel contenuto di impurità. La varianza campionaria
#' osservata è stata di 6.62.
#'
#' Assumendo la distribuzione del contenuto di impurità normale in
#' popolazione, determinare un intervallo di confidenza a livello 95% per
#' la varianza del contenuto di impurità di tutta la produzione.
#'
#' ```R
#' n = 20
#' alpha = 1-0.95
#' s2 = 6.62
#'
#' # Dato che stiamo parlando di varianza campionaria allora la distribuzione da considerare è un Chi^2
#'
#'
#' # lower bound
#' (n-1)*s2/qchisq(1-alpha/2, n-1)
#'
#' # upper bound
#' (n-1)*s2/qchisq(alpha/2, n-1)
#'
#' # Alternativa
#' # lower bound
#' (n-1)*s2/qchisq(alpha/2, n-1, lower.tail=FALSE)
#'
#' # upper bound
#' (n-1)*s2/qchisq(1 - alpha/2, n-1, lower.tail=FALSE)
#'
#' ```
#'
#' ---
#'   title: "Intervalli di confidenza e test d'ipotesi"
#' author: ""
#' date: "2024-11-18"
#' output: html_document
#' ---
#'
#'   ```{r setup, include=FALSE}
#' knitr::opts_chunk$set(echo = TRUE)
#' ```
#'
#'
#' ### ESERCIZIO 1
#'
#' Il numero di pasti serviti giornalmente da una mensa aziendale, lo scorso anno, seguiva una distribuzione normale con media pari a 300 e varianza pari a 600. L'amministratore dell'azienda ritiene che, quest'anno, con l'introduzione di cibi biologici il numero di pasti segua sempre una distribuzione normale, ma con parametri diversi dallo scorso anno.
#' Per stimare questi parametri, l'amministratore considera un campione di 12 giorni, per ognuno dei quali prende nota del numero di pasti serviti, che risulta:
#' ```R
#' c(330,324, 321, 295, 306, 293, 264, 358, 321, 297, 300, 275)
#' ```
#' Inoltre ai clienti dei primi 4 giorni viene chiesto se si ritengono soddisfatti delle modifiche introdotte e 924 rispondono in modo affermativo.
#'
#' a. Determinare la probabilità che lo scorso anno il numero di pasti serviti fosse maggiore di 320 (in un singolo giorno preso a caso).
#'
#'
#'
#' $P(X > 320 | \mu = 300, \sigma^2 = 600) = P(Z > \frac{320-300}{\sqrt{600}}) = P(Z > 0.816) = 1 - P(Z < 0.816)$
#'
#' ```R
#' # I modo sfrutto la Normale standard:
#' 1-pnorm((320-300)/sqrt(600), mean = 0, sd=1)
#'
#' # II modo utilizzo la Normale(mu, sigma):
#' 1-pnorm(320, mean = 300, sd = sqrt(600))
#'
#' ```
#'
#' b. Stimare la media e la varianza del numero di pasti serviti quest'anno.
#'
#' ```R
#' x = c(330,	324, 321, 295, 306, 293, 264, 358, 321, 297, 300, 275)
#'
#' (xbar = mean(x)) # media campionaria
#' (s2 = var(x)) # varianza campionaria
#' ```
#'
#' c. Stimare la proporzione del numero di clienti soddisfatti.
#'
#'
#' ```R
#' # stiamo considerando i clienti dei primi 4 giorni
#' (p = 924/sum(x[1:4]))
#' ```
#'
#' d. Determinare la probabilità che il numero medio di pasti serviti nel campione di 12 giorni sia maggiore di 320.
#'
#'
#' $P(\bar{X} > 320)$
#'   ```R
#'
#' # I modo:
#' 1-pnorm(320, 300, sqrt(600/12))
#'
#' # II modo:
#' 1-pnorm((320-300)/sqrt(600/12))
#' # in questo caso va calcolata la probabilità riferita alla media campionaria
#'
#' ```
#' e. L'amministratore vuole verificare l’ipotesi che l'introduzione dei cibi biologici abbia avuto effetti positivi in termini di numero medio di pasti serviti. Sulla base dei dati osservati e supponendo che la varianza nella popolazione sia nota e pari a 600, si può dare ragione all’amministratore? ($\alpha$ = 0.01)
#'
#' ```R
#' # H0 : mu <= 300 vs H1 : mu > 300
#' mu0 = 300
#' # mu sotto l'ipotesi nulla
#' alpha = 0.01
#' sigma2 = 600
#' # I modo:
#' z = qnorm(1-alpha)
#' # valore critico
#' z_stat = (xbar - 300)/sqrt(600/12)
#'
#' if(z_stat > z){
#'   print("Rifiuto H0")
#' } else{
#'   print("NON rifiuto H0")
#' }
#'
#' # II modo: regione critica per xbar
#' x_crit = 300 + qnorm(1-alpha) * sqrt(600/12)
#' # valore critico, in coda destra poichè ">"
#'
#' if(xbar > x_crit){
#'   print("Rifiuto H0")
#' } else{
#'   print("NON rifiuto H0")
#' }
#'
#' # III modo: p-value
#'
#' # P(Z > z_stat | H0) = P( Z > (xbar-mu0)/sqrt(600/12))
#'
#' pvalue = 1-pnorm((xbar-mu0)/sqrt(600/12))
#' # o anche
#' pvalue = pnorm(xbar, mu0, sqrt(600/12), lower.tail=FALSE)
#'
#' if( pvalue < alpha){
#'   print("Rifiuto H0")
#' } else{
#'   print("NON rifiuto H0")
#' }
#'
#' ```
#'
#' f. L'amministratore vuole verificare l’ipotesi che l'introduzione dei cibi biologici abbia avuto effetti positivi in termini di numero medio di pasti serviti. Sulla base dei dati osservati si può dare ragione all’amministratore?  ($\alpha$ = 0.01)
#'
#'
#'
#' ```R
#' # ora la varianza non è nota, facciamo i ragionamenti di prima MA con la t-Student
#'
#' # H0 : mu <= 300 vs H1 : mu > 300
#' mu0 = 300 # mu sotto l'ipotesi nulla
#' alpha = 0.01
#' s = sqrt(s2)
#' n = 12
#'
#' # I modo:
#' # valore t critico
#' t = qt(1-alpha, n-1)
#'
#' t_stat = (xbar - 300)/sqrt(s2/12)
#'
#' if(t_stat > t){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' # II modo:
#' x_crit = 300 + qt(1-alpha, n-1) *sqrt(s2/n)
#' if( xbar > x_crit){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' # III modo: p-value
#'
#' # P(T > t_stat | H0) = P( T > (xbar-mu0)/sqrt(600/12))
#'
#' pvalue = 1-pt((xbar-mu0)/sqrt(s2/12), n-1)
#'
#'
#' if( pvalue < alpha){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' ```
#' g. L'amministratore ritiene di continuare con la proposta dei cibi biologici se la percentuale di clienti che si ritiene soddisfatta è superiore a 70. Ad un livello di significatività del 5%, cosa deciderà l'amministratore?
#'
#'   ```R
#'
#' # H0: p <= 0.7 vs H1: p > 0.7
#'
#' alpha = 0.05
#' n = sum(x[1:4])
#' p
#'
#' # approssimazione con una Normale(p, p(1-p)/n)
#' # valore critico in termini di z
#' z = qnorm(1-alpha)
#'
#' z_stat = (p - 0.7)/sqrt(0.7*(1-0.7)/n)
#'
#' if(z_stat > z){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' # approccio p value
#' pvalue = 1-pnorm(z_stat)
#' if(pvalue < alpha){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' ```
#'
#' ### ESERCIZIO 2
#'
#' In una determinata regione l’acidità della pioggia (pH) durante un rovescio si distribuisce come una v.c. Normale con valore atteso pari a 5.8 e varianza pari a 1.2.
#'
#' a. Calcolare la probabilità che durante un rovescio l'acidità della pioggia sia superiore a 6.
#'
#' ```R
#' # P(X > 6)
#' 1-pnorm(6, 5.8, sqrt(1.2))
#'
#' ```
#'
#' b.	Calcolare la probabilità che in un campione di 12 rovesci l’acidità media della pioggia sia superiore a 6
#'
#' ```R
#' n = 12
#' # P(xbar > 6)
#' 1-pnorm(6, 5.8, sqrt(1.2/12))
#'
#' ```
#'
#' Alcuni studiosi ritengono che a seguito del mutamento delle condizioni climatiche della regione, pur rimanendo invariata la varianza, l’acidità media sia aumentata (che il pH medio di conseguenza sia diminuito). Durante 10 rovesci si osservano i seguenti risultati relativi al pH:
#' ```R
#' c(6.1, 5.4, 4.8, 5.8, 6.6, 5.3, 6.1, 4.4, 3.9, 6.8)
#' ```
#'
#' c.	Costruire la regione di rifiuto al fine di verificare l’affermazione fatta dagli studiosi a livello di significatività del 5%. Cosa si conclude?
#' ```R
#' x = c(6.1, 5.4, 4.8, 5.8, 6.6, 5.3, 6.1, 4.4, 3.9, 6.8)
#' alpha = 0.05
#' xbar = mean(x)
#' n = length(x)
#'
#' # H0: mu => 5.8 vs H1: mu < 5.8
#' mu0 = 5.8
#'
#' # rifiuto quando:
#' # xbar < mu0 - qnorm(1-alpha)*sqrt(1.2/n)
#' # poiche coda sinistra
#' x_crit = mu0 - qnorm(1-alpha)*sqrt(1.2/n)
#' if(xbar < x_crit){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#'
#'
#' ```
#'
#' d. Considerando un valore vero del pH pari a 5,5, determinare la probabilità di commettere un errore del secondo tipo.
#'
#' ```R
#'
#' mu1 = 5.5
#'
#' # H0: mu = 5.8 vs H1: mu = 5.5
#'
#' # errore del secondo tipo: accetto H0 quando H1 è vera
#'
#' # P( xbar > x_critico | mu1 = 5.5)
#'
#' x_crit = mu0 - qnorm(1-alpha)*sqrt(1.2/n)
#'
#' # I modo
#' # prob che xbar sia meno estremo di x_crit, dato media mu1
#' 1-pnorm(x_crit, mu1, sqrt(1.2/n))
#'
#' # II modo:
#' 1-pnorm( (x_crit-mu1)/sqrt(1.2/n) )
#'
#' ```
#'
#'
#' ### ESERCIZIO 3
#' La Bosch sta testando un nuovo componente frenante, per capire se finalmente questo prodotto può essere posizionato sul mercato. Vuole dunque verificare ($\alpha$= 0.05) quanta percentuale di prodotto alla fine supera i test per il mercato e quanta invece viene scartata perchè non supera i requisiti di idoneità.
#' Il semestre precedente sappiamo che la percentuale di prodotti scartati era pari al 9.16%. La percentuale di questo nuovo semestre si suppone possa essere diminuita.
#' Per compiere il test vengono selezionati 200 prodotti e tra questi 10 non superano il test di idoneità e quindi vengono scartati.
#'
#' a.	A quanto ammonta la proporzione campionaria?
#' ```R
#'
#' n=200
#' p = 10/n # prodotti scartati
#'
#' ```
#'
#' b.	Determina la soglia critica del test.
#'
#' Ipotesi nulla: La percentuale di prodotti scartati nel nuovo semestre è uguale o maggiore rispetto a quella del semestre precedente.
#' Ipotesi alternativa: La percentuale di prodotti scartati nel nuovo semestre è inferiore a quella del semestre precedente.
#'
#' ```R
#'
#' # H0: p >= 0.0916 vs H1: p < 0.0916
#'
#' alpha = 0.05
#'
#' # z_alpha
#' z = qnorm(0.05)
#' # valori della statistica inferiori a questo ci portano a rifiutare l'ipotesi nulla
#'
#' (z_test = (p - 0.0916)/sqrt(0.0916*(1-0.0916)/n))
#'
#' ```
#'
#' c.	Attraverso il confronto tra la statistica test e la soglia critica, è possibile affermare che la percentuale di prodotti scartati è diminuita?
#'   ```R
#'
#' # approssimazione con una Normale(p, p(1-p)/n)
#' z = qnorm(alpha)
#'
#' z_stat = (p - 0.0916)/sqrt(0.0916*(1-0.0916)/n)
#'
#' if(z_stat < z){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#'
#' pvalue = pnorm(z_stat)
#' #questa volta valore estremo è coda sinistra
#'
#' if(pvalue < alpha){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#' ```
#'
#' ### ESERCIZIO 4
#'
#' Un fondista si allena quotidianamente percorrendo un’ora di corsa. Sulla base di tutti i suoi allenamenti, la distribuzione della distanza percorsa risulta normale con media $\mu$ = 12 km e varianza $\sigma^2$ = 2.8 km^2.
#' Estraendo un campione casuale di 10 allenamenti effettuati in giorni con basso inquinamento, risulta una media pari a 12.6 km.
#'
#' 1.	Verificare se l’aumento di velocità nei giorni a basso inquinamento è significativo al livello del 1%.
#' ```R
#'
#' mu = 12
#' sigma2 = 2.8
#' sigma = sqrt(sigma2)
#'
#' n = 10
#' xbar = 12.6 # la media del campione
#'
#' alpha = 0.01
#'
#' # H0: mu = 12 vs H1: mu > 12
#'
#' mu0 = 12
#' # Dato che la varianza è nota utiliazziamo N(0,1)
#' z_crit = qnorm(1-alpha)
#'
#' ( z_stat = (xbar - mu0)/(sigma/sqrt(n)) )
#'
#' if(z_stat > z_crit){
#'
#'   print("Rifiuto H0")
#'
#' }else{ print("NON rifiuto H0")}
#'
#'
#' ```
#'
#' 2.	Con $\mu_1$ = 13.5, calcolare la probabilità di rifiutare l’ipotesi nulla quando è falsa.
#' ```R
#' # Vogliamo valutare la potenza del test!
#'
#' # H0: mu = 12 vs H1: mu = 13.5
#'
#' mu1 = 13.5
#' # errore del secondo tipo: accetto H0 quando H1 è vera
#'
#' #potenza del test (rifiuto H0 quando H1 è vera)
#' # P( xbar > x_critico | mu1 = 13.5)
#'
#' x_crit = mu0 + qnorm(1-alpha)*sqrt(sigma2/n)
#'
#' 1-pnorm(x_crit, mu1, sqrt(sigma2/n))
#' # oppure
#' 1-pnorm((x_crit - mu1)/sqrt(sigma2/n))
#'
#' ```
#'
#' ### ESERCIZIO 5 (Numerosità campionaria test ipotesi.)
#'
#' I carichi di rottura dei cavi prodotti da un'azienda hanno una media pari a $\mu$=1500 kg con una deviazione standard pari a 60 kg e la loro distribuzione è normale. Per verificare se, mediante una nuova tecnica di costruzione, il carico di rottura possa essere aumentato si progetta di effettuare n prove sperimentali e un test di ipotesi. Il test unilaterale ha ipotesi nulla H0: $\mu_0$ =1800 kg e livello di significatività $\alpha$ =0.01.
#' Determinare la dimensione del campione n affinché il test abbia una potenza di almeno il 75% per la particolare ipotesi alternativa $\mu_1$ =1820 kg.
#'
#' $n = \frac{(z_\alpha + z_\beta)^2 \sigma^2}{\delta^2}$
#'
#' ```R
#'
#' # H0: mu = 1800 vs H1: mu > 1800 -> mu1 = 1820
#'
#' mu0 = 1800
#' mu1 = 1820
#' sigma = 60
#'
#' # n = (z_alpha + z_beta)^2 * sigma^2 / delta^2
#'
#' alpha = 0.01
#' potenza = 0.75
#' beta = 1 - potenza
#'
#' (z_alpha = qnorm(1-alpha))
#' (z_beta = qnorm(1 - beta))
#'
#' delta = mu1-mu0
#'
#' n = (z_alpha + z_beta)^2 * sigma^2 / delta^2
#'
#' round(n)
#'
#' # pero è 82, arrotondare per eccesso
#'
#' ```
#'
#' ### ESERCIZIO 6 (Varianza.)
#'
#' Dei controlli sulla produzione di condensatori hanno permesso al costruttore di definire una variabile casuale X 'capacità di ciascun condensatore' (misurata in pF alla frequenza di 1 kHz) la quale, storicamente, mostra una distribuzione normale e una deviazione standard pari a 180 pF.
#' Un addetto al controllo qualità ha estratto un campione di 23 elementi la cui deviazione standard campionaria è risultata essere pari a 220 pF.
#'
#' 1. E’ possibile affermare, ad un livello $\alpha$ =0.05, che la deviazione standard è davvero pari a 180 pF?
#'
#' ```R
#' sigma = 180
#' n = 23
#' s = 220
#' alpha = 0.05
#'
#' # H0: sigma = 180 vs H1: sigma != 180
#'
#' sigma_0 = 180
#'
#' chi2_stat = (n-1)*s^2/sigma_0^2
#'
#' chi2_crit = qchisq(c(alpha/2, 1-alpha/2), n-1)
#'
#' if(chi2_stat < chi2_crit[1] | chi2_stat > chi2_crit[2]){
#'   "Rifiuto H0"
#' }else{"NON rifiuto H0"}
#'
#'
#' ```
#'
#' 2. L’addetto in realtà è interessato ad un temuto aumento nella deviazione standard, e si chiede se questo è accidentale o è dovuto ad un difetto intervenuto nel processo di produzione. Ad un livello $\alpha$ =0.05, calcolare il valore della statistica test $\chi^2$ e dire se si accetta o si rifiuta l'ipotesi nulla.
#' ```R
#' # H0: sigma <= 180 vs H1: sigma > 180
#'
#' chi2_crit_new = qchisq(1 - alpha, n-1)
#'
#' if(chi2_stat > chi2_crit_new){
#'   "Rifiuto H0"
#' }else{"NON rifiuto H0"}
#'
#' ```
#'
#' ---
#'   title: "Test d'ipotesi - soluzioni"
#' author: ""
#' date: "2024-11-21"
#' output: html_document
#' ---
#'
#'   ```{r setup, include=FALSE}
#' knitr::opts_chunk$set(echo = TRUE)
#' ```
#'
#' ### ESERCIZIO 1 (Varianza.)
#'
#' Dei controlli sulla produzione di condensatori hanno permesso al costruttore di definire una variabile casuale X 'capacità di ciascun condensatore' (misurata in pF alla frequenza di 1 kHz) la quale, storicamente, mostra una distribuzione normale e una deviazione standard pari a 180 pF.
#' Un addetto al controllo qualità ha estratto un campione di 23 elementi la cui deviazione standard campionaria è risultata essere pari a 220 pF.
#'
#' 1. E’ possibile affermare, ad un livello $\alpha$ =0.05, che la deviazione standard è davvero pari a 180 pF?
#'
#'   ```R
#' sigma = 180
#' n = 23
#' s = 220
#' alpha = 0.05
#'
#' # H0: sigma = 180 vs H1: sigma != 180
#'
#' sigma_0 = 180
#'
#' chi2_stat = (n-1)*s^2/sigma_0^2
#'
#' chi2_crit = qchisq(c(alpha/2, 1-alpha/2), n-1)
#'
#' if(chi2_stat < chi2_crit[1] | chi2_stat > chi2_crit[2]){
#'   "Rifiuto H0"
#' }else{"NON rifiuto H0"}
#'
#'
#' ```
#'
#' 2. L’addetto in realtà è interessato ad un temuto aumento nella deviazione standard, e si chiede se questo è accidentale o è dovuto ad un difetto intervenuto nel processo di produzione. Ad un livello $\alpha$ =0.05, calcolare il valore della statistica test $\chi^2$ e dire se si accetta o si rifiuta l'ipotesi nulla.
#' ```R
#' # H0: sigma <= 180 vs H1: sigma > 180
#'
#' chi2_crit_new = qchisq(1 - alpha, n-1)
#'
#' if(chi2_stat > chi2_crit_new){
#'   "Rifiuto H0"
#' }else{"NON rifiuto H0"}
#'
#' ```
#'
#' ### ESERCIZIO 2 (Differenza tra media, varianza nota / varianza non nota e diversa.)
#'
#' Un'azienda che produce pannelli di plastica possiede due stabilimenti: uno a Roma e l'altro a Milano. Un cliente, ubicato a Pesaro (a metà strada) e che quindi considera trascurabili le spese di spedizione, è interessato all'acquisto, ma prima vuole valutare se lo spessore di tali pannelli si possa ritenere uguale per entrambi gli stabilimenti. Per fare questo controllo si fa spedire due campioni (uno per ogni stabilimento ed estratti da popolazioni che si suppongono distribuite normalmente) e ne misura lo spessore. Di seguito si riportano i dati delle misurazioni espressi in mm:
#'
#'   ```R
#' roma <- c(228.0, 226.0, 232.0, 227.0, 225.0, 228.0, 225.0, 228.0, 229.0, 230.0)
#' milano <- c(220.0, 220.0, 239.0, 226.0, 225.0, 228.0, 225.0, 229.0, 225.0, 225.0)
#' ```
#'
#' 1. Da precedenti misurazioni, l'azienda sa che lo scarto dei pannelli prodotti a Roma è pari a 2.25 mm mentre quello dei pannelli prodotti a Milano è pari a 2.15mm. A livello $\alpha$ =0.01 valutare se lo spessore dei fogli provenienti dai due stabilimenti possa ritenersi uguale.
#'
#' H0: $\mu_r - \mu_m = 0 \rightarrow \delta_{r-m} = 0$
#'
#' vs
#'
#' H1: $\mu_r - \mu_m \neq 0$
#'
#' $Z_{stat} = \frac{(\bar{X}-\bar{Y})-(\mu_X-\mu_Y)}{\sqrt{\frac{\sigma^2_X}{n_X}+\frac{\sigma^2_Y}{n_Y}}}$
#'
#' ```R
#'
#' # H0: mu_r - mu_m = 0 vs H1: mu_r - mu_m != 0
#'
#' # delta_rm = 0
#'
#' alpha = 0.01
#' n_r = length(roma)
#' n_m = length(milano)
#'
#' xbar = mean(roma)
#' ybar = mean(milano)
#'
#' sigma_r = 2.25
#' sigma_m = 2.15
#'
#' z_stat = ((xbar-ybar) - 0)/sqrt(sigma_r^2/n_r+sigma_m^2/n_m)
#'
#' z_crit = qnorm(c(alpha/2,1-alpha/2))
#'
#' if(z_stat < z_crit[1] | z_stat > z_crit[2]){
#'   print("Rifiuto H0")
#' } else{ print("NON rifiuto H0")}
#'
#' # pvalue = p(Z > z_stat) + p(Z < -z_stat)
#'
#' (pvalue = (1-pnorm(z_stat))*2)
#' # oppure
#' (pvalue = (1-pnorm(z_stat)) + (pnorm(-z_stat)))
#'
#' if(pvalue < alpha){ "Rifiuto H0"}else{"NON rifiuto H0"}
#'
#' ```
#'
#' 2.	Si supponga invece di non conoscere le precedenti varianze provenienti da precedenti misurazioni, per via di una interruzione del server che gestisce la repository dove erano contenute queste informazioni, e che quindi bisogna basarsi sulle varianze campionarie. A livello $\alpha$ =0.01 si ottiene lo stesso risultato?
#' ```R
#'
#' alpha = 0.01
#'
#' # devo usare le varianze campionarie
#' varx = var(roma)
#' vary = var(milano)
#'
#' # e la t
#' t_stat = ( (xbar-ybar) - 0 )/sqrt(varx/n_r+vary/n_m)
#'
#' # con gradi di libertà pari a ...
#' v = (varx/n_r+vary/n_m)^2 / ((varx/n_r)^2/(n_r-1) + (vary/n_m)^2/(n_m-1))
#'
#' v = round(v)
#'
#' t_crit = qt(c(alpha/2, 1-alpha/2), v)
#'
#' if(t_stat < t_crit[1] |t_stat > t_crit[2]){ "Rifiuto H0"}else{"NON rifiuto H0"}
#'
#' ```
#'
#' ### ESERCIZIO 3 (Differenza tra medie varianze non note ma uguali.)
#'
#' Un preparatore atletico di una polisportiva di dilettanti deve valutare due nuovi metodi di allenamento (tipo A e tipo B). Per fare questo seleziona 18 atleti di età compresa fra i 20 ed i 40 anni così ripartiti: 10 giocatori di calcio e 8 giocatori di basket. Ai giocatori di calcio viene assegnato il programma di allenamento di tipo A, mentre ai giocatori di basket quello di tipo B. Infine, i giocatori vengono valutati tramite il test di Cooper, che prevede di correre su un percorso piano per dodici minuti cercando di coprire la massima distanza possibile.
#' Per i 10 giocatori di calcio la media campionaria è risultata essere 2.72 km (con scarto campionario di 0.50), per gli 8 giocatori di basket la media campionaria è stata di 2.62 (scarto campionario di 0.60). Si supponga che gli scarti di popolazione siano uguali.
#'
#' Ad un livello $\alpha$ =0.01 dire se esiste differenza fra i due tipi di allenamento. Calcolare, pertanto, la statistica test e dire se si accetta o meno l'ipotesi nulla.
#'
#' Ricordate che, se le varianze sono ignote ma uguali:
#'
#'   $s_p = \sqrt{\frac{(n_1 - 1)s_1^2 + (n_2 - 1)s_2^2}{n_1 + n_2 - 2}}$
#'
#'   ```R
#'
#' # H0: mu_A - mu_B = 0 vs H1: mu_A - mu_B != 0
#'
#' alpha = 0.01
#'
#' # le varianze NON sono note, quindi usiamo la statistica T-Student
#'
#' nC = 10; nB = 8
#'
#' xbarC = 2.72; sC = 0.5
#' xbarB = 2.62; sB = 0.6
#'
#' # Gli scarti di popolazione sono supposti uguali:
#' sp2 = ((nC - 1) * sC^2 + (nB - 1) * sB^2) / (nC + nB - 2)
#'
#' t_stat = ( (xbarC-xbarB)) / sqrt(sp2*(1/nC+1/nB))
#'
#' t_crit = qt(c(alpha/2, 1-alpha/2), nC+nB-2)
#'
#' if(t_stat < t_crit[1] | t_stat > t_crit[2]){ "Rifiuto H0"}else{"NON rifiuto H0"}
#'
#' ```
#'
#'
#' ### ESERCIZIO 4 (Differenza tra medie campioni appaiati.)
#'
#' Lo stesso preparatore atletico decide di sottoporre gli 8 giocatori di basket ad un periodo di allenamento intensivo allo scopo di uniformare il loro livello a quello dei calciatori. Seguono i dati rilevati prima e dopo il periodo di allenamento:
#'
#'   | Giocatore |   1  |   2  |   3  |   4  |   5  |   6  |   7  |   8  |
#'   |-----------|------|------|------|------|------|------|------|------|
#'   | Prima     | 2.60 | 2.50 | 2.75 | 2.44 | 2.30 | 2.65 | 2.62 | 2.72 |
#'   | Dopo      | 2.65 | 2.55 | 2.90 | 2.40 | 2.45 | 2.70 | 2.57 | 2.80 |
#'
#'
#'   Ad un livello $\alpha$ =0.05 dire se l’allenamento abbia avuto un effetto positivo significativo sulle performance dei giocatori.
#'
#' ```R
#'
#' alpha = 0.05
#' n = 8
#'
#' prima <- c(2.6,	2.5,	2.75,	2.44,	2.3,	2.65,	2.62,	2.72)
#' dopo <- c(2.65,	2.55,	2.9,	2.4,	2.45,	2.7,	2.57,	2.8)
#'
#' dif = dopo - prima
#' dbar = mean(dif)
#' ds2 = var(dif)
#'
#' # H0: delta <= 0 vs H1: delta > 0
#'
#' t_stat = (dbar - 0)/sqrt(ds2/n)
#'
#' t_crit = qt(1-alpha, n-1)
#'
#' if(t_stat > t_crit){ "Rifiuto H0"}else{"NON rifiuto H0"}
#'
#' ```
#'
#'
#' ### ESERCIZIO 5
#'
#' In uno studio per stimare la proporzione tra chi è a favore della costruzione di una centrale nucleare in un paese alpino italiano al confine con la Francia, si riscontra che sono a favore 62 cittadini su 100 svizzeri e 56 su 120 italiani.
#' La differenza tra la proporzione di favorevoli nei campioni provenienti dalle due nazionalità è significativamente diversa? Effettuare un test ad un livello del 90%.
#'
#' $Z_{stat} = \frac{(\hat{P}_X - \hat{P}_Y)-0}{\sqrt{\hat{p}_0  (1-\hat{p}_0)/n_X + \hat{p}_0  (1-\hat{p}_0)/n_Y}}$
#'
#'   $\hat{p}_0 = \frac{n_X \hat{P}_X + n_Y \hat{P}_Y}{n_X+n_y}$
#'
#'   ```R
#'
#' # H0: p_it - p_ch = 0 vs H1: p_it - p_ch != 0
#'
#' n_it = 120
#' n_ch = 100
#'
#' phat_it = 56/n_it
#' phat_ch = 62/n_ch
#'
#' alpha = 1-0.9
#'
#' p0 = (n_it * phat_it + n_ch * phat_ch)/(n_it + n_ch)
#' p0 = (56+62)/(n_it + n_ch)
#'
#'
#' z_stat = ( (phat_ch - phat_it) - 0 ) / sqrt(p0*(1-p0)/n_it + p0*(1-p0)/n_ch)
#'
#' z_crit = qnorm(c(alpha/2, 1-alpha/2))
#'
#' if(z_stat < z_crit[1] | z_stat > z_crit[2] ){
#'   "Rifiuto H0"
#' }else{"NON rifiuto H0"}
#'
#'
#' ```
#'
#'
#' @param data Il parametro che viene passato alla funzione di esempio.
#' @return Una struttura dipendente dal comportamento della funzione implementata.
#' @examples
#' # Inserisci qui un esempio dell'uso della funzione.
#' @export
esercitazioni <- function(data) {
  # Implementazione della funzione
  return(NULL)
}
