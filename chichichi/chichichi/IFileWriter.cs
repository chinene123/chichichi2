using System.Threading.Tasks;

namespace chichichi
{
    public interface IFileWriter
    {
        Task<bool> SaveTextToFile(string text, string filePath);
    }
}

