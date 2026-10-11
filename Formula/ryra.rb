class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.61"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.61-aarch64-apple-darwin.tar.gz"
    sha256 "cf90db19d2ce548374eec1e8b54a5694acacc4db07fd4831466730fc9c65b1e1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.61-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "023aa94b961fdaf140b6fbb57b26c352cc4aed7a7370dfeb337421faefe034ec"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.61-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e852bd7dbd271d4514ed32238dd614ed8d94e0aac09e2940e3d3a60114ce81cb"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
