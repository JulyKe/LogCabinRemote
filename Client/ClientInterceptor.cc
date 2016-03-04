/*
 * ClientInterceptor.cc
 *
 *  Created on: Feb 29, 2016
 *      Author: jeff
 */
#include "Core/Debug.h"
#include "Client/ClientInterceptor.h"
#include <thread>         // std::this_thread::sleep_for
#include <chrono>         // std::chrono::seconds

ClientInterceptor::ClientInterceptor(int sendNode, int recvNode, int eventMode, int eventType, int sendState, int term){
	int hashId = getHash(sendNode, recvNode, eventMode, eventType, sendState, term);
	fileDir = getRPCDir();
	filename = getFilename(hashId);
	std::string newFileName = fileDir + "/new/" + filename;

	file.open(newFileName.c_str());
	file << "eventMode=2" << std::endl;
	file << "sendNode=3" << std::endl;
	file << "recvNode=3" << std::endl;
	file << "eventType=0" << std::endl;
	file << "sendNodeState=Client" << std::endl;
	file << "sendNodeStateInt=3" << std::endl;
	file << "hashId=" << hashId << std::endl;
	file << "currentTerm=0" << std::endl;
	file.close();

	commitEvent();
	waitAck();
}

void ClientInterceptor::exitNow(){
	isExit = true;
}

int ClientInterceptor::getHash(int sendNode, int recvNode, int eventMode, int eventType, int sendState, int term){
	int prime = 19;
	int hash = 1;
	hash = prime * hash + sendNode;
	hash = prime * hash + recvNode;
	hash = prime * hash + sendState;
	hash = prime * hash + eventMode;
	hash = prime * hash + eventType;
	hash = prime * hash + term;
	return hash;
}

std::string ClientInterceptor::getRPCDir(){
	std::ifstream configFile;
	std::string inputs;
	std::string prefix = "RPCDIR=";
	configFile.open("/home/jeff/Programs/logcabin/config/config");
	if(configFile.is_open()){
		while(getline (configFile, inputs)){
		}
		configFile.close();
	}
	return inputs.substr(prefix.size());
}

std::string ClientInterceptor::getFilename(int hashId){
	int count = 0;
	std::string filename = "raft-" + std::to_string(hashId) + "-" + std::to_string(count);
	std::string filePath = fileDir + "/new/" + filename;
	std::string filePath2 = fileDir + "/send/" + filename;
	std::ifstream file(filePath.c_str());
	std::ifstream file2(filePath2.c_str());
	while(file.good() || file2.good()) {
		count++;
		filename = "raft-" + std::to_string(hashId) + "-" + std::to_string(count);
		filePath = fileDir + "/new/" + filename;
		filePath2 = fileDir + "/send/" + filename;
		file.open(filePath.c_str());
		file2.open(filePath2.c_str());
	}
	return filename;
}

void ClientInterceptor::commitEvent(){
	std::string moveFile = "mv " + fileDir + "/new/" + filename + " " +
			fileDir + "/send/" + filename;
	const int file_err = system(moveFile.c_str());
	if (-1 == file_err){
		printf("Error moving client file\n");
	}
	NOTICE("[Jef] %s", moveFile.c_str());
}

void ClientInterceptor::waitAck(){
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


bool ClientInterceptor::isExit = false;
