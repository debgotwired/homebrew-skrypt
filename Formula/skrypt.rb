class Skrypt < Formula
  desc "AI-powered documentation generator with code examples"
  homepage "https://skrypt.sh"
  url "https://registry.npmjs.org/skrypt-ai/-/skrypt-ai-0.3.1.tgz"
  sha256 "063b1fd7efbfa3fffa082d5f656edd85cd6836095fc5f342b366419d09b0abef"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/skrypt --version")
  end
end
