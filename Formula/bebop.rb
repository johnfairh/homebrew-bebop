class Bebop < Formula
  desc "API docs generation for Swift and Objective-C"
  homepage "https://github.com/johnfairh/Bebop"
  url "https://github.com/johnfairh/Bebop/archive/v1.6.0.tar.gz"
  sha256 "d777532ca27a5fd54c0afe84cd0cdaf783e4fd5c09795deef8439ef195ed089a"
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
