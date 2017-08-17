#' @import utils
# Make the data available without loading it.

.onAttach  <- function(libname, pkgname) {
  utils::data("CUSTOMERS","EMPLOYEES","OFFICES","ORDERDETAILS","ORDERS","PAYMENTS","PRODUCTLINES","PRODUCTS",package="classic.models",envir = .GlobalEnv)
  packageStartupMessage("
+------------------------------------------------+
|  Classic Models data from Analytics Designer   |
|  Load each table if they do not appear in your |
|  global environment, for example:              |
|  data('CUSTOMERS')                             |
+------------------------------------------------+
")
  packageStartupMessage("Package version: ", utils::packageVersion("classic.models"), "\n")
}
