class Llmsnap < Formula
  desc "Proxy server for swapping llms on vllm, llama.cpp and other servers"
  homepage "https://github.com/napmany/llmsnap"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_arm64.tar.gz"
      sha256 "6375253f8879ebe9ca8145edef26071d626db061e7e83519b9bd31b647899bd4"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_amd64.tar.gz"
      sha256 "8b8ad70547793a041f254747d42b143f9a62131ae39d203728865e0adeac0d91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_arm64.tar.gz"
      sha256 "222dd42dd7650f3ef5709a50c985a5dad6a533d5eb0b5e636b477ee2d339da63"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_amd64.tar.gz"
      sha256 "204525f9a4cb3b3d05dea54a2d0817668a4b2afd63f7582a399fe66c947e1763"
    end
  end

  def install
    bin.install "llmsnap"
  end

  test do
    system bin/"llmsnap", "--version"
  end
end
