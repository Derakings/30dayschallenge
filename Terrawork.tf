terraform { 
  cloud { 
    
    organization = "dera-dev" 

    workspaces { 
      name = "AWS-infrastructure" 
    } 
  } 
}