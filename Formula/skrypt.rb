class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.3.0.tgz"
  sha256 "f0032c633a42e21184d000249cdc752f805881139044a0c3c49b4dad3eff4f57"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/skrypt --version")
  end
end
