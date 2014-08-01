ln -sf $HOMEDRIVE$HOMEPATH musa

ln -sf musa/Desktop
ln -sf musa/Downloads
ln -sf musa/Dropbox
ln -sf musa/.gitconfig # Hard-link if soft-link fails
ln -sf /cygdrive/c/*/Git/etc/gitconfig /etc/gitconfig
ln -sf /cygdrive/c/*/Git/bin/curl-ca-bundle.crt /bin/curl-ca-bundle.crt
