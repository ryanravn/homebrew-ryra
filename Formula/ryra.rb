class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.41"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.41-aarch64-apple-darwin.tar.gz"
    sha256 "2fc8b7c3bf3737095b5060bf9bd82323bc5a6b5e83ba979b79255e3d6ca40a7b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.41-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f962f7aa409c8d1ac546e72c8371e30caa258067e3950d2955319de2269a0be5"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ac809d15bf1d3fc7f44461bb6441c4cb6326b2e27b273825e5b0c3f3bb6b67f"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
