test : all
	./time_all.sh
all : fizzbuzz.clang fizzbuzz.clang++ fizzbuzz.gcc fizzbuzz.g++
fizzbuzz.clang :
	clang -fuse-ld=lld -o fizzbuzz.clang fizzbuzz.c
fizzbuzz.clang++ :
	clang++ -fuse-ld=lld -o fizzbuzz.clang++ fizzbuzz.cxx
fizzbuzz.gcc :
	gcc -fuse-ld=gold -o fizzbuzz.gcc fizzbuzz.c
fizzbuzz.g++ :
	g++ -fuse-ld=gold -o fizzbuzz.g++  fizzbuzz.cxx
clean :
	rm -f fizzbuzz.clang fizzbuzz.clang++ fizzbuzz.gcc fizzbuzz.g++ timing.log
