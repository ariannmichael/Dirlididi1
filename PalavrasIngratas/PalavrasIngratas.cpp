#include<iostream>
#include<string>

using namespace std;

int main() {
	int cont = 0;
	bool ingrata = true;
	string entrada;
	
	while(cont < 3) {
		cin >> entrada;
		ingrata = true;
		for(unsigned int i = 0; i < entrada.length(); i++) {
			if(entrada[i] == 'a' || entrada[i] == 'e' || entrada[i] == 'i' || entrada[i] == 'o' || entrada[i] == 'u') {
				ingrata = false;
				break;
			}	
		}
		
		if(ingrata == true) {
			cont++;
			cout << entrada << endl;
		}
		
	}	
	
	return 0;
}
