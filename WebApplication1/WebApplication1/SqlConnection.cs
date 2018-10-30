using System;

namespace WebApplication1
{
    internal class SqlConnection
    {
        private object connectionString;

        public SqlConnection(object connectionString)
        {
            this.connectionString = connectionString;
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }
    }
}