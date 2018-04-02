using System;
using System.Drawing;

namespace fwappc02
{
    public partial class GridViewSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 選択行の主キーの取得
            var employeeId = GridView1.SelectedValue;

            // 単票画面に遷移
            Response.Redirect($"~/Basic/FormViewSample.aspx?EmployeeId={employeeId}");


        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            // コマンド名確認
            if (e.CommandName == "Custom")
            {
                // 行数を取得
                int rowNum = int.Parse(e.CommandArgument.ToString());

                // 行の背景色を変更
                GridView1.Rows[rowNum].Cells[2].BackColor = Color.Red;
            }
        }
    }
}