# Install OpenSSL from source on Mac OS X

# prepare workspace
mkdir -p ~/code/build-from-src/ && cd $_

# download source code
curl -LO https://www.openssl.org/source/openssl-1.1.1d.tar.gz

# expand tar
tar -xzvf openssl-1.1.1d.tar.gz
cd openssl-1.1.1d

# configure, make, install
perl ./Configure --prefix=/usr/local --openssldir=/usr/local/openssl no-ssl3 no-ssl3-method no-zlib
make
make test
sudo make install MANDIR=/usr/share/man MANSUFFIX=ssl

# verify
openssl version
which -a openssl

# clean up
make clean
make distclean
cd ..
rm -fr openssl-1.1.1d
rm openssl-1.1.1d.tar.gz