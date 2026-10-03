class Cube < Formula
  desc "Classic demoscene flat-shaded rotating cube"
  homepage "https://github.com/lra/3dcube"
  url "https://github.com/lra/3dcube/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "10f9737f2301b8466da5fcce3bec4a442a67f8c6012c5662421c2b0ac2f7cfa2"

  depends_on "rust" => :build

  on_linux do
    depends_on "pkgconf" => :build
    depends_on "libx11"
    depends_on "libxkbcommon"
    depends_on "wayland"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # ponytail: GUI app, opening a window in CI isn't possible; existence check only
    assert_predicate bin/"cube", :executable?
  end
end
