#include <iostream>

using namespace std;

int main() {
	int N;
	cin >> N;
	if(N > 20) return 1;
	int matrix[N][N];

	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			cin >> matrix[i][j];
		}
	}

	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			int value = matrix[i][j];
			matrix[i][j] = matrix[j][i];
			matrix[j][i] = value;
		}
	}

	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			cout << matrix[j][i] << " ";
		}

		cout << endl;
	}
}
