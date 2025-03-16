using Cryptography

# Generate kunci RSA (2048-bit)
private_key = RSAKeyPair(2048)
public_key = private_key.public_key

# Pesan yang akan dienkripsi
message = "Hello, this is a secret message!"

# Enkripsi menggunakan kunci publik
ciphertext = encrypt(public_key, message)

println("Encrypted Message: ", ciphertext)

# Dekripsi menggunakan kunci privat
decrypted_message = decrypt(private_key, ciphertext)

println("Decrypted Message: ", decrypted_message)
