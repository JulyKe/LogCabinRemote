#include <fstream>
#include <iostream>

class EventInterceptor{
private:
	std::ifstream configFile;
	std::ofstream file;
	std::string inputs;
	std::string fileDir;
	std::string prefix;
	std::string myState;
	std::string filename;
	int myNode;
	int toNode;
	int eventMode;
	int eventType;
	int myStateInt;
	int eventId;
	int steadyStateThreshold;
	static bool isExit;

private:
	void commitEvent();
	void waitAck();
	void informSteadyState();
	void updateState();
	std::string getStateString(int state);
	std::string getRPCDIR();
	int getHash();

public:
	EventInterceptor(int senderNode, int recvNode, int state, int eventMode, int eventType,
			int counterSteadyState);
	EventInterceptor(int senderNode, int state);
	static void exitNow();
};
