using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(campus_app.Startup))]
namespace campus_app
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
