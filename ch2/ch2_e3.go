package main 

import "fmt"
func main(){
	var b byte = 'B'
	var smallI int32 = 4294967295
	var smallI = smallI + 1
	var bigI int64 = 18446744073709551615
	var bigI = bigI + 1
	fmt.Println(smallI, bigI)
}