class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.98"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.98-aarch64-apple-darwin.tar.gz"
    sha256 "09c451d827d87b60b42b7fe031d72614e6c032537fb712bf7e063f2628c023c6"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.98-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ec10f47b1a801d7c45ba2d57425f5c72734d637dcf471a4f6bc983a8884d8a9"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.98-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73b814f015c4ba71857934b07a36b0c2a82ef80ac9893e86501eb00123f09c62"
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
