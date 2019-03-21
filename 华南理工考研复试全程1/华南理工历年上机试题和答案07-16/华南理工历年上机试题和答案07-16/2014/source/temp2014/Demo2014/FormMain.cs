﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Demo2014
{
    public partial class FormMain : Form
    {
        public FormMain()
        {
            InitializeComponent();
        }

        private void 信息查询ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormSearch fs = new FormSearch();
            fs.MdiParent = this;
            fs.Show();
        }

        private void 信息统计ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormStatistics fss = new FormStatistics();
            fss.MdiParent = this;
            fss.Show();
        }

        private void 教师表维护ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormTeacher ft = new FormTeacher();
            ft.MdiParent = this;
            ft.Show();
        }

        private void 退出程序ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
