class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.48"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.48-aarch64-apple-darwin.tar.gz"
    sha256 "ecf462b22409ded32e9c13d0dad2a522274f33ff7f303cc3549f048cc10c72ce"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.48-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "156301e06a8e6081511c2b8199bf8c1e5a69d025a0995f8693031d0ad7ed2f78"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.48-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3c13511d49bddae85a6bfe76eca7491529822303b34e9313bffcae27a5a48e9"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
