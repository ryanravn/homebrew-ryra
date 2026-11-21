class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.113"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.113-aarch64-apple-darwin.tar.gz"
    sha256 "5d5098270077dd99b52e1370634e9fced49796633ab5c17be38f8028fab237b1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.113-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c376fcc01142cfe9fd724f6429c761a43017290e5cd6ae0dad14c681f69b125f"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.113-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb977e876d40611e81a9255f8788a24f73208195f2a862392a2cca24f8f3ded0"
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
