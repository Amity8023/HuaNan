﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Demo2014
{
    public class DBHelperSQL
    {
        /// <summary>
        /// 连接字符串
        /// </summary>
        public static string connStr = @"server=WIN-20161229QGK\SQLEXPRESS;database=test2014;integrated security=true;";
        /// <summary>
        /// 连接实例
        /// </summary>
        public static SqlConnection conn = null;
        /// <summary>
        /// 增删改
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="para"></param>
        public static void TableChange(string sql, SqlParameter[] para = null)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(sql,DBHelperSQL.conn);
                if (para != null)
                    cmd.Parameters.AddRange(para);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    MessageBox.Show("操作成功！");
                }
                else
                {
                    MessageBox.Show("操作失败！\n请检查数据库是否有该条数据！");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="para"></param>
        /// <returns></returns>
        public static DataTable TableSelect(string sql, SqlParameter[] para = null)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand(sql, DBHelperSQL.conn);
                if (para != null)
                    cmd.Parameters.AddRange(para);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }
    }
}
