require 'formula'

class Cloog < Formula
  url 'ftp://gcc.gnu.org/pub/gcc/infrastructure/cloog-0.16.2.tar.gz'
  homepage 'http://www.cloog.org/'
  md5 '83877caaa879c7160063138bb18348e7'

  depends_on 'gmp'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
