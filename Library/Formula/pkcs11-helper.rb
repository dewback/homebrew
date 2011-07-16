require 'formula'

class Pkcs11Helper < Formula
  url 'http://www.opensc-project.org/files/pkcs11-helper/pkcs11-helper-1.08.tar.bz2'
  homepage 'http://www.opensc-project.org/opensc/wiki/pkcs11-helper'
  head 'http://www.opensc-project.org/svn/pkcs11-helper/trunk/'
  md5 '3ef571961c7f2ebf1f4b1230f36a524f'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
