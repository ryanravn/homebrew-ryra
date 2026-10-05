class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.47"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.47-aarch64-apple-darwin.tar.gz"
    sha256 "0d85aaeacd68fadd2b990678c89bf2fdec115d66a4eacdf407c372a7cbb5b8f8"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.47-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7b483c73eb36d3bc51a32b9573c2db23aa7b01f4b0941889e1903b1a0a0d2bc"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e45a013b2b90c6f1f3aa2a78e97785351af2515542460c496936b0f1b68ad9b"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
