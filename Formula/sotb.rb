class Sotb < Formula
  desc "Shadow of the Blitz parallax scrolling demo"
  homepage "https://github.com/lra/sotb"
  url "https://github.com/lra/sotb/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "e2f49e34f881156f8c89fc1e68740bf146edb616393b2e848605cc2c856cfbe8"

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
