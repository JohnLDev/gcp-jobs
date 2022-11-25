package main

import (
	"fmt"
	"os"
	"time"
)

func main() {

	for i := 1; i < 11; i++ {
		fmt.Println(i)
		time.Sleep(time.Second)
	}
	fmt.Println("Changed")
	os.Exit(0)
}
