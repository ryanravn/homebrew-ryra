class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.39"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.39-aarch64-apple-darwin.tar.gz"
    sha256 "82675c109e6acfbcc101a71229af5e0aabc08cb1a46a1f9534ce22023a86c7c8"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.39-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bdd7b6264ce206dad3713e49aad037037e717f22940d2b4daa0ebafd4390507"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1f7d31e9e8c8e104644ab093f98166d72d8e5c145130d7b7b576976cc4e4096"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
