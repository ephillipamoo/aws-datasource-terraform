******************************************************************************************
Data Source: aws_key_pair
Use this data source to get information about a specific EC2 Key Pair. 
That is created in AWS.  This key is used for the EC2 instance connectivity 

Data Source uses external value in cloud services to import specific configuration
from cloud to your terraform block 

https://registry.terraform.io/providers/hashicorp/aws/4.9.0/docs/data-sources/key_pair
*****************************************************************************************


Argument Reference
The arguments of this data source act as filters for querying the available Key Pairs. The given filters must match exactly one Key Pair whose data will be exported as attributes.

key_pair_id - (Optional) The Key Pair ID.

key_name - (Optional) The Key Pair name.

filter - (Optional) Custom filter block as described below.

filter Configuration Block
The following arguments are supported by the filter configuration block:

name - (Required) The name of the filter field. Valid values can be found in the EC2 DescribeKeyPairs API Reference.

values - (Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.

Attributes Reference
In addition to all arguments above, the following attributes are exported:

id - ID of the Key Pair.

arn - The ARN of the Key Pair.

fingerprint - The SHA-1 digest of the DER encoded private key.

tags - Any tags assigned to the Key Pair.