class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.37"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.37-aarch64-apple-darwin.tar.gz"
    sha256 "0ea563a4186e4398cb9523fa56c526163abf786dbe14ba080cc1dc6ad2ac2a86"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.37-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93ebe840af64447ac0ec98b4e0e640d1d3fdf90d4b0b1ab23be406a44e3adead"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc4fcec4159686df00d0b8aead69ec52502b109db237fe4c0efcf91cc729c7a5"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
