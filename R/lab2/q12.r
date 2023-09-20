tpn <- function(prime.num){ # nolint

    if (prime.num == 2) {
        print("PRIME")
    } else {

    if (prime.num %% (2:(prime.num - 1)) != 0) {
        print("PRIME")

    } else { 
        print("NOT PRIME")

}}}