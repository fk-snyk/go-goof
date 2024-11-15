package main
import (
	"fmt"
	"go-goof/hello"
    "go-goof/handlers"
    "github.com/gin-gonic/gin"
)
func main() {
		fmt.Println(hello.Hello())
        r := gin.Default()
        r.GET("/ping", handlers.Ping)
        r.Run() // listen and serve on 0.0.0.0:8080
}
