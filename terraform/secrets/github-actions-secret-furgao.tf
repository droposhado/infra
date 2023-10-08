resource "github_actions_secret" "trakttv_aws_secret_access_key" {
  repository      = var.domain
  secret_name     = "DOMAIN"
  plaintext_value = b2_application_key.trakttv.application_key
}




# deploy key acl

# acm:ListCertificates                   *
# acm:DescribeCertificate                *
# apigateway:AddCertificateToDomain      /domainnames*
# apigateway:RemoveCertificateFromDomain /domainnames*
# apigateway:GET                         /domainnames*, /apis*, /restapis*
# apigateway:DELETE                      /domainnames*, /apis*, /restapis*
# apigateway:POST                        /domainnames*, /apis*, /restapis*
# apigateway:PATCH                       /domainnames*, /apis*, /restapis*
# cloudformation:GET                     *
# cloudformation:ListStacks              *
# cloudformation:DescribeStacks          *
# cloudfront:UpdateDistribution          *
# route53:ListHostedZones                *
# route53:ChangeResourceRecordSets       hostedzone/{HostedZoneId}
# route53:GetHostedZone                  *
# route53:ListResourceRecordSets         *
# iam:CreateServiceLinkedRole            arn:aws:iam::${AWS::AccountId}: role/aws-service-role/ops.apigateway.amazonaws.com/AWSServiceRoleForAPIGateway
# s3:ListBucket                          *
# s3:GetObject                           *
