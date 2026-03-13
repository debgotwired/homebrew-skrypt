class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.1.8.tgz"
  sha256 "81a0aa453652d932a28a434cc0b990e41b482cb0ce1167988a36fa29218bf656"
  license "UNLICENSED"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "skrypt", shell_output("#{bin}/skrypt --version")
  end
end
