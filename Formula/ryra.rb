class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.67"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.67-aarch64-apple-darwin.tar.gz"
    sha256 "c405292fea0da64d3101cb0da8dc2911c6e3b1e87cff58d8ad106c7b14741562"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.67-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adfe4337f67ff5ce8ed5140b978edfd1544ba087fb53718d1b3f18f5b70e14e2"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.67-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a44035b12a7ae6390ef9e49b800684ba80e287e3fd62685ecade31e6b982cb8"
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
