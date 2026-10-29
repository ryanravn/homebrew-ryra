class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.96"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.96-aarch64-apple-darwin.tar.gz"
    sha256 "6445fe0c2a636bf26cb86dbf2d5be70515331a8458e380bc84069a50e4d52a46"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.96-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f24f08ba3c46bf965d229b3e4abdb63ef921cd7f55838f32da2f211f416dc1d"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.96-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fbaab025cada47137b861ec76c1d8ca08f46feea6cff63a391c13e32e7d95cb"
    end
  end
  def install
    bin.install "ryra"
    (pkgshare/"licenses").install "licenses/herdr-ui.txt"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
