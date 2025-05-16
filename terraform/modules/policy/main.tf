resource "azurerm_policy_assignment" "enforce_tag" {
  name                 = "enforce-tags-assignment"
  scope                = var.scope
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/require-tag-environment"

  parameters = <<PARAMS
{
  "tagName": {
    "value": "Environment"
  }
}
PARAMS
}
