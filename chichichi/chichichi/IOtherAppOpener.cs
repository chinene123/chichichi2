using System.Threading.Tasks;

namespace chichichi
{
    public interface IOtherAppOpener
    {
        Task OpenOtherApp(string packageName, string activityName);
      
    }
}