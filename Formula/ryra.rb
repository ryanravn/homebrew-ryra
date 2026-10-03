class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.42"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.42-aarch64-apple-darwin.tar.gz"
    sha256 "b6d6eec511d55fcf4bdec17ba905b388964f7c0a58bebd6b1ea965c5cca8cc3a"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.42-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ecba493cfabed60eed95b760ecea5cb495ec2b4123f7a066a5bde6d61dfdcfd"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.42-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fda5137a74620639a50b919435f975c8c124b247367fdc708b657459cc77625e"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
