class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.50"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.50-aarch64-apple-darwin.tar.gz"
    sha256 "18f8fff551b88af65b015a28303c4caa275cbc463e7f5d6aa8298e12cc16e49b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.50-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42f62f6f7aecef12cf7ec4767868ee3e8037e7e34b29a44a6976214da96c2fd9"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.50-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eba34d9d6904e2aa7006722aff9f90800326ae89589ec8353496eaa9abffb9e6"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
