.onLoad = function(libname, pkgname) {

  utils::globalVariables(c("duckdb_disconnect_R", "duckdb_prepare_R",
                           "duckdb_bind_R", "duckdb_ptr_to_str",
                           "duckdb_connect_R"))
}
