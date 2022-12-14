#' Rename columns of data_expenses to french
#'
#' @param .data Tibble.
#'
#' @return Tibble.
#' @export
#' 
#' @importFrom dplyr mutate case_when rename
#'
#' @examples
#' data(data_expenses_example)
#' data_expenses_example %>% 
#'   rename_expenses_to_fr()
rename_expenses_to_fr <- function(.data) {
  
  .data %>% 
    mutate(real_projected = case_when(
      real_projected == "Real" ~ "R\u00e9el",
      real_projected == "Projected" ~ "Pr\u00e9visionnel",
      TRUE ~ NA_character_
    )) %>% 
    mutate(paid_pending = case_when(
      paid_pending == "Paid" ~ "Pay\u00e9",
      paid_pending == "Pending" ~ "En attente",
      TRUE ~ NA_character_
    )) %>% 
    rename(
      stats::setNames(c("object", "real_projected", "paid_pending", "description", "society", "paymaster", "amount"), 
                      c("Poste de d\u00e9pense", "R\u00e9el ou pr\u00e9visionnel", "Pay\u00e9 ou en attente", "Description", "Destinataire", "Payeur", "Montant") 
                      )
    )
    
} 