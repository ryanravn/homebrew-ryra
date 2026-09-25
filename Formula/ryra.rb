class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.35"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.35-aarch64-apple-darwin.tar.gz"
    sha256 "5f1772e2df84e42ddb3e712b3d63975aebbe898e652ef045c5c5dabb8cb4c1a8"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.35-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6794927949d1ccd13dd756e6dde2527e4479423994e580b015093323d1f03a54"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a8f28a066b9a70948f50eef086494081cc21876a77b3c55df32dad273cf90ab"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
