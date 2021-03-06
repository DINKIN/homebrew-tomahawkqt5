require 'formula'

class Liblastfm < Formula
  head 'git://github.com/lastfm/liblastfm.git'
  url 'https://github.com/lastfm/liblastfm/archive/1.0.9.tar.gz'
  sha256 '5276b5fe00932479ce6fe370ba3213f3ab842d70a7d55e4bead6e26738425f7b'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  # deps for the fingerprinting lib
  # depends_on 'fftw'
  # depends_on 'libsamplerate'

  def install
    system "cmake  . -DBUILD_WITH_QT4=OFF -DBUILD_FINGERPRINT=OFF -DBUILD_TESTS=OFF #{std_cmake_args}"
    system "make install"
  end
end
