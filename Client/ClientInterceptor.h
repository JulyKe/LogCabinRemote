/*
 * ClientInterceptor.h
 *
 *  Created on: Feb 29, 2016
 *      Author: jeff
 */

#include <iostream>
#include <fstream>

#ifndef CLIENTINTERCEPTOR_H_
#define CLIENTINTERCEPTOR_H_

class ClientInterceptor{
private:
	std::ofstream file;
	std::string fileDir;
	std::string filename;
	static bool isExit;

private:
	int getHash(int sendNode, int recvNode, int eventMode, int eventType, int sendState, int term);
	std::string getRPCDir();
	std::string getFilename(int hashId);
	void commitEvent();
	void waitAck();

public:
	ClientInterceptor(int sendNode, int recvNode, int eventMode, int eventType, int sendState, int term);
	static void exitNow();

};


#endif /* CLIENTINTERCEPTOR_H_ */
