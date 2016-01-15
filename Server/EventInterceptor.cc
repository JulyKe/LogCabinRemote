#include "Core/Debug.h"
#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <time.h>
#include <cstdlib>
#include <string>
#include <thread>         // std::this_thread::sleep_for
#include <chrono>         // std::chrono::seconds
#include <Server/EventInterceptor.h>

EventInterceptor::EventInterceptor(int senderNode, int recvNode, int state, int eventMode,
		int eventType, int counterSteadyState){
	myNode = senderNode;
	toNode = recvNode;
	myStateInt = state;
	myState = getStateString(myStateInt);
	this->eventMode = eventMode;
	this->eventType = eventType;
	steadyStateThreshold = counterSteadyState;
	eventId = getHash();
	filename = "raft-" + std::to_string(eventId);
	fileDir = getRPCDIR();

	std::string newFileName = fileDir + "/new/" + filename;
	file.open(newFileName.c_str());
	file << "eventMode=" << this->eventMode << std::endl;
	file << "sendNode=" << myNode << std::endl;
	file << "recvNode=" << toNode << std::endl;
	file << "eventType=" << this->eventType << std::endl;
	file << "sendNodeState=" << myState << std::endl;
	file << "sendNodeStateInt=" << myStateInt << std::endl;
	file.close();

	commitEvent();
	waitAck();
}

EventInterceptor::EventInterceptor(int senderNode, int state){
	myNode = senderNode;
	myStateInt = state;
	myState = getStateString(myStateInt);
	filename = "raftUpdate-" + std::to_string(myNode);
	fileDir = getRPCDIR();

	std::string newFileName = fileDir + "/new/" + filename;
	file.open(newFileName.c_str());
	file << "sendNode=" << myNode << std::endl;
	file << "sendNodeState=" << myState << std::endl;
	file << "sendNodeStateInt=" << myStateInt << std::endl;
	file.close();

	commitEvent();
}

void EventInterceptor::exitNow(){
	isExit = true;
}

void EventInterceptor::commitEvent(){
	std::string moveFile = "mv " + fileDir + "/new/" + filename + " " +
			fileDir + "/send/" + filename;
	const int file_err = system(moveFile.c_str());
	if (-1 == file_err){
		printf("Error moving the file\n");
	}
	NOTICE("[Jef] %s", moveFile.c_str());
}

void EventInterceptor::waitAck(){
	// inform steady state to dmck
	if(steadyStateThreshold == 2){
//		informSteadyState();
	}

	// wait for ack msg
	std::string ackFileName = fileDir + "/ack/" + std::to_string(eventId);
	std::ifstream ackFile(ackFileName.c_str());
	try{
		while(!ackFile.good()) {
			std::this_thread::sleep_for (std::chrono::milliseconds(100));
			ackFile.open(ackFileName.c_str());

			if(isExit){
				return;
			}
		}
	} catch(int e){
		NOTICE("[Jef] Exception: %d", eventId);
	}

	// read message file if needed
	ackFile.open(ackFileName.c_str());
	std::string ackMessage = "";
	if(ackFile.is_open()){
		while(getline (ackFile, ackMessage)){
		}
		ackFile.close();
	}
	NOTICE("[Jef] ack file %s/ack/%d %s", fileDir.c_str(), eventId, ackMessage.c_str());

	// remove ack file
	std::string rmFile = "rm " + fileDir + "/ack/" + std::to_string(eventId);
	const int rmfile_err = system(rmFile.c_str());
	if (-1 == rmfile_err){
		printf("Error deleting the file\n");
	}
	NOTICE("[Jef] %s", rmFile.c_str());
}

void EventInterceptor::informSteadyState(){
	// create steady file
	std::string steadyFilename = "s-" + std::to_string(myNode);
	std::ofstream steadyMsg(fileDir + "/new/" + steadyFilename);
	steadyMsg << "sendNode=" << myNode << std::endl;
	steadyMsg.close();

	// commit steady file
	std::string moveFile = "mv " + fileDir + "/new/" + steadyFilename + " " +
			fileDir + "/send/" + steadyFilename;
	const int file_err = system(moveFile.c_str());
	if (-1 == file_err){
		printf("Error moving steady file\n");
	}
}

std::string EventInterceptor::getStateString(int state){
	std::string result = "";
	switch (state){
		case 0:
			result = "FOLLOWER";
			break;
		case 1:
			result = "CANDIDATE";
			break;
		case 2:
			result = "LEADER";
			break;
	}
	return result;
}

std::string EventInterceptor::getRPCDIR(){
	configFile.open("/home/jeff/Programs/logcabin/config/config");
	prefix = "RPCDIR=";
	if(configFile.is_open()){
		while(getline (configFile, inputs)){
		}
		configFile.close();
	}
	return inputs.substr(prefix.size());
}

int EventInterceptor::getHash(){
	int prime = 31;
	int hash = 1;
	hash = prime * hash + myNode;
	hash = prime * hash + toNode;
	hash = prime * hash + myStateInt;
	hash = prime * hash + eventMode;
	hash = prime * hash + eventType;
	return hash;
}

bool EventInterceptor::isExit = false;
