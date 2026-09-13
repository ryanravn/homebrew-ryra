class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.31"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.31-aarch64-apple-darwin.tar.gz"
    sha256 "69f943baef6615e4795d80b662a4332d5a27818ef544222f23ede136bbe711cb"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a374748c2f26017c5ae45f930a3f94c78f1330ddd634c67afde8fb7d5b047c66"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4dd60605ce4441b7844705491dac47abe7c6bafaec1b20de411848c5426a231"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
