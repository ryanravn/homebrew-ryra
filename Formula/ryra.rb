class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.83"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.83-aarch64-apple-darwin.tar.gz"
    sha256 "760d8f0777a43f0078fda14e4c52579428f1321df12bfa276fe8ce85c2173e33"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.83-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e3f2b872582dae168a9db0cb90d5658345d2f4d923a8bd47563313b133c7e8c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.83-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ebf77f9c40097d19960ddc628a72d739a1aa768286b964c64affbe2db65b04d"
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
