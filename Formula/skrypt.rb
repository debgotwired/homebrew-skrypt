class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.1.9.tgz"
  sha256 "f770b76316eefc57bc54173bb8e1995b88478f954bc8197ed10d6bdb9c0001f4"
  license "UNLICENSED"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/skrypt --version")
  end
end
