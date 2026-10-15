class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.74"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.74-aarch64-apple-darwin.tar.gz"
    sha256 "d38861228d5327e31e673df3f278e1d9d247410733ba0fcc6bbd785d9af3a7e6"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.74-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bb3d67f854ce21047f5ca7d4a394de5efb5633c99cd838fa76c0905647652de"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.74-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca9110c7d6aaab21d3876d0cbf9427316e3b0e96724d6d12e69d42c9ba894025"
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
