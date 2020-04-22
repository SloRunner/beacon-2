sudo ./autogen.sh
sudo mkdir db4
sudo wget -c 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'
sudo tar -xzvf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix/
sudo ../dist/configure --enable-cxx --disable-shared --with-pic --prefix=`pwd`/db4
sudo make install
cd ../../
sudo ./autogen.sh
sudo ./configure LDFLAGS="-L`pwd`/db4/lib/" CPPFLAGS="-I`pwd`/db4/include/"
sudo make -j2
