class Llmsnap < Formula
  desc "Proxy server for swapping llms on vllm, llama.cpp and other servers"
  homepage "https://github.com/napmany/llmsnap"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_arm64.tar.gz"
      sha256 "bfbc55e26bdadcb3a42c58035fcacc655707da78cc7b24dcbcc43cceb29ff686"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_amd64.tar.gz"
      sha256 "16b31bb67fa4a73b1b632b59bb7308ec915fc0030d9a4b3494fbf52611fb8530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_arm64.tar.gz"
      sha256 "6bd668c303a5e2ed53c9a2211496d3845a584f56bea4de1f99ac6e4ce7788070"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_amd64.tar.gz"
      sha256 "a073e9c61096e484c74bd4cef81e85f61fcbd86f03f1db49aff45659134e88c6"
    end
  end

  def install
    bin.install "llmsnap"
  end

  test do
    system bin/"llmsnap", "--version"
  end
end
