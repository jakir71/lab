#include<bits/stdc++.h>
using namespace std;
char encMap[256], decMap[256];
//string encryption(string plainText);
//string decryption(string cipherText);
string encryption(string plainText)
{
    string cipherText = "";
    int n = plainText.length();
    for(int i=0; i<n; i++)
    {
        cipherText += encMap[plainText[i]];
    }
    return cipherText;
}
string decryption(string cipherText)
{
    string plainText = "";
    int n = cipherText.length();
    for(int i=0; i<n; i++)
    {
        plainText += decMap[cipherText[i]];
    }
    return plainText;
}
int main()
{
    freopen("inp.txt", "r", stdin);

    for(int i=0; i<26; i++)
    {
        char a, b;
        cin >> a >> b;

        encMap[a] = b;
        decMap[b] = a;
    }
    string plainText,cipherText;
    cin >> plainText;
    cipherText = encryption(plainText);
    cout << "The cipherText is: " << cipherText << "\n";
    plainText = decryption(cipherText);
    cout << "The plainText is: " << plainText << "\n";
    return 0;
}
