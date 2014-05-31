require 'formula'

class PythonMecab < Formula
  homepage 'http://mecab.googlecode.com/svn/trunk/mecab/doc/index.html'
  url 'https://mecab.googlecode.com/files/mecab-python-0.996.tar.gz'
  sha1 'b7801d78b4def5118903f3d7b97968b106aa8ea8'

  depends_on 'python'
  depends_on 'mecab'
  depends_on 'mecab-ipadic'

  def install
    system 'CFLAGS=-Qunused-arguments' 'CPPFLAGS=-Qunused-arguments' 'python', 'setup.py', 'install'
  end
end
