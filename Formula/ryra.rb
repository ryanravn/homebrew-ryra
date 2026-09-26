class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.38"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.38-aarch64-apple-darwin.tar.gz"
    sha256 "7bbef9c0935ae35c35b1692ecd671dec18131a2a92a57812a8767bcb74e26c15"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.38-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a97c8d383e157b93fd5e8d91435d12386450eac3556f38a9c5a8942666cb10ec"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce9cdb45a90f37924c9d21f100ecd65c027e05d7860f04726e16952e9ea0a0dc"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
