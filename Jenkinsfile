node("master"){
  if(env.BRANCH_NAME == "main"){
    stage("Checkout"){
            checkout scm 
            
        }
    
    stage("apply terrafrom code"){
      sh '''
      	  cd terraform
      	  terraform init
      	  terraform apply -auto-approve
      	
         ''' }
    stage("apply k8s code"){
      sh '''
      	  cd k8s
      	  kubectl apply -f .
      	
         ''' 
    }
    
    stage("install loki"){
      sh '''
      	  chmod +x helm.sh
      	  ./helm.sh
      	
         ''' 
    } 
  
  }
  
  else{
  
  error("invalid branch")
  
  
  }



}

