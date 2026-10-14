class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.70"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.70-aarch64-apple-darwin.tar.gz"
    sha256 "ac95f1d118edd2e974e17592363786f6a94b55b17364f59e3c2fd94a3a5fe653"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.70-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b060afa9927aefadc9e3a944d69a2634d1ac4e6cfb7e257c6ee879959a484bd7"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.70-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36a5dabde5dc73f0b4871cc47fe3ca02a879b12b1882f8b82879c72985437699"
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
