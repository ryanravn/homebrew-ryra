class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.110"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.110-aarch64-apple-darwin.tar.gz"
    sha256 "1558fefc3ff8a9703b867d2dbb94a970f3575902b89c027e85f80a731bcf4b4f"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.110-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fef28b4fe5356751b07f27700e4e3a30e3c1e5d372d5a1686df978ee340a2ee9"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.110-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "321395bb560b35ad9ef006ef3dc23b27db4edcba09661e07fe830f60a8570df7"
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
