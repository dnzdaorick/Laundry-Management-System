using System;

namespace bootstrap
{
    internal class Modal
    {
        private object value;

        public Modal(object value)
        {
            this.value = value;
        }

        internal void show()
        {
            // Implement the logic to display the modal
            Console.WriteLine("Modal is shown with content: " + this.value);
        }
    }
}