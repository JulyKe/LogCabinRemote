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
	int eventId = getHash(sendNode, recvNode, eventMode, eventType, sendState, term);
	fileDir = getIPCDir();
	filename = getFilename(eventId);
	std::string newFileName = fileDir + "/new/" + filename;

	file.open(newFileName.c_str());
	file << "eventMode=" << eventMode << std::endl;
	file << "sendNode=" << sendNode << std::endl;
	file << "recvNode=" << recvNode << std::endl;
	file << "eventType=" << eventType << std::endl;
	file << "sendNodeState=Client" << std::endl;
	file << "sendNodeStateInt=" << sendState << std::endl;
	file << "eventId=" << eventId << std::endl;
	file << "currentTerm=" << term << std::endl;
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

std::string ClientInterceptor::getIPCDir(){
	std::ifstream configFile;
	configFile.open("/tmp/raft/target-sys.conf");
	std::string prefix = "ipc_dir=";
	std::string inputs;
	std::string ipcdir;
	if(configFile.is_open()){
		while(getline (configFile, inputs)){
			if(inputs.find(prefix) == 0){
				ipcdir = inputs;
			}
		}
		configFile.close();
	}
	return ipcdir.substr(prefix.size());
}

std::string ClientInterceptor::getFilename(int hashId){
	auto ms = std::chrono::duration_cast< std::chrono::milliseconds >(
			std::chrono::system_clock::now().time_since_epoch()
		);
	int count = ms.count() % 100000;
	std::string filename = "raft-" + std::to_string(hashId) + "-" + std::to_string(count);
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
