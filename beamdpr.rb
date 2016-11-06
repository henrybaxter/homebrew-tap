# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Beamdpr < Formula
  desc "Transform and combine egsphsp (EGS phase space) files"
  homepage "https://github.com/henrybaxter/beamdpr"
  url "https://github.com/henrybaxter/beamdpr/archive/0.1.5.tar.gz"
  version "0.1.5"
  sha256 "26e49456c6f76a39b44c53cb40bae151326360e7cedcfe68104f974fb4608fa3"
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
