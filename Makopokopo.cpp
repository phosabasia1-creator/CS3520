#include <iostream>
using namespace std;

int main() {
    int litres;
    cout << "Enter the quantity of grains in litres: ";
    cin >> litres;

    int makopokopo = litres / 20;   // 1 makopokopo = 20L
    int remainder = litres % 20;

    cout << "Number of makopokopo (20L sacks): " << makopokopo << endl;
    cout << "Remaining litres: " << remainder << endl;

    return 0;
}
