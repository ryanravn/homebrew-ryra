class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.43"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.43-aarch64-apple-darwin.tar.gz"
    sha256 "020d96c26977f6a8cf43ad7a2a18da32d6a6bc3196d330796c1f66e77ae256a3"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.43-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97d2ffcab77c122654822f65f7c615d99fbb987cc218f1baa36bfdb9f89bfacd"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.43-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c1ec09bec0f7cc5d20db5f89e17898bd6c5e11e3b065ac8727b5940c762631a"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
