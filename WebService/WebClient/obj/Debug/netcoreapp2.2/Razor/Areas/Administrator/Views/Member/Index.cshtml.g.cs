#pragma checksum "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "b16407d3697d4e4e3d8bcd32924e6157884986e4"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Administrator_Views_Member_Index), @"mvc.1.0.view", @"/Areas/Administrator/Views/Member/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Areas/Administrator/Views/Member/Index.cshtml", typeof(AspNetCore.Areas_Administrator_Views_Member_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\_ViewImports.cshtml"
using DTO;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b16407d3697d4e4e3d8bcd32924e6157884986e4", @"/Areas/Administrator/Views/Member/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d0f9e30f068eca4a4f95ecaef724208d83a99b9c", @"/Areas/Administrator/Views/_ViewImports.cshtml")]
    public class Areas_Administrator_Views_Member_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Member>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
  
    ViewData["Title"] = "ManagerMember";

#line default
#line hidden
            BeginContext(70, 293, true);
            WriteLiteral(@"    <link href=""/css/style.css"" rel=""stylesheet"" />
<h1>Index</h1>
<a href=""/administrator/member/create"">Create</a>
<table>
    <thead>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Manager Roles</th>
        </tr>
    </thead>
    <tbody>
");
            EndContext();
#line 17 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
         foreach (var item in Model)
        {

#line default
#line hidden
            BeginContext(412, 38, true);
            WriteLiteral("            <tr>\r\n                <td>");
            EndContext();
            BeginContext(451, 13, false);
#line 20 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
               Write(item.Username);

#line default
#line hidden
            EndContext();
            BeginContext(464, 27, true);
            WriteLiteral("</td>\r\n                <td>");
            EndContext();
            BeginContext(492, 10, false);
#line 21 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
               Write(item.Email);

#line default
#line hidden
            EndContext();
            BeginContext(502, 51, true);
            WriteLiteral("</td>\r\n                <td>\r\n                    <a");
            EndContext();
            BeginWriteAttribute("href", " href=\"", 553, "\"", 595, 2);
            WriteAttributeValue("", 560, "/administrator/member/role/", 560, 27, true);
#line 23 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
WriteAttributeValue("", 587, item.Id, 587, 8, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(596, 54, true);
            WriteLiteral(">Roles</a>\r\n                </td>\r\n            </tr>\r\n");
            EndContext();
#line 26 "C:\Users\hoang\Downloads\WebService\WebService\WebService\WebClient\Areas\Administrator\Views\Member\Index.cshtml"
        }

#line default
#line hidden
            BeginContext(661, 26, true);
            WriteLiteral("    </tbody>\r\n</table>\r\n\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Member>> Html { get; private set; }
    }
}
#pragma warning restore 1591
