class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.40"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.40-aarch64-apple-darwin.tar.gz"
    sha256 "a0a7b2fff0a2f5ad0268192992a035bddd43cacd635f5bf5036cbc9ff2c921b7"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.40-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c3fda86f3d502784faafb245d62084a383a7ae0f6bc521f4e2307b08eead08c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28878c42b1271d8ddcc0e73cc86d82764a5ee52dcacef6671583efaf771cd8b4"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
