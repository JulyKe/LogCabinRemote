#include <fstream>
#include <iostream>

#ifndef EVENTINTERCEPTOR_H_
#define EVENTINTERCEPTOR_H_

class EventInterceptor{
private:
	int myNode;
	int toNode;
	int eventMode;
	int eventType;
	int myStateInt;
	int currentTerm;
	int eventId;
	static bool isExit;
	std::ifstream configFile;
	std::ofstream file;
	std::string fileDir;
	std::string prefix;
	std::string myState;
	std::string filename;
	bool samcResponse;

private:
	void commitEvent();
	void waitAck();
	void informSteadyState();
	void updateState();
	std::string getStateString(int state);
	std::string getIPCDIR();
	std::string createFilename();
	int getHash();

public:
	EventInterceptor(int senderNode, int recvNode, int state, int eventMode, int eventType, int currentTerm);
	EventInterceptor(int senderNode, int state, int currentTerm);
	bool getSAMCResponse();
	static void exitNow();
};

#endif /* EVENTINTERCEPTOR_H_ */
