locals {
  a = ["foo", "bar", "yoda"]
  b = ["food", "drink", "water"]
  c = ("Hello World!!")
}

output "join" {
  value = join(" ",local.a, local.b)
}

output "lowercase" {
  value = lower(local.c)
}

output "replace" {
  value = replace(local.c, "/W.*d/", "everybody")
}

output "trim" {
  value = trim(local.c, "!")
}

output "substring" {
  value = substr(local.c,0, 5)
}

output "upper" {
  value = upper(substr(local.c,0,5))
}


output "zipmap" {
  value = zipmap(local.a,local.b)
}


output "concat" {
  value = concat(local.a,local.b)
}

output "element" {
  value = element(local.a,1)
}


output "length" {
  value = length(local.a)
}


output "for_loop" {
  value = {for s in local.a : s => upper(s)}
}

output "timestamp" {
  value = timestamp()
}


output "timeadd" {
  value = timeadd(timestamp(), "10m")
}


output "timefmt" {
  value = formatdate("MM DD YYYY",timestamp())
}
