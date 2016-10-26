# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Beamdpr < Formula
  desc "Transform and combine egsphsp (EGS phase space) files"
  homepage "https://github.com/henrybaxter/beamdpr"
  url "https://github.com/henrybaxter/beamdpr/archive/0.1.4.tar.gz"
  version "0.1.4"
  sha256 "15191705fc5d7a0b202753520dcf00a6dc234c54fb579142b14fa52e4ee60940"
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
