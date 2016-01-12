<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class acount_model extends MY_Model
{
	protected $table = 'acount';

	//查询email用户
	public function get_one_tel($tel,$field="id,name,pwd,qq,place"){
        $query = $this->db
            ->select($field)
            ->from($this->table)
            ->where('tel',$tel)
            ->get();
        return $query->row_array();
    }

    // 检测帐号是否存在
    public function find_name($nickname)
    {
        $query = $this->db
            ->select('id')
            ->from($this->table)
            ->where('tel',$nickname)
            ->get();
        if ($this->db->affected_rows()) {
            $id = $query->row_array();  
            return $id['id'];
        }else{
            return false;
        }
    }

    // 登录时提取数据
    public function get_login($id, $fields='id,title,pwd,pwd_errors,tel,audit')
    {
        $query = $this->db
            ->select($fields)
            ->from($this->table)
            ->where('id',$id)
            ->get();
        return $query->row_array();
    }

    // 密码输入错误 for login
    public function set_pwderr($id, $clear = FALSE) 
    {
        if (!$clear) {
            $this->db->set('pwd_errors','pwd_errors+1',FALSE);
        }else{
            $this->db->set('pwd_errors',0);
        }       
        $this->db->set('login_ip',get_ip());
        $this->db->set('login_time',time());
        $this->db->where('id',$id);
        $this->db->update('manager');
        return $this->db->affected_rows();
    }

    // 登录成功后保存登录信息
    public function set_login($id)
    {
        // 获取上次信息
        $info = $this->get_login($id);
        $this->db->set('login_ip',get_ip());
        $this->db->set('login_time',time());
        $this->db->set('pwd_errors',0);
        $this->db->where('id',$id);
        $this->db->update($this->table);
        return $this->db->affected_rows();
    }

    // 设置登录密码
    public function set_pwd($aid,$pwd)
    {
        $this->db->set('pwd',$pwd);
        $this->db->where('id',$aid);
        $this->db->update($this->table);
        return $this->db->affected_rows();
    }

    // 检测帐号是否存在
    public function find_name_by_email($email)
    {
        $query = $this->db
            ->select('id')
            ->from($this->table)
            ->where('email',$email)
            ->get();
        if ($this->db->affected_rows()) {
            $id = $query->row_array();  
            return $id['id'];
        }else{
            return false;
        }
    }


}