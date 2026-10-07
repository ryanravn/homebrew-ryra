class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.52"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.52-aarch64-apple-darwin.tar.gz"
    sha256 "230da4b2b825d90273b6e42dd5f9ffc20a58e0666506348398e8d35280017ede"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.52-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54ff4c59327f2d1e318367433c9a8d056c66fcdac9c80338cbbab1440e0bd26e"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.52-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d72fd8c860cb11262a21a8562dab20cfeb2d0246fd7fefd8d2389237d5637cab"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
