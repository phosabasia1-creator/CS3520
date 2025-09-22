#include <iostream>
using namespace std;

int main() {
    int day;
    cout << "Enter day number (1-7): ";
    cin >> day;

    switch (day) {
        case 1: cout << "Mantaha" << endl; break;
        case 2: cout << "Labobeli" << endl; break;
        case 3: cout << "Laboraro" << endl; break;
        case 4: cout << "Labone" << endl; break;
        case 5: cout << "Labohlano" << endl; break;
        case 6: cout << "Moqebelo" << endl; break;
        case 7: cout << "Sontaha" << endl; break;
        default: cout << "Error: Invalid day number!" << endl;
    }

    return 0;
}
