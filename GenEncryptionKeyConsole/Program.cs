using System;
using pgProvider;

namespace GenEncryptionKeyConsole
{
    public class Program
    {
        public void Main(string[] args)
        {
            Console.WriteLine(Encryption.GenerateAESKey().ToBase64());
            Console.WriteLine("Hit Enter to end.");
            Console.ReadLine();
        }
    }
}
