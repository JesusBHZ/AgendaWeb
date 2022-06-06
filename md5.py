import hashlib

md5_hash = hashlib.md5()
md5_hash.update(b'Hello World')

print(md5_hash.digest())