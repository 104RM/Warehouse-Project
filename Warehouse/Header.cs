using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Warehouse
{
    public partial class Header : UserControl
    {
        public Header()
        {
            InitializeComponent();
        }
        bool HeaderMouseDown;

        private void Header_MouseDown(object sender, MouseEventArgs e)
        {
            HeaderMouseDown=true;
        }

        private void Header_MouseMove(object sender, MouseEventArgs e)
        {
            if (HeaderMouseDown)
            {
                Form ParentForm = this.FindForm();
                int mouseX = MousePosition.X - 400;
                int mouseY = MousePosition.Y - 20;
                ParentForm.SetDesktopLocation(mouseX, mouseY);
            }
        }

        private void Header_MouseUp(object sender, MouseEventArgs e)
        {
            HeaderMouseDown = false;
        }

        private void Header_Load(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToString();
        }
    }
}
