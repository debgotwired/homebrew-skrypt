class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.3.2.tgz"
  sha256 "96954c40267ec9c0d935a70df473d461544dc10fae335429ae1abf9c7563e76c"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/skrypt --version")
  end
end
