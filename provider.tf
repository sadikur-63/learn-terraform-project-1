terraform{
    required_version ="~>1.7"
    required_providers{
        aws ={
            source ="hashicorp/aws"
            version ="~>5.0"
        }
    }
}
provider "aws"{
    region ="ap-southeast-2"
}
provider "aws"{
    region ="ap-southeast-1"
    alias="ap-southeast"
}

resource "aws_s3_bucket" "ap-southeast-2"{
    bucket ="some-random-bucket-sadikur"
}

resource "aws_s3_bucket" "ap-southeast-1"{
    bucket ="some-random-bucket-rahman"
    provider =aws.ap-southeast
}