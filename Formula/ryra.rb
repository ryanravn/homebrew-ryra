class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.106"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.106-aarch64-apple-darwin.tar.gz"
    sha256 "2d1139dd5c68eb3c361931b3ecbd5b8fc3c4c38291b512e4dcb155e6f4641596"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.106-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38b9477d102011e0273ec38b09f9c169a756856b0d6f68d88cd4c632320d3333"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.106-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c13861ab7350ccb8cdf528b858f6d6079b4c0413e5ce28ec3c7981375f92663"
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
