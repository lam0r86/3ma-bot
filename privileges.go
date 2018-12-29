package main

import (
//	"crypto/rand"
	"fmt"
	"log"
	"os"
	"bufio"
//	"math/big"
)


// Functio for reading Adminfile
func readFile() []string {
    var checkpriv []string

    if file, err := os.Open("admins.txt"); err == nil {
    defer file.Close()

    // create a new scanner and read the file line by line
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
	checkpriv = append(checkpriv, scanner.Text())
    }

    // check for errors
    if err = scanner.Err(); err != nil {
      log.Fatal(err)
	  fmt.Printf("Error: No Permissions")

    }

  } else {
    log.Fatal(err)
  }
// Return Admin
	return checkpriv
}
