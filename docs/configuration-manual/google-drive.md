https://wiki.debian.org/CreatePackageFromPPA
https://github.com/astrada/google-drive-ocamlfuse
https://linuxconfig.org/install-packages-from-an-ubuntu-ppa-on-debian-linux

* Ensure devscripts apt package is installed 
* Go https://launchpad.net/~alessandro-strada/+archive/ubuntu/ppa -> Technical details about this PPA -> deb-src http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu hirsute main 
> echo "deb-src http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu hirsute main" | sudo tee /etc/apt/sources.list.d/google-drive-ocamlfuse.list
> sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  9EA4D6FCA5D37A5D1CA9C09AAD5F235DF639B041 


* Install dependencies
> sudo apt install dh-ocaml ocaml-nox dune libextlib-ocaml-dev libgapi-ocaml-dev  libfuse-ocaml-dev  libsqlite3-ocaml-dev libfuse-dev

# ALL THE ABOVE INSTRUCTIONS FAILED. KEEPING FOR REFERENCE 
# SEE WORKING BELOW 
https://github.com/astrada/google-drive-ocamlfuse/wiki/Installation


# mount commands
> google-drive-ocamlfuse -label primary gdrive/primary/

> google-drive-ocamlfuse -label rutgers gdrive/rutgers/
