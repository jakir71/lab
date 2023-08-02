#include <bits/stdc++.h>
using namespace std;

int public_key;
int private_key;
int n;

void setkeys(int p1, int p2)
{
    n = p1 * p2;
    int fi = (p1-1)*(p2-1);
    int e = 4;
    while (__gcd(e, fi) != 1)
        e++;
    public_key = e;

    int d = 2;
    while ((d * e) % fi != 1)
        d++;
    private_key = d;
}
long long encrypt(long long p)
{
    int e = public_key;
    long long enc = 1;

    while (e--)
        enc = (enc * p) % n;

    return enc;
}
long long decrypt(int c)
{
    int d = private_key;
    long long dec = 1;
    while (d--)
        dec = (dec * c) % n;

    return dec;
}

int main()
{
    int p1, p2;
    cout << "Enter two prime numbers: ";
    cin >> p1 >> p2;
    setkeys(p1, p2);

    cout << "Public Key Pair: {" << public_key << ", " << n << " }" << endl;
    cout << "Private Key Pair: {" << private_key << ", " << n << " }" << endl;

    long long p;
    cout << "Enter the plaintext: ";
    cin >> p;

    long long cipher = encrypt(p);
    cout << "Ciphertext: " << cipher << endl;

    cout << "Plaintext: " << decrypt(cipher) << endl;
    return 0;
}
