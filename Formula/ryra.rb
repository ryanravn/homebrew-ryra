class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.24"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.24-aarch64-apple-darwin.tar.gz"
    sha256 "d764c169616851972fe24e6f136e706291d474bae117451fd5287da92cfde005"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56395fe86337b46c8e4d325e2c139face90e0a2a57fd5d8a59f9828cc325edca"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d011e7c41c77d5c9c652eebafa480aeac98c4cf09749acda595c5782c16cf41"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
