class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.73"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.73-aarch64-apple-darwin.tar.gz"
    sha256 "6fe4e2ded24bcb94eb30e92e4a5a76e8b2cd6bbbfd3dfb0692bc75dfd1752da1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.73-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "485fcf33f78e9dc18136118a029ff7e59290e0f3e174ca5005bfca407fc34849"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.73-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f957bcbc96efa848759247906569892195e50ffe6d53c87a612adc4b3af60f0c"
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
