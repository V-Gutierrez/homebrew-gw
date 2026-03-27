class Gw < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace CLI - Gmail, Calendar, Drive, Sheets, Docs from your terminal"
  homepage "https://github.com/v-gutierrez/gw"
  url "https://github.com/v-gutierrez/gw/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "e2f7a6c97f998f01f0cb09103ac1651188a54895d776e7d6eda5e53083047834"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/c6/eb/d504ba1daf190af6b204a9d4714d457462b486043744901a6eeea711f913/google_auth-2.38.0.tar.gz"
    sha256 "8285113607d3b80a3f1543b75962447ba8a09fe85783432a784fdeef6ac094c4"
  end

  resource "google-auth-oauthlib" do
    url "https://files.pythonhosted.org/packages/cc/0f/1772edb8d75ecf6280f1c7f51cbcebe274e8b17878b382f63738fd96cee5/google_auth_oauthlib-1.2.1.tar.gz"
    sha256 "afd0cad092a2eaa53cd8e8298557d6de1034c6cb4a740500b5357b648af97263"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/c4/c9/eac7b4e843039f0a54a563c2328d43de6f02e426a11b6a7e378996f667db/google_api_python_client-2.166.0.tar.gz"
    sha256 "b8cf843bd9d736c134aef76cf1dc7a47c9283a2ef24267b97207b9dd43b30ef7"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/fc/6d/62e76bbb8144d6ed86e202b5edd8a4cb631e7c8130f3f4893c3f90262b10/mcp-1.26.0.tar.gz"
    sha256 "db6e2ef491eecc1a0d93711a76f28dec2e05999f93afd48795da1c1137142c66"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/gw --version")
  end
end
