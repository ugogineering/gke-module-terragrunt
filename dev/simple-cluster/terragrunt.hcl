include "root" {
    path = find_in_parent_folders()
}

inputs = {
    # I do not think that the below line is used for now with the current arrangement 
    # with main.tf file.
    #project_id = "myterraformpractice"
    #cluster_name = "my-gke-cluster"
    #location = "us-east1-a"
    #zone = "us-east1-a"
}