class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.108"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.108-aarch64-apple-darwin.tar.gz"
    sha256 "ad1ca039eb55aff5ddc47bf00693ebb765ceb03019479054f14da42fc51335a3"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.108-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42d46ad0d3e1ab98e4cb93fd2f2d25f7d3da5fa6aeeb4f998f5ccf382d171a3b"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.108-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbf960cb8d9e177146600e6398e55e9a8a20ec46e88dea9e755c35cd77dc0caf"
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
