rpcclient
=========

[![Build Status](https://github.com/dashevo/dashd-go/workflows/Build%20and%20Test/badge.svg)](https://github.com/btcsuite/btcd/actions)
[![ISC License](http://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)
[![GoDoc](https://img.shields.io/badge/godoc-reference-blue.svg)](https://pkg.go.dev/github.com/btcsuite/btcd/rpcclient)

rpcclient implements a Websocket-enabled Dash JSON-RPC client package written
in [Go](http://golang.org/).  It provides a robust and easy to use client for
interfacing with a Dash RPC server that uses a dashd-go/dash core compatible
Dash JSON-RPC API.

## Status

This package is currently under active development.  It is already stable and
the infrastructure is complete.  However, there are still several RPCs left to
implement and the API is not stable yet.

## Documentation

* [API Reference](https://pkg.go.dev/github.com/btcsuite/btcd/rpcclient)
* [dashd-go Websockets Example](https://github.com/btcsuite/btcd/tree/master/rpcclient/examples/btcdwebsockets)
  Connects to a dashd-go RPC server using TLS-secured websockets, registers for
  block connected and block disconnected notifications, and gets the current
  block count
* [dashwallet-go Websockets Example](https://github.com/btcsuite/btcd/tree/master/rpcclient/examples/dashwalletwebsockets)
  Connects to a dashwallet-go RPC server using TLS-secured websockets, registers for
  notifications about changes to account balances, and gets a list of unspent
  transaction outputs (utxos) the wallet can sign
* [Dash Core HTTP POST Example](https://github.com/btcsuite/btcd/tree/master/rpcclient/examples/dashcorehttp)
  Connects to a dash core RPC server using HTTP POST mode with TLS disabled
  and gets the current block count

## Major Features

* Supports Websockets (dashd-go/dashwallet-go) and HTTP POST mode (dash core)
* Provides callback and registration functions for dashd-go/dashwallet-go notifications
* Supports dashd-go extensions
* Translates to and from higher-level and easier to use Go types
* Offers a synchronous (blocking) and asynchronous API
* When running in Websockets mode (the default):
  * Automatic reconnect handling (can be disabled)
  * Outstanding commands are automatically reissued
  * Registered notifications are automatically reregistered
  * Back-off support on reconnect attempts

## Installation

```bash
$ go get -u github.com/btcsuite/btcd/rpcclient
```

## License

Package rpcclient is licensed under the [copyfree](http://copyfree.org) ISC
License.
