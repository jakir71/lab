#include<bits/stdc++.h>
using namespace std;
int arr_key[100000];
int modInverse(int k)
{
    for(int i=1; i<26; i++)
        if((i*k) % 26 == 1)
            return i;

    return -1;
}
string encrypt(string plain_text, int key1,int key2)
{
    string cipher_text = "";

    int n = plain_text.size();
    for(int i = 0; i < n; i++){
        char c = (((plain_text[i]-'a')*key1)+key2)%26 + 'a';
        cipher_text += c;
    }
    return cipher_text;
}
string decrypt(string cipher_text, int key1,int key2)
{
    string plain_text = "";
    int n = cipher_text.size();
    int mod = modInverse(key1);
    for(int i = 0; i < n; i++){
        int x = cipher_text[i]-'a' - key2;
        x = (x+26)%26;
        x *= mod;
        x %= 26;

        plain_text += (x+'a');
    }
    return plain_text;
}
int main()
{
    //freopen("inp.txt","r", stdin);
    //freopen("out.txt","w", stdout);
	string plain_text;
	int key1, key2;
	cin >> plain_text >> key1 >> key2;
	int n = plain_text.size();
	while(__gcd(key1,26) != 1){
        cout << "Decryption Cannot be possible with this key.\n";
        cout << "Input another Key: ";
        cin >> key1;
    }
	string cipher_text = encrypt(plain_text,key1,key2);
	for(int i = 0; i < n; i++){
		cipher_text[i] = toupper(cipher_text[i]);
	}
	cout << "cipher text: " << cipher_text << endl;
	for(int i = 0; i < n; i++){
		cipher_text[i] = tolower(cipher_text[i]);
	}
	plain_text = decrypt(cipher_text,key1, key2);
	cout << "plain text: " << plain_text << "\n";

	return 0;
}

