class Fire < Formula
  desc "Doom-style fire effect, rewritten for looks"
  homepage "https://github.com/lra/fire"
  url "https://github.com/lra/fire/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "38f74830ef36c0a8fedb053b038a4cf7e7a1a2598090692e69ceddd9fe9501d5"

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
    # Snapshot mode is headless: renders a few frames to PPM and exits.
    ENV["FIRE_SNAPSHOT"] = testpath
    system bin/"fire"
    assert_path_exists testpath/"fire_0150.ppm"
  end
end
