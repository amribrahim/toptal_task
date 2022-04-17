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
    stage("apply terraform code"){
      sh '''
      	  cd k8s
      	  kubectl apply -f .
      	
         ''' 
    } 
  
  }
  
  else{
  
  error("invalid branch")
  
  
  }



}

