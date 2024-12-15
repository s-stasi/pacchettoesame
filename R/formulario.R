#' ## DISTRIBUZIONI CAMPIONARIE E STIMATORI PUNTUALI
#' ## MEDIA CAMPIONARIA
#' ```R
#' xbar = (1/n) * sum(xi)
#'
#' # media e varianza
#' mu_xbar = mu_x
#' sigma2_xbar = sigma2_x / n
#' ```
#'
#' ## PROPORZIONE CAMPIONARIA
#' ```R
#' p_hat = x/n
#' ```
#'
#' ## VARIANZA CAMPIONARIA
#' ```R
#' s2 = 1/(n*(n-1)) * (n*sum(xi^2) - (sum(xi))^2 )
#'
#' # media e varianza
#' E_s2 = sigma^4
#' V_s2 = (2*sigma^4) / (n-1)
#' ```
#'
#' ### D. CHI-QUADRO
#' ```R
#' chi2 = (s2*(n-1)) / sigma2
#'
#' # media e varianza
#' mu = v
#' sigma2 = 2*v
#'
#' # esempio: trovare chi2(0.025) quando v = 15
#' # x = 0.025
#' # v = 15
#' # qchisq(1-x, v)
#' ```
#'
#'
#' ## STIMATORI
#' DISTORSIONE = E(T) - T --> stimatore non distorto quando E(T) = mu
#' EFFICIENZA --> stimatore non distorto con varianza minore
#' --> stimatore distorto con EQM minore. EQM = V(T) + D(T)^2
#' varianza = E(T^2) - E(T)^2
#'
#'
#'
#' # STIMA INTERVALLARE
#' 1 - alpha : livello di confidenza
#' ## IC MEDIA
#' ```R
#' # VARIANZA NOTA --> z
#' z_a2 = qnorm(1-alpha/2)
#' lower = xbar - z_a2 * sigma/sqrt(n)
#' upper = xbar + z_a2 * sigma/sqrt(n)
#' IC <- c(lower, upper)
#'
#' # VARIANZA IGNOTA --> uguale ma con t-student
#' t_a2 = qt(1-alpha/2, v)
#'
#' # MARGINE DI ERRORE
#' me = z_a2 * sigma/sqrt(n)
#' n = (z*sigma/me)^2
#' z = me * (sqrt(n)/sigma)
#' me = w/2              # w = ampiezza intervallo
#'
#' # trovare livello di confidenza sapendo estremi IC:
#' # trovo z da me, trovo 1-alpha con pnorm(z), alpha = (1-pnorm(z))*2, livello IC = 1-alpha
#' ```
#'
#' ## IC PROPORZIONE (Z)
#' ```R
#' sigmap = sqrt( (p*(1-p))/n )
#' z_a2 = qnorm(1-alpha/2)
#' lower = p - z_a2 * sigmap
#' upper = p + z_a2 * sigmap
#' IC <- c(lower, upper)
#' ```
#'
#' ## IC VARIANZA (CHI-QUADRO)
#' ```R
#' chi2_lower = qchisq(1-alpha/2, v)
#' chi2_upper = qchisq(alpha/2, v)
#' lower = (s2*(n-1)) / chi2_lower
#' upper = (s2*(n-1)) / chi2_upper
#' IC <- c(lower, upper)
#' ```
#'
#'
#'
#' # VERIFICA DI IPOTESI 1.
#' ## generale
#' H0 : ipotesi da verificare
#' H1 : ipotesi che si vuole dimostrare
#'
#' alpha = livello di significatività;    potenza = 1-beta
#'
#' errore I : rifiuto H0 quando è vera; probabilità alpha; pnorm(z) oppure pnorm(z_lower) + (1-pnorm(z_upper))
#' errore II : non rifiuto H0 quando è falsa; probabilità beta; 1-pnorm(z) oppure pnorm(z_u) - pnorm(z_lower)
#'
#' test:
#'   - unilaterale:    H0: mu = 0 vs. H1: mu ≠ 0
#' - destra:         H0: mu <= 0 vs. H1: mu > 0
#' - sinistra:       H0: mu >= 0 vs. H1: mu < 0
#'
#' pvalue: rifiuto se pvalue < alpha, non rifiuto se pvalue >= alpha; 1-pnorm(z), 1-pt(t,v), 1-chisq(chi2, v)
#'
#' ## MEDIA
#' ```R
#' # VARIANZA NOTA --> z
#' z = (xbar - mu0) / sigma/sqrt(n)
#'
#' # regola di decisione
#' x_crit = mu0 +- z_a * sigma/sqrt(n)
#'
#' z_a = qnorm(alpha)
#'
#' # BI: rifiuto se
#' xbar < mu0 + z_a * sigma/sqrt(n) | xbar > mu0 - z_a * sigma/sqrt(n)
#'
#' # DESTRA: rifiuto se
#' xbar < mu0 + z_a * sigma/sqrt(n) | z > z_a
#'
#' # SINISTRA: rifiuto se
#' xbar < mu0 - z_a * sigma/sqrt(n) | z < -z_a
#'
#'
#'
#' # VARIANZA NOTA --> T-STUDENT
#' t = (xbar - mu0) / s/sqrt(n)
#'
#' # regola di decisione
#' x_crit = mu0 +- t_a * s/sqrt(n)
#'
#' t_a2 = qt(alpha/2, v)
#' t_a = qt(alpha, v)
#'
#' # BI: rifiuto se
#' xbar < mu0 + t_a * sigma/sqrt(n) | xbar > mu0 - t_a * sigma/sqrt(n)
#' # oppure se
#' t < -t_a2 | t > t_a2
#'
#' # DESTRA: rifiuto se
#' xbar < mu0 + t_a * s/sqrt(n) | t > t_a
#'
#' # SINISTRA: rifiuto se
#' xbar < mu0 - t_a * s/sqrt(n) | t < -t_a
#'
#'
#' # DIMENSIONE CAMPIONARIA
#' # test unilaterale
#' n = ((z_a + z_b)^2 * sigma^2) / delta^2    # delta = differenza tra le medie
#'
#' z_a = qnorm(alpha)
#' z_b = qnorm(beta)
#'
#'
#' # test bilaterale
#' n = ((z_a2 + z_b)^2 * sigma^2) / delta^2
#'
#' z_a = qnorm(alpha/2)
#' z_b = qnorm(beta)
#' ```
#'
#'
#'
#' ## PROPORZIONE
#' ```R
#' # Z
#' # p0 dal testo; p_hat = x/n
#' sigmap_hat = sqrt( (p0*(1-p0)) / n )
#' z = (p_hat -p0) / sigmap_hat
#'
#' # media e varianza 0
#' mu = n*p0
#' sigma0 = sqrt(n*p0*(1-p0))
#'
#'
#' # regola di decisione
#' x_crit = z
#'
#' z_a = qnorm(alpha)
#' z_a2 = qnorm(alpha/2)
#'
#' # BI: rifiuto se
#' z < -z_a2 | z > z_a2
#'
#' # DESTRA: rifiuto se
#' z > z_a
#'
#' # SINISTRA: rifiuto se
#' z < -z_a
#' ```
#'
#'
#' ## VARIANZA
#' ```R
#' # CHI-QUADRO
#' chi2 = (s2*(n-1)) / sigma2
#'
#'
#' # regola di decisione
#' x_crit = chi2
#'
#' chi2_a_lower = qchisq(1-alpha)
#' chi2_a_upper = qchisq(alpha)
#'
#' chi2_a2_lower = qchisq(1-alpha/2)
#' chi2_a2_upper = qchisq(alpha/2)
#'
#' # BI: rifiuto se
#' chi2 < chi2_a2_lower | chi2 > chi2_a2_upper
#'
#' # DESTRA: rifiuto se
#' chi2 > chi2_a_upper
#'
#' # SINISTRA: rifiuto se
#' chi2 < chi2_a_lower
#' ```
#'
#'
#' # VERIFICA DI IPOTESI 2.
#'
#' ## MEDIE
#' ### CAMPIONI DIPENDENTI, VARIANZE IGNOTE --> T
#' ```R
#' t = (d - d0) / s/sqrt(n)
#'
#' d = sum(di)/n
#' d0 = mux - muy
#'
#' # regola di decisione
#' x_crit = t
#'
#' t_a2 = qt(alpha/2, v)
#' t_a = qt(alpha, v)
#'
#' # BI: rifiuto se
#' t < -t_a2 | t > t_a2
#'
#' # DESTRA: rifiuto se
#' t > t_a
#'
#' # SINISTRA: rifiuto se
#' t < -t_a
#' ```
#' ### CAMPIONI INDIPENDENTI
#' ```R
#' # VARIANZE NOTE --> Z
#' z = ((xbar - ybar) - d0) / sqrt(sigma2_x/nx + sigma2_y/ny)
#'
#' # regola di decisione
#' x_crit = z
#'
#' z_a2 = qnorm(alpha/2)
#' z_a = qnorm(alpha)
#'
#' # BI: rifiuto se
#' z < -t_a2 | z > z_a2
#'
#' # DESTRA: rifiuto se
#' z > z_a
#'
#' # SINISTRA: rifiuto se
#' z < -z_a
#'
#'
#' # VARIANZE IGNOTE UGUALI --> T
#' t = ((xbar - ybar) - d0) / sqrt(sp2*(1/nx + 1/ny))
#'
#' sp2 = (s2_x*(nx-1) + s2_y*(ny-1)) / (nx + ny -2)
#'
#' # VARIANZE IGNOTE DIVERSE --> T
#' t = ((xbar - ybar) - d0) / sqrt(s2_x/nx + s2_y/ny)
#'
#' v = round( (s2_x^2/nx + s2_y^2/ny)^2 / (((s2_x^2/nx)^2)/(nx-1) + ((s2_y^2/ny)^2)/(ny-1)) )
#'
#' # regola di decisione
#' x_crit = t
#'
#' t_a2 = qt(alpha/2, v)
#' t_a = qt(alpha, v)
#'
#' # BI: rifiuto se
#' t < -t_a2 | t > t_a2
#'
#' # DESTRA: rifiuto se
#' t > t_a
#'
#' # SINISTRA: rifiuto se
#' t < -t_a
#' ```
#'
#'
#'
#' ## PROPORZIONE
#' ```R
#' # Z
#' z = (p1-p2) / sqrt( (p0*(1-p0))/n1 + (p0*(1-p0))/n2 )
#'
#' p1 = x1/n1
#' p2 = x2/n2
#' p0 = (n1*p1 + n2*p2) / (n1 + n2)
#'
#' # regola di decisione
#' x_crit = z
#'
#' z_a = qnorm(alpha)
#' z_a2 = qnorm(alpha/2)
#'
#' # BI: rifiuto se
#' z < -z_a2 | z > z_a2
#'
#' # DESTRA: rifiuto se
#' z > z_a
#'
#' # SINISTRA: rifiuto se
#' z < -z_a
#' ```
#'
#'
#' ## VARIANZA
#' ```R
#' # F-FISHER
#' f = s2_x / s2_y
#'
#' ```
#'
#' @param data Il parametro che viene passato alla funzione di esempio.
#' @return Una struttura dipendente dal comportamento della funzione implementata.
#' @examples
#' # Inserisci qui un esempio dell'uso della funzione.
#' @export
formulario <- function(data) {
  # Implementazione della funzione
  return(NULL)
}

