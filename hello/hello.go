package hello

import "rsc.io/quote"

import "github.com/snapcore/snapd/snap"


func Hello() string {
	snap.IsSnapd("something")
    return quote.Hello()
}