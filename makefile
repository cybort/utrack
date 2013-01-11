CXX=clang++

CXX_FLAGS=-std=c++11 -stdlib=libc++

utrack: main.cpp swarm.cpp swarm.hpp messages.hpp
	$(CXX) -o utrack main.cpp swarm.cpp -lcrypto -g -O2 $(CXX_FLAGS)

udp_test: test_announce.cpp
	$(CXX) -o udp_test test_announce.cpp -g -O2 $(CXX_FLAGS)

all: utrack udp_test

