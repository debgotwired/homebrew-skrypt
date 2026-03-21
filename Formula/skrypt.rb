class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.8.0.tgz"
  sha256 "f299724df6626a15ee0a2e5089e1176e5d299dc42a18afaace738c1ceddd97b7"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/skrypt --version")
  end
end
