class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.65"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.65-aarch64-apple-darwin.tar.gz"
    sha256 "d5f916e69646e82742b4c6e9a536448f6607c76bfeab51668af3fce4a4a715d8"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.65-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4ea9c0dab829a373a228f16283af0d1739368c7b9b215491f169d9d1ea42ad3"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.65-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2924a5990feeacc66bee68e8dcfa5409b37dfe108d07c8c4088e9f13347d22ff"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
