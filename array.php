<?php

class analysis{

	public function getConnection()
	{
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "datamining";
		$conn = new mysqli($servername, $username, $password, $dbname);
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		}
		return $conn;
	}

	public function getFreelancerData()
	{
		$sql = "SELECT * FROM freelancer_profile";
		$result1 = mysqli_query($this->getConnection(), $sql);
		foreach ($result1 as $key => $value1) 
		{
			$cv[]=$value1;
		}
		return $cv;
	}

	public function getEmployerData()
	{
		$sql = "SELECT * FROM employer_profile";
		$result = mysqli_query($this->getConnection(), $sql);
		foreach ($result as $key => $value) 
		{
			$v[]=$value;
		}
		return $v;
	}

	public function showDataInMatrixForm()
	{
		echo '<table border="1">';
		echo '<tr>';
		echo '<td>', 'cv\v', '</td>';

		foreach($this->getEmployerData() as $key1 => $d) 
		{ 
		   echo '<td>','v1('.$key1.')' ,'</td>';
		}
		echo '</tr>';
		$j=0;
		foreach($this->getFreelancerData() as $key => $c) 
		{
		    echo '<tr>';
		    echo '<td>', 'cv('.$key.')', '</td>';
		    foreach($this->getEmployerData() as $key2 => $d)
		     { 
		     	$record[]= $this->getData($c, $d);
		        echo '<td>','W'.$key.$key2.'='. $record[$j]['weight'], '</td>'; 
		        $j++;
		    }
		    echo '</tr>';
		    
		}
		echo '</table>';
	}

	public function getRecord()
	{
		$j=0;
		foreach($this->getFreelancerData() as $key => $c) 
		{

		    foreach($this->getEmployerData() as $key2 => $d)
		     { 
		     	$record[]= $this->getData($c, $d); 
		    }
		    
		}
		return $record;
	}

	public function getData($cv, $v)
	{
		 //$mam= $this->getCountMatch($cv,$v);
		 //return $a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>$mam);
		if($cv['job_category_id']==$v['job_category_id']
		&&$cv['job_sub_category_id']==$v['job_sub_category_id']
		&&$cv['skill_id']==$v['skill_id'])
		{	
			//$mam=$this->calculateWeight('job_category_id','job_sub_category_id','skill_id');
			$mam=$this->calculateWeight(60,40,10);

			return	$a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>$mam);
		}

		elseif($cv['job_category_id']==$v['job_category_id']
		&&$cv['job_sub_category_id']==$v['job_sub_category_id'])
		{
			//$ama=$this->calculateWeight($cv['job_category_id']);
			
			$ama=$this->calculateWeight(60,40);
			return	$a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>$ama);
		}

		elseif($cv['job_category_id']==$v['job_category_id'])
		{
			
			$ama=$this->calculateWeight(60);
			return	$a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>$ama);
		}

		elseif($cv['job_sub_category_id']==$v['job_sub_category_id'])
		{
		
			$ama=$this->calculateWeight(40);
			return	$a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>$ama);

		}

		// return "not match"; 
		return $a[]= array('Cv_id'=>$cv['id'],'v_id'=>$v['id'],'weight'=>'0.00');
		
	}

	public function sortArrayWithDecendingOrder()
	{
		$s[]=array_chunk($this->getRecord(), count($this->getEmployerData()));
		echo '<br>';
 		$GLOBALS['$matching'] = array();
     	function custom_sort($a,$b)
     	{
          return $a['weight']<$b['weight'];
     	}
		for ($i=0; $i <count($s[0]) ; $i++)
		{ 
			usort($s[0][$i], 'custom_sort');
			echo "<br>".json_encode($s[0][$i]);
			$matching[]=$s[0][$i];
		}
		echo "<br><br>";
	}

	// public function custom_sort($a, $b)
	// {
	// 	return $a['weight']<$b['weight'];
	// }

	public function getMachingArray()
	{
		$s[]=array_chunk($this->getRecord(), count($this->getEmployerData()));
 		$GLOBALS['$matching'] = array();
     	function custom_sort($a,$b)
     	{
          return $a['weight']<$b['weight'];
     	}
		for ($i=0; $i <count($s[0]) ; $i++)
		{ 
			usort($s[0][$i], "custom_sort");
			//echo "<br>".json_encode($s[0][$i]);
			$matching[]=$s[0][$i];
		}
		return $matching;
	}

	public function recommendedJobForRespectiveId()
	{
		$cvid=array();
		$vid = array();
		$matching[]=$this->getMachingArray();
		// var_dump($matching);
		// exit();
		for($j=0; $j<count($this->getFreelancerData());$j++)
		{

			array_push($cvid, $matching[$j][0]['Cv_id']);
			$temp="";
			for ($i=0; $i <count($this->getEmployerData()) ; $i++)
	 		{ 
				$weight=$matching[$j][$i]['weight'];
				if ($weight>=0.5)
				 {
					$temp= $temp.",".($matching[$j][$i]['v_id']);
				}	
			}
			$temp=substr($temp, 1);
			array_push($vid, $temp);
			echo "<br>";
		}
		for ($i=0; $i <count($cvid) ; $i++)
		{ 
			echo "CV ID: ".$cvid[$i]."---".$vid[$i]."<br>";
		}
	}

	public function recommendedJobBySpecificId($id)
	{
		$a=array();
		$matching[]=$this->getMachingArray();
		foreach ($this->search($matching, 'Cv_id', $id) as $key => $value)
		{
			//setting the weight point here only 0.5 weight job store in array 
			if($value['weight']>=0.5){
			$a[]= $value['v_id'];

			}
		}

		if(count($a)>0)
		{
		return	$a;
		}

		else
		{
			return "no job avalible for this id";
		}
	}

	public function search($array, $key, $value)
	{
		$results = array();
	    if (is_array($array)) 
	    {
	        if (isset($array[$key]) && $array[$key] == $value) 
	           $results[] = $array; 

	        foreach ($array as $subarray) 
	            $results = array_merge($results, $this->search($subarray, $key, $value)); 
	    } 

	   return $results;
	}

	public function calculateWeight($catg=1, $subCatg=1, $skl=1)
	{
		return ($catg+$subCatg+$skl)/110;
	}
	public function getCountMatch(array $Array, array $SecondArray)
	{
		//die($SecondArray['job_description']);
		// $words1 =  str_word_count();

		// $words2 =  str_word_count();

		$intersection = array_intersect(explode(" ", $Array['resume_description']), explode(" ", $SecondArray['job_description']));

		if(count($intersection))
		{
		    return count($intersection);
		}
		else{
			return 0;
		}
	}


}

class job extends analysis{

	public function JobList($id)
	{	
		$data = new analysis();
	    $id=$data->recommendedJobBySpecificId($id);
		//return implode(',', $id);
		if(count($id)>0)
		{
			$array = implode("','",$id);
			$sql = "SELECT * FROM employer_profile WHERE id IN('".$array."')";
			$result = mysqli_query($this->getConnection(), $sql);
			foreach ($result as $key => $value) 
			{
				$v[]=$value;
			}
			return $v;
		}
		else
		{
			return 'Not found any recommended job';
		}
		
	}


}

class helper extends analysis{
	public function getjobCategoryName($id)
	{
		$sql = "SELECT name FROM job_category WHERE id=".$id." ";
				$result = mysqli_query($this->getConnection(), $sql);
				foreach ($result as $key => $value) 
				{
					$v=$value['name'];
				}
				return $v;
	}

	public function getjobSubCategoryName($id)
	{
		$sql = "SELECT name FROM job_sub_category WHERE id=".$id." ";
				$result = mysqli_query($this->getConnection(), $sql);
				foreach ($result as $key => $value) 
				{
					$v=$value['name'];
				}
				return $v;
	}

	public function getSkillName($id)
	{
		
			$sql = "SELECT name FROM skill WHERE id IN(".$id.")";
			$result = mysqli_query($this->getConnection(), $sql);
			foreach ($result as $key => $value) 
			{
				$v[]=$value['name'];
			}
			return $v;
	}

	

}