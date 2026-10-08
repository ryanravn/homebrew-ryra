class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.53"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.53-aarch64-apple-darwin.tar.gz"
    sha256 "a8f61ae847429cddde18c0d92958dfa6a9ae74e7c57e24182fe9659e6b23b011"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.53-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b33fd8a51ca00777dbb631dc4c4c984623860b9b79ddc4247b161b2e20f321f"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.53-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "649777ebe6713ca7fb56c549d8ea6dd03d6d0f3bb8b9140c10c18812d4fbae5d"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
