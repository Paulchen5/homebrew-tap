class DockerCleanup < Formula
  desc "Ein Shell-Skript, das etwas Cooles tut"
  homepage "https://github.com/Paulchen5/docker-cleanup"
  url "https://github.com/Paulchen5/docker-cleanup/archive/refs/tags/v1.0.tar.gz"
  sha256 "b23deda66d58df1e03a9188593c87f9aeb747162ca6de6b6b0325d088a92ea89"
  license "MIT"

  depends_on "docker" => :recommended

  def install
    bin.install "docker-cleanup.sh" => "docker-cleanup"
  end

  test do
    system "#{bin}/docker-cleanup", "--help"
  end
end
