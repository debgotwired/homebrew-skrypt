class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.2.0.tgz"
  sha256 "f954c69fcd4c59cd60db038550856c471d9d440f925132c587450fac4a8ce39d"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/skrypt --version")
  end
end
