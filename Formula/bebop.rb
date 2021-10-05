class Bebop < Formula
  desc "API docs generation for Swift and Objective-C"
  homepage "https://github.com/johnfairh/Bebop"
  url "https://github.com/johnfairh/Bebop/archive/v1.8.0.tar.gz"
  sha256 "1c78d30d2436d37dd224f11664fb46e22b86478bf2c8f003b57959b1cb45b6c8"
  license "MIT"

  depends_on "libsass"

  def install
    system "PREFIX=#{prefix} make build install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Bebop`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
