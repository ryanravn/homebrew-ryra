class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.86"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.86-aarch64-apple-darwin.tar.gz"
    sha256 "a6f48f8c51ee4fd232364bda0b8d5daf81350c5005bee6cc84e8017fa5ba502e"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.86-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3696e278e71ab23603bb84886a411ff0b0220bc1f25bfcbb33a0c6c5aa94a84"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.86-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "359aa89cf0a7a8c99a23e70f5d79464d8108334ff70e4f23c0fda06971225fb9"
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
