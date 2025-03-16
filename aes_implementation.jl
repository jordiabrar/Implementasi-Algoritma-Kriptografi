using Cryptography, Base64

# Generate kunci AES (256-bit)
key = rand(UInt8, 32)  # 256-bit key
iv = rand(UInt8, 16)   # Initialization Vector (IV)

# Fungsi enkripsi AES
function encrypt_aes(message, key, iv)
    cipher = Cipher("AES", key, iv)
    encrypted_data = encrypt(cipher, message)
    return base64encode(encrypted_data)  # Encode to Base64 for readability
end

# Fungsi dekripsi AES
function decrypt_aes(encrypted_message, key, iv)
    cipher = Cipher("AES", key, iv)
    decrypted_data = decrypt(cipher, base64decode(encrypted_message))
    return String(decrypted_data)
end

# Pesan yang akan dienkripsi
message = "This is a super secret AES message!"

# Enkripsi pesan
ciphertext = encrypt_aes(message, key, iv)
println("Encrypted AES Message: ", ciphertext)

# Dekripsi pesan
decrypted_message = decrypt_aes(ciphertext, key, iv)
println("Decrypted AES Message: ", decrypted_message)
