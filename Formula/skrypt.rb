class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.3.3.tgz"
  sha256 "1d9eff075d76c175a63d100b607cd8c95dbb8d5e90639fcd5c62f3f1071fef29"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.3", shell_output("#{bin}/skrypt --version")
  end
end
