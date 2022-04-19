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
        
    stage("update kube config file"){
      sh '''
         aws eks --region us-east-1 update-kubeconfig --name eks
         '''
    
    }
    
    stage("deploy metric server k8s"){
      sh '''
         kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
         '''
    
    
    }
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
  
  else{
  
  error("invalid branch")
  
  
  }



}

