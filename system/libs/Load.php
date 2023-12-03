<?php

class Load
{
	public $title;
	public $desc;
	public $image;

	public function view($fileName, $data = false)
	{
		if (is_array($data) && !empty($data)) {
			extract($data);
		}
		include 'app/views/' . $fileName . '.php';
	}
	public function model($fileName)
	{
		include 'app/models/' . $fileName . '.php';
		return new $fileName();
	}
}
