class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.45"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.45-aarch64-apple-darwin.tar.gz"
    sha256 "1e3ea194b08b6c75d8f20c593336b254b2d5af6bb15622842f7ba0027926cece"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.45-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0f30caeb39488efbc3721a83b78a6a717306d20e567d8b0b16338d3cff26f90"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.45-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23eeea83b3f9d55d4d225e191ab0fffbc1f8559489696dbd49536f8cbaf82b75"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
