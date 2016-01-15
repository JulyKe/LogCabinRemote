#!/bin/bash
g++ -std=c++11 -shared -o libraftconsensus.so RaftConsensus.cc -I/home/jeff/Programs/logcabin -I/usr/lib/jvm/java-8-oracle/include/linux -I/usr/lib/jvm/java-8-oracle/include -lprotobuf -fPIC
rm /home/jeff/Programs/logcabin/jef_libs/libraftconsensus.so || true
mv /home/jeff/Programs/logcabin/Server/libraftconsensus.so  /home/jeff/Programs/logcabin/jef_libs/