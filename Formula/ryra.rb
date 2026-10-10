class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.59"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.59-aarch64-apple-darwin.tar.gz"
    sha256 "dc11f362d3f58e7359df889338918da4b6a22d6c84245b17a008472af0954771"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.59-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fbee68f9dc9245523943552c844a9caa44fa24a9a752c8b30d820ac0be04dbc"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.59-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d2b58875a1c2e4a81afd1a7f2db9899d603967bfe0e1db4e3becacb9e6e4389"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
