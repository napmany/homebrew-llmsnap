class Llmsnap < Formula
  desc "Proxy server for swapping llms on vllm, llama.cpp and other servers"
  homepage "https://github.com/napmany/llmsnap"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_arm64.tar.gz"
      sha256 "0a72121d2c0818d7f5faf21db07cd81f9d1ce35412763fdb27fea9caf74d608d"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_amd64.tar.gz"
      sha256 "61983d3478654c9853f619ce56d67c34d96a671fb8d21cac826a165ab106810c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_arm64.tar.gz"
      sha256 "adaa0882bb113a82e8a2072abdb0c7fb7c1c4ea1701511f4ef0d562ad5f40661"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_amd64.tar.gz"
      sha256 "57712924e0f9dbe7b9eae5056861e7d52d3aa644a52d23c78989c231b90ae4cc"
    end
  end

  def install
    bin.install "llmsnap"
  end

  test do
    system bin/"llmsnap", "--version"
  end
end
