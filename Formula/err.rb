class Err < Formula
  desc "Clean and normalize error messages"
  homepage "https://github.com/XD637/err"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XD637/err/releases/download/v0.1.0/err-darwin-arm64"
      sha256 "ce49aa7670d09c06d99e63d2e03058e12485cefa52a9e7c7abba336b53f38012"
    else
      url "https://github.com/XD637/err/releases/download/v0.1.0/err-darwin-amd64"
      sha256 "cfd0dc37ad22a883f77a2c4176774e2bb898ce57838f3e300d940841b99b41f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/XD637/err/releases/download/v0.1.0/err-linux-amd64"
      sha256 "259afff5187d68875a96346e9b3a9fa522b4e3bb4aa11fa7cc80ffb19b667e2c"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "err-darwin-arm64" => "err"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "err-darwin-amd64" => "err"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "err-linux-amd64" => "err"
    end
  end

  test do
    system "#{bin}/err", "--version"
  end
end
