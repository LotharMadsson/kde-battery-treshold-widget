#include "scriptlauncher.h"

int main ()
{
    ScriptLauncher launcher;
    QDeclarativeContext *context = view->rootContext();
    context->setContextProperty("scriptLauncher", &launcher);
    
    return 0
}