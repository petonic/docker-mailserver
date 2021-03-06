#!/usr/bin/env bats

@test "http connection to manager web interface" {
    curl -L http://web/manager/ | grep "Email address"
    [ "$?" -eq 0 ]
}

@test "http connection to webmail interface" {
    curl http://web/webmail/ | grep "ispmail-logo"
    [ "$?" -eq 0 ]
}
