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

// events
EventInterceptor::EventInterceptor(int senderNode, int recvNode, int state, int eventMode,
		int eventType, int currentTerm){
	myNode = senderNode;
	toNode = recvNode;
	myStateInt = state;
	myState = getStateString(myStateInt);
	this->eventMode = eventMode;
	this->eventType = eventType;
	this->currentTerm = currentTerm;
	eventId = getHash();
	fileDir = getRPCDIR();
	filename = createFilename();

	std::string newFileName = fileDir + "/new/" + filename;
	file.open(newFileName.c_str());
	file << "eventMode=" << this->eventMode << std::endl;
	file << "sendNode=" << myNode << std::endl;
	file << "recvNode=" << toNode << std::endl;
	file << "eventType=" << this->eventType << std::endl;
	file << "sendNodeState=" << myState << std::endl;
	file << "sendNodeStateInt=" << myStateInt << std::endl;
	file << "hashId=" << eventId << std::endl;
	file << "currentTerm=" << this->currentTerm << std::endl;
	file.close();

	commitEvent();
	waitAck();
}

// update status
EventInterceptor::EventInterceptor(int senderNode, int state, int currentTerm){
	myNode = senderNode;
	myStateInt = state;
	myState = getStateString(myStateInt);
	filename = "raftUpdate-" + std::to_string(myNode);
	fileDir = getRPCDIR();

	NOTICE("Node %d updates its state to %s at term %d", myNode, myState.c_str(), currentTerm);

	std::string newFileName = fileDir + "/new/" + filename;
	file.open(newFileName.c_str());
	file << "sendNode=" << myNode << std::endl;
	file << "sendNodeState=" << myState << std::endl;
	file << "sendNodeStateInt=" << myStateInt << std::endl;
	file << "currentTerm=" << currentTerm << std::endl;
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
	// wait for ack msg
	std::string ackFileName = fileDir + "/ack/" + filename;
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
		NOTICE("[Jef] Exception on waiting : %s", filename.c_str());
	}

	// read message file if needed
	ackFile.open(ackFileName.c_str());
	std::string ackMessage = "";
	if(ackFile.is_open()){
		while(getline (ackFile, ackMessage)){
		}
		ackFile.close();
	}
	NOTICE("[Jef] ack file %s/ack/%s %s", fileDir.c_str(), filename.c_str(), ackMessage.c_str());

	// remove ack file
	std::string rmFile = "rm " + fileDir + "/ack/" + filename;
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
		case 3:
			result = "HARD-CRASH";
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

std::string EventInterceptor::createFilename(){
	int count = 0;
	std::string filename = "raft-" + std::to_string(eventId) + "-" + std::to_string(count);
	std::string filePath = fileDir + "/new/" + filename;
	std::string filePath2 = fileDir + "/send/" + filename;
	std::ifstream file(filePath.c_str());
	std::ifstream file2(filePath2.c_str());
	while(file.good() || file2.good()) {
		count++;
		filename = "raft-" + std::to_string(eventId) + "-" + std::to_string(count);
		filePath = fileDir + "/new/" + filename;
		filePath2 = fileDir + "/send/" + filename;
		file.open(filePath.c_str());
		file2.open(filePath2.c_str());
	}
	return filename;
}

int EventInterceptor::getHash(){
	int prime = 19;
	int hash = 1;
	hash = prime * hash + myNode;
	hash = prime * hash + toNode;
	hash = prime * hash + myStateInt;
	hash = prime * hash + eventMode;
	hash = prime * hash + eventType;
	hash = prime * hash + currentTerm;
	return hash;
}

bool EventInterceptor::isExit = false;
