class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.116"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.116-aarch64-apple-darwin.tar.gz"
    sha256 "f70ca46abda425b5e0e7515ec623797f6db294b23f694f6dd110a556bee6eafb"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.116-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4310c4b55dae6eb358781161cf50478187e5999aee5b604d9fd921700196d64c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.116-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9631280bc6d7dc81e2046d2228a956ec769a54c3d662bdbc6e3d6418a066d8e8"
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
