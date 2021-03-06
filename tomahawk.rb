require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Tomahawk < Formula
  homepage ''
  url 'http://download.tomahawk-player.org/tomahawk-0.8.2.tar.bz2'
  head 'git://github.com/tomahawk-player/tomahawk.git'
#  md5 '708602116a849c4739480cf52a98bc1a'

  # required:
  depends_on 'cmake' => :build
  depends_on 'pkgconfig' => :build
  depends_on 'taglib'
  depends_on 'boost'
  depends_on 'gnutls'
  depends_on 'google-sparsehash'
  depends_on 'tomahawk-player/tomahawkqt5/libechonest'
  depends_on 'tomahawk-player/tomahawkqt5/attica'
  depends_on 'tomahawk-player/tomahawkqt5/liblastfm'
  depends_on 'tomahawk-player/tomahawkqt5/qtkeychain'
  depends_on 'tomahawk-player/tomahawkqt5/qca'

  # HEAD ONLY:
  # depends_on 'tomahawk-player/tomahawkqt5/lucenepp'
  # depends_on 'tomahawk-player/tomahawkqt5/jreen'
  # depends_on 'tomahawk-player/tomahawkqt5/websocketpp'
  # depends_on 'tomahawk-player/tomahawkqt5/quazip'
  # depends_on 'tomahawk-player/tomahawkqt5/snorenotify'

  def install
    system "cmake -DBUILD_WITH_QT4=OFF . #{std_cmake_args}"
    system "make install" # if this fails, try separate make/make install steps
    system "exit"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test tomahawk`.
    system "false"
  end
end
