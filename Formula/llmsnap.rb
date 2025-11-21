class Llmsnap < Formula
  desc "Proxy server for swapping models on vllm, llama.cpp and any other OpenAI API-compatible server"
  homepage "https://github.com/napmany/llmsnap"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_arm64.tar.gz"
      sha256 "8b17feb2993bcec4196e95ebee8a5eca1a44d5f276fb4cbc75cee621855e03c4"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_amd64.tar.gz"
      sha256 "b4057ba8938c5a92d44b5de761fe2f0424267407026527f36eacf7edab415bd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_arm64.tar.gz"
      sha256 "847a5bf480772c5d81171586a70d4ea6dde565a0d276e31dd71062b948139622"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_amd64.tar.gz"
      sha256 "1c41f993e49e6f1aa94f13f72d63bcec126c388a7876080b0a0c5529042cc077"
    end
  end

  def install
    bin.install "llmsnap"
  end

  test do
    system "#{bin}/llmsnap", "--version"
  end
end
