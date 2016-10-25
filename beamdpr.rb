# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Beamdpr < Formula
  desc "Transform and combine egsphsp (EGS phase space) files"
  homepage "https://github.com/henrybaxter/beamdpr"
  url "https://github.com/henrybaxter/beamdpr/archive/0.1.3.tar.gz"
  version "0.1.3"
  sha256 "d875770c9c766c9cf0b402322b97897ab5e5e151c7327a20af64d758a30fd47e"
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
