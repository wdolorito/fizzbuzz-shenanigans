#!/usr/bin/node
const limit = 1000
for(let count = 0; count <= limit; count++) {
  let fizz = count % 3
  let buzz = count % 5
  msg = count.toString()
  if(fizz === 0) msg += " Fizz"
  if(buzz === 0) msg += " Buzz"
  console.log(msg)
}
