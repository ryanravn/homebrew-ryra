class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.117"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.117-aarch64-apple-darwin.tar.gz"
    sha256 "d2e2bb05e825c8c46797fcce47dd967cc3d1e344e50dc18e6e8f4cd606420832"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.117-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a42ca8e0d8daad13a21a372289ec24900476cd4f3e4f1f712a699291f72fd49c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.117-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52bd9f1b0702d0b644411b4bc7685a19f8d02e54b37413e6ae2eb3dfaf539806"
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
