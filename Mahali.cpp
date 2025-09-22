#include <iostream>
using namespace std;

int main() {
    int cattle;
    cout << "Enter the number of cattle: ";
    cin >> cattle;

    if (cattle < 5) {
        cout << "Not enough for bohali." << endl;
    } else if (cattle >= 5 && cattle <= 20) {
        cout << "Small herd." << endl;
    } else if (cattle > 20 && cattle <= 100) {
        cout << "Wealthy cattle owner." << endl;
    } else {
        cout << "Chief-level wealth!" << endl;
    }

    return 0;
}
