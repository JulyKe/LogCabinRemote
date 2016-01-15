#include "Core/Debug.h"
#include <jni.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h> /* memset */

class JNICaller{
	JNIEnv *env;
	JavaVM *jvm;
	JavaVMOption options[1];
	JavaVMInitArgs vm_args;
	long status;
	//jclass cls;
	//jmethodID int_method, bool_method;

public:
	JNICaller(){
		NOTICE("[C++] JNICaller constructor");
		/*
		cls = NULL;
		int_method = NULL;
		bool_method = NULL;
		*/
		options[0].optionString = (char*)"-Djava.class.path=/home/jeff/Programs/jef-jnic++";
		memset(&vm_args, 0, sizeof(vm_args));
		vm_args.version = JNI_VERSION_1_6;
		vm_args.nOptions = 1;
		vm_args.options = options;
		vm_args.ignoreUnrecognized = 0;
		NOTICE("[C++] JNICaller is going to create JVM");
		status = JNI_CreateJavaVM(&jvm, (void **)&env, &vm_args);
		//env->GetJavaVM(&jvm);
		/*
		if(status >= 0 || env){
			NOTICE("[C++] JNICaller find Sample Class");
			cls = env->FindClass("Sample");
			NOTICE("[C++] JNICaller found Sample Class");
			if(cls != 0){
				int_method = env->GetStaticMethodID(cls, "intMethod", "(I)I");
				if(int_method == 0){
					NOTICE("Error in int_method");
				}
				bool_method = env->GetStaticMethodID(cls, "booleanMethod", "(Z)Z");
				if(bool_method == 0){
					NOTICE("Error in bool_method");
				}

			} else {
				NOTICE("Error in cls creation");
			}
			NOTICE("JVM has been succesfully created");
		} else {
			NOTICE("Error in JNI JVM creation");
		}
		*/

		NOTICE("[C++] JNICaller Initalization ends");
	}

	void hello(){
		NOTICE("[C++] hello JNI");
	}

	void getIntFromJava(int i){
		NOTICE("[C++] getIntFromJava");

		//status = JNI_CreateJavaVM(&jvm, (void **)&env, &vm_args);

		//JNIEnv* myNewEnv;

		NOTICE("[C++] JNICaller find Sample Class");

		//jvm->AttachCurrentThread((void**)&myNewEnv, &vm_args);
		//jvm->AttachCurrentThread((void**)&env, &vm_args);
		if(status < 0){
			NOTICE("[C++] status is minus? %d", status);
		}
		if(!env){
			NOTICE("[C++] env is null?");
		}
		jclass cls = env->FindClass("Sample");
		NOTICE("[C++] JNICaller found Sample Class");
		jmethodID int_method;

		if(cls != 0){
			int_method = env->GetStaticMethodID(cls, "intMethod", "(I)I");
			if(int_method != 0){
				int result = env->CallStaticIntMethod(cls, int_method, i);
				NOTICE("[C++] %d", result);
			} else {
				NOTICE("[C++] but int_method is null");
			}
		} else {
			NOTICE("Error in cls creation");
		}

		jvm->DestroyJavaVM();
	}
};

