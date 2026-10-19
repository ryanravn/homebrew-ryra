class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.82"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.82-aarch64-apple-darwin.tar.gz"
    sha256 "d5d10679c2924160cb6f176794855e69e417dbd6973e31b60868f49b168e24ab"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.82-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "212ac8b8e383e78b82640bfa33b877715c884eaaf005e116470dea85ba383e02"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.82-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9dc42d08d89b4589693018474135d4ada487235c1cbe9bc7f4b14281dab28cb"
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
