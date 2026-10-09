class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.57"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.57-aarch64-apple-darwin.tar.gz"
    sha256 "5eac497cff7271cb51abe0abecff10a2f3635531665c3687f587c1548b1081ad"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.57-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2f6c02243069317f962a3a633b902719576b2b0254814f4e0fefc1b77ae9c72"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.57-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80daf4388fc9da431516baa96085c08451812b4983980d851bdf70228b9e52d6"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
