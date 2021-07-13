#include "scriptlauncher.h"
#include <string>

ScriptLauncher::ScriptLauncher(QObject *parent) :
    QObject(parent),
    m_process(new QProcess(this))
{
}

void ScriptLauncher::launchScript(int value, string batteryName)
{
    std::string stringValue = std::to_string(value);
    std::string script = "sh ../../scripts/bat.sh ";
    std::string command = script + stringValue + " " + batteryName;

    m_process->start(command);
}