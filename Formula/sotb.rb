class Sotb < Formula
  desc "Shadow of the Blitz parallax scrolling demo"
  homepage "https://github.com/lra/sotb"
  url "https://github.com/lra/sotb/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "7533b55afff0b90312b2ecb5d0e069752fad41ffa92f19668b1e0a20f442fff0"

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "sdl3"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # ponytail: GUI app, opening a window in CI isn't possible; existence check only
    assert_predicate bin/"sotb", :executable?
  end
end
