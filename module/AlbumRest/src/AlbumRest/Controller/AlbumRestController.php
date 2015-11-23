<?php

namespace AlbumRest\Controller;

use Zend\Mvc\Controller\AbstractRestfulController;

use Album\Model\Album;          // <-- Add this import
use Album\Form\AlbumForm;       // <-- Add this import
use Zend\View\Model\JsonModel;

class AlbumRestController extends AbstractRestfulController
{
    protected $albumTable;
    // configure response
//     public function getResponseWithHeader()
//     {
//     	$response = $this->getResponse();
//     	$response->getHeaders()
//     	//make can accessed by *
//     	->addHeaderLine('Access-Control-Allow-Origin','*')
//     	//set allow methods
//     	->addHeaderLine('Access-Control-Allow-Methods','POST PUT DELETE GET');
    
//     	return $response;
//     }
    
    public function replaceList($data)
    {
    	$response = $this->getResponseWithHeader()
    	        ->setContent( __METHOD__.' Not SUpport "PUT" get Update data');
    	return $response;
    }
    
    public function patchList($data)
    {
    	$response = $this->getResponseWithHeader()
    	->setContent( __METHOD__.' Not SUpport "PACTH" get Update data');
    	return $response;
    }
    
    public function getList()
    {
        $results = $this->getAlbumTable()->fetchAll();
        $data = array();
        foreach($results as $result) {
            $data[] = $result;
        }

        return new JsonModel(array(
            'data' => $data,
        ));
    }

    public function get($id)
    {
        $album = $this->getAlbumTable()->getAlbum($id);

        return new JsonModel(array(
            'data' => $album,
        ));
    }
    
    public function getData($id)
    {
    	$album = $this->getAlbumTable()->getAlbum($id); 
    	return  $album;
    }

    
    public function create($data = null)
    { 
//     	 $response = $this->getResponseWithHeader()
//     	    	     ->setContent( __METHOD__.' get creat data');
//     	 return $response;
    	 
    	if (!array_key_exists("id",$data))
    	{ 
    		return new JsonModel(array(
    				'Error' => "Key id nots exists!",
    				'data'=> NULL,
    		));
    	}
    	 
    	$id = (int)$data['id'];
    	$album_check = $this->getAlbumTable()->getAlbum($id);
    	if($album_check and $id != 0 ){  	
    		// Update
	        $form = new AlbumForm();
	        $album = new Album();
	        $form->setInputFilter($album->getInputFilter());
	        $form->setData($data);
	        if ($form->isValid()) {
	            $album->exchangeArray($form->getData());
	            $status = $this->getAlbumTable()->saveAlbum($album);
	            $text_result = '';
	            if($status)
	            {
	            	$text_result = 'Update Sucess';
	            	$_Response_data = $this->getData($id);
	            }else {
	            	$text_result = 'Update Error';
	            	$_Response_data = NULL;
	            }
	            
	            return new JsonModel(array(
	            		'status' => $text_result,
	            		'data'=> $_Response_data,
	            ));
	        }
    	}else { 
            // Insert 
            
    		 
    		
    		$form = new AlbumForm();
    		$album = new Album();
    		$form->setInputFilter($album->getInputFilter());
    		$form->setData($data);
    		
    		try {
    		
	    		if ($form->isValid()) {
	    			$album->exchangeArray($form->getData());
	    			$id_insert = $this->getAlbumTable()->saveAlbum($album);
	    			$text_result = ''; 
	    			if($id_insert)
	    			{
	    				$text_result = 'Add Sucess';
	    				$_Response_data = $this->getData($id_insert);
	    			}else {
	    				$text_result = 'Add Error';
	    				$_Response_data = NULL;
	    			}
	    			 
	    			return new JsonModel(array(
	    					'status' => $text_result,
	    					'data'=> $_Response_data,
	    			));
	    		}
		    		else {
		    			//die("khong hop le");
		    			return new JsonModel(array(
		    					'Error' => 'vui long check lai cac truong xem da dung dinh dang yeu cau',
		    			));
		    		}
	    		} catch (\Exception $e) {
	    			 echo "-99999999999ddsdsdsds";
	    			return new JsonModel(array(
	    					'Error' => $e->getMessage(), 
	    			));
	    		}
    	}
    }

    public function update($id, $data)
    {
    	 
//     	 $response = $this->getResponseWithHeader()
//     	             ->setContent( __METHOD__.' get Update  data');
//     	return $response;
    	 
    	
        $data['id'] = (int)$id;
        $album = $this->getAlbumTable()->getAlbum($id);
        $form  = new AlbumForm();
        $form->bind($album);
        $form->setInputFilter($album->getInputFilter());
        $form->setData($data);
        if ($form->isValid()) {
            $id = $this->getAlbumTable()->saveAlbum($form->getData());
        }

        return $this->get($id);
    }

    public function delete($id)
    {
        $this->getAlbumTable()->deleteAlbum($id);

        return new JsonModel(array(
            'data' => 'deleted',
        ));
    }

    public function getAlbumTable()
    {
        if (!$this->albumTable) {
            $sm = $this->getServiceLocator();
            $this->albumTable = $sm->get('Album\Model\AlbumTable');
        }
        return $this->albumTable;
    }
}
