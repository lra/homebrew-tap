class Cube < Formula
  desc "Classic demoscene flat-shaded rotating cube"
  homepage "https://github.com/lra/3dcube"
  url "https://github.com/lra/3dcube/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "394ec5ab9943f3bb77494de2d2c1f2ebcc521e1f4658d969a16286f66f451e8d"

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
