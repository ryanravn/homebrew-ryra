class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.62"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.62-aarch64-apple-darwin.tar.gz"
    sha256 "af954a8c818ea209142a10abafa39f01c3c55804be72d2bb1b32ad29f953cf54"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.62-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9f6d5e8766d61c69ef407766fa0a30c788b38cf9f5b44689e4bb5c9952e39a9"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.62-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fd2a2bce36f3294dac3832555914eeb1d199f5f2ac4776bfa64c2c6f8fca735"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
