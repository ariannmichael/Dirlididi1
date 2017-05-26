#include<iostream>
#include<string>

using namespace std;

int main() {
	int qtdLivros;
	string clean;
	cin >> qtdLivros;
	if(qtdLivros > 100) return 1;
	getline(cin, clean);
	string livros[qtdLivros];

	for( int i = 0; i < qtdLivros; i++) {
		string in;
		getline(cin, in);
		livros[i] = in;
	}

	for ( int i = 0; i < qtdLivros; ++i){
		for(int j = 0; j< i; j++) {
			if(livros[i] < livros[j]) {
				string aux = livros[i];
				livros[i] = livros[j];
				livros[j] = aux;
			}
		}
	}

	for ( int i = 0; i < qtdLivros; ++i){
		cout << livros[i] << endl;
	}
	
	return 0;
}
