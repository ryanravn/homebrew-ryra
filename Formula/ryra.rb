class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.54"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.54-aarch64-apple-darwin.tar.gz"
    sha256 "285ef9e599ffe71942be35b62f48366f066510d6813ee174c8c84bd6c80f9634"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.54-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ebfdb69369041e9c55d47a82cfecbdaaea3f3a4c2523a961b1b65caa1cdb5d5"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.54-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e6180d30c0c03e46573ffc321d442f9f78b003d7f0b9150b00205b5d54f59d6"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
