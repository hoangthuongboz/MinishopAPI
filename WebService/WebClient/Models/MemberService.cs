using DTO;
using Remotion.Linq.Parsing.ExpressionVisitors.MemberBindings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Threading.Tasks;

namespace WebClient.Models
{
    public class MemberService : BaseService
    {
        public int Add(Member obj)
        {
            return Post<Member>("member", obj);
        }
        public Member SignIn(string usr, string pwd)
        {
            return Get<Member>($"auth/{usr}&{pwd}");
        }
        public List<Member> GetMembers()
        {
            return Gets<Member>("member");
        }
        public Member GetMemberAndRoles(long id)
        {
            return Get<Member>($"member/{id}");
        }
        public int Edit(MemberInRole obj)
        {
            return Put<MemberInRole>($"Member/{obj.MemberId}", obj);
        }
        public Member GetMemberById(long id)
        {
            return Get<Member>($"member/{id}");
        }
        public int ChangePwd(Member obj)
        {
            return Put<Member>($"member/{obj.Username}&{obj.OldPassword}", obj);
        }
    }
}
