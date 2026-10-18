class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.80"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.80-aarch64-apple-darwin.tar.gz"
    sha256 "23793aec52340f6c414999d5ab9588cb57ecea5b2eec6f422ae715db79a53f2c"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.80-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e04b2adf08496bf0d4b3123e5634aa69221f9470de5e0633c7b13d55f52ffeb0"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.80-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc4b63bd42e4231525f14aa40c64589ebe1113b5d2205b2bd11448efd1627ff9"
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
