// we had to add microsoft.aspnetcore.mvc here so that testing knows about
using DevopsCI.Client.Controllers;
using Xunit;

namespace Devops.Testing.Tests
{
  public class HomeTest
  {
    [Fact]
    public void HomeController_Test()
    {
      var sut = new HomeController();
      var view = sut.Index();

      Assert.NotNull(view);
    }
  }
}