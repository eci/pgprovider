using System;
using pgProvider;

namespace GenEncryptionKeyConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Encryption.GenerateAESKey().ToBase64());
            Console.WriteLine("Hit Enter to end.");
            Console.ReadLine();
        }
    }
}
