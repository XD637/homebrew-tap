class Err < Formula
  desc "Clean and normalize error messages"
  homepage "https://github.com/XD637/err"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XD637/err/releases/download/v0.1.0/err-darwin-arm64"
      sha256 "YOUR_SHA256_HERE"  # Run: shasum -a 256 err-darwin-arm64
    else
      url "https://github.com/XD637/err/releases/download/v0.1.0/err-darwin-amd64"
      sha256 "YOUR_SHA256_HERE"  # Run: shasum -a 256 err-darwin-amd64
    end
  end

  def install
    bin.install "err-darwin-#{Hardware::CPU.arch}" => "err"
  end

  test do
    system "#{bin}/err", "--version"
  end
end
