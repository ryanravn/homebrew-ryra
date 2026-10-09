class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.56"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.56-aarch64-apple-darwin.tar.gz"
    sha256 "279b7b56f2eb0b9d1878690c6325da430ef7337147ac7c566764a57e8cbf7d6b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.56-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39a5aec874b0586368a86a0b555e6529a2ab5c5d224ffcb72637b989fd10bc00"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.56-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d5fc07d1117cc6d889c1c9fe4ba8d61215b997a6b9ee1c12edb472394e95d8b"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
