#include<bits/stdc++.h>
using namespace std;
string encryption(string s, int k)
{
    int n = s.length();
    for(int i = 0; i < n; i++){
        s[i] = (s[i] - 'a' + k)%26 + 'A';
    }
    return s;
}
string decryption(string s, int k)
{
    int n = s.length();
    for(int i = 0; i < n; i++){
        s[i] = (s[i] - 'A' -k +26)%26+'a';
    }
    return s;
}
int main()
{
    freopen("inp.txt","r", stdin);
    string plain_text;
    int key;
    cin >> plain_text >> key;
    string cipher_text = encryption(plain_text,key);
    cout << "Cipher Text : " << cipher_text << "\n";
    plain_text = decryption(cipher_text,key);
    cout << "Plain Text : " << plain_text << "\n";

    return 0;
}
