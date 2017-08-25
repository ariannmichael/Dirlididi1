#include<iostream>

using namespace std;

int main() {
	int k , i = 1;
	cin >> k;

	while(i <= k/2) {
		cout << i << " " ;
		i += 2 ;
		cout << i << endl;
	}

	return 0;
}
