#' Calcola media e mediana
#'
#' Questa funzione calcola la media e la mediana dei tempi di reazione a uno stimolante per un campione casuale di soggetti.
#'
#' @param tempi Un vettore numerico che rappresenta i tempi di reazione.
#' @return Una lista contenente media e mediana.
#' @examples
#' tempi <- c(2.5, 3.6, 3.1, 4.3, 2.9, 2.3, 2.6, 4.1, 3.4)
#' calcola_media_mediana(tempi)
#' @export
calcola_media_mediana <- function(tempi) {{
  lista_risultati <- list(
    media = mean(tempi),
    mediana = median(tempi)
  )
  return(lista_risultati)
}}


#' Numero di risposte errate
#'
#' Funzione che analizza il numero di risposte sbagliate in un test con risposta vero-falso.
#'
#' @param risposte Un vettore numerico contenente il numero di errori.
#' @return Un vettore o una tabella di frequenze per l'analisi delle risposte sbagliate.
#' @examples
#' risposte <- c(2, 3, 1, 4, 2, 1, 0, 3, 2, 5)
#' tabella_risposte(risposte)
#' @export
tabella_risposte <- function(risposte) {{
  table(risposte)
}}
