# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Beamdpr < Formula
  desc "Transform and combine egsphsp (EGS phase space) files"
  homepage "https://github.com/henrybaxter/beamdpr"
  url "https://github.com/henrybaxter/beamdpr/archive/0.2.1.tar.gz"
  version "0.2.1"
  sha256 "3942092d7a3611c5a05d7c6aa97f9f6c9586547a5d801fc22b69d1f4b1e4acc8"
  head "https://github.com/henrybaxter/beamdpr.git"

  depends_on "rust" => :build

  def install
      system "cargo", "build", "--release"
      bin.install "target/release/beamdpr"
  end

  test do
      system "beamdpr", "--help"
  end
end
