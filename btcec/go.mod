module github.com/dashevo/dashd-go/btcec/v2

go 1.17

require (
	github.com/dashevo/dashd-go v0.23.2
	github.com/davecgh/go-spew v1.1.1
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1
)

require github.com/decred/dcrd/crypto/blake256 v1.0.0 // indirect

replace github.com/dashevo/dashd-go => ../
