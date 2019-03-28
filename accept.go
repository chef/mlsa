package main

import (
	"fmt"
	"os"
	"time"
)

const licenseMsg = `
=========================================================================

Use of this Software is subject to the terms of the Chef Online Master
License and Services Agreement. You can find the latest copy of the
agreement here:

https://www.chef.io/online-master-agreement

=========================================================================
`

func main() {
	if len(os.Args) > 1 && (os.Args[1] == "true" || os.Args[1] == "1") {
		os.Exit(0)
	}
	fmt.Print(licenseMsg)
	for {
		time.Sleep(5 * time.Second)
	}
}
