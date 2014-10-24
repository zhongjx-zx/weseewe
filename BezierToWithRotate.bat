@echo off
echo #ifndef __%~n0_H__>> %~n0.h
echo #define __%~n0_H__>> %~n0.h
echo:>> %~n0.h
echo #include "cocos2d.h">> %~n0.h
echo:>> %~n0.h
echo USING_NS_CC;>> %~n0.h
echo:>> %~n0.h
echo class %~n0 : public Node{>> %~n0.h
echo public:>> %~n0.h
echo 	%~n0();>> %~n0.h
echo 	~%~n0();>> %~n0.h
echo:>> %~n0.h
echo 	static %~n0* create();>> %~n0.h
echo 	virtual bool init();>> %~n0.h
echo:>> %~n0.h
echo protected:>> %~n0.h
echo:>> %~n0.h
echo private:>> %~n0.h
echo };>> %~n0.h
echo:>> %~n0.h
echo #endif // !__%~n0_H__>> %~n0.h
echo #include "%~n0.h">> %~n0.cpp
echo:>> %~n0.cpp
echo %~n0::%~n0(){>> %~n0.cpp
echo }>> %~n0.cpp
echo:>> %~n0.cpp
echo %~n0::~%~n0(){>> %~n0.cpp
echo }>> %~n0.cpp
echo:>> %~n0.cpp
echo %~n0* %~n0::create(){>> %~n0.cpp
echo     %~n0* obj = new %~n0();>> %~n0.cpp
echo     if(obj ^&^& obj-^>init()){>> %~n0.cpp
echo         obj-^>autorelease();>> %~n0.cpp
echo     } else{>> %~n0.cpp
echo         CC_SAFE_DELETE(obj);>> %~n0.cpp
echo         obj = NULL;>> %~n0.cpp
echo     }>> %~n0.cpp
echo     return obj;>> %~n0.cpp
echo }>> %~n0.cpp
echo:>> %~n0.cpp
echo bool %~n0::init(){>> %~n0.cpp
echo     bool bRet = false;>> %~n0.cpp
echo     do {>> %~n0.cpp
echo         CC_BREAK_IF(!Node::init());>> %~n0.cpp
echo:>> %~n0.cpp
echo         bRet = true;>> %~n0.cpp
echo     } while (0);>> %~n0.cpp
echo     return bRet;>> %~n0.cpp
echo }>> %~n0.cpp
exit