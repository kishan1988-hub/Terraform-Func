locals {
  num1 = 23
  num2 = 45.5
  num3 = 65.9
  num4 = [12, 15, 54]
}

output "absolute" {
  value = abs(local.num2)
}

output "ceil" {
  value = ceil(local.num3)
}

output "floor" {
  value = floor(local.num2)
}

output "max" {
  value = max(local.num4)
}
