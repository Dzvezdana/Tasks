#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include <map>

class Logger {
    int cnt;
public:
    Logger () {}
    void log();

};

void Logger::log() {

//Logger logg;

typedef std::multimap<time_t, std::string> Numbers;
    Numbers numbers;
    short counter = 1;

    std::cout << "Enter numbers or \"quit\" to stop" << std::endl;
    for (std::string line;;)
    {
        std::cout << "Enter number " << counter << " -> ";
        getline(std::cin, line);

        if (line.empty())
        {
            continue;
        }
        else if (line.compare("quit") == 0)
        {
            break;
        }

        else if (line.compare("1") == 0)
        {
         line = "True";
        }

        else if (line.compare("0") == 0)
        {
         line = "False";
        }

        numbers.insert(std::pair<time_t, std::string>(time(0), line));

        counter++;
    }

    std::ofstream outputFile;
    outputFile.open("/home/arsovska/log.txt", std::ios::app);
        cnt = 1;
    for (Numbers::const_iterator it = numbers.begin(); it != numbers.end(); it++)
    {
        outputFile << cnt << "." << " " << it->second << "," << " " << it->first << "\n";
        cnt ++;
        
    }

    outputFile.close();}

int main(int argc, char** argv)
{   
    Logger().log();
    return 0;

}
