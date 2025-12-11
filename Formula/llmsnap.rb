class Llmsnap < Formula
  desc "Proxy server for swapping llms on vllm, llama.cpp and other servers"
  homepage "https://github.com/napmany/llmsnap"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_arm64.tar.gz"
      sha256 "e0c0e7ff9923dedf0c6106d672fdd71cd82693290b316179ad6a9ad3abfe35fe"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_darwin_amd64.tar.gz"
      sha256 "0107136c7fdb407b4142e268a6547b17b25f16853e0137b2ee760321c8823995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_arm64.tar.gz"
      sha256 "650c66cf7f8718ebe399247ebbe37350b4846a869fb19f13c1ef67d04feaa424"
    end
    on_intel do
      url "https://github.com/napmany/llmsnap/releases/download/v#{version}/llmsnap_#{version}_linux_amd64.tar.gz"
      sha256 "8bc61487ff81dd8791cf4bfd809fb79a9571158a693d55527fff588610d2d6e6"
    end
  end

  def install
    bin.install "llmsnap"
  end

  test do
    system bin/"llmsnap", "--version"
  end
end
