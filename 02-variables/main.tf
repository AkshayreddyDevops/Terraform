variable "x"{
  default = 10
}

#list
variable "list1" {
  default = ["DevOps","6AM","Kumar"]
}

variable "map1" {
  default = {
    course = "DevOps"
    tranner = "Kumar"
    time = "6pm"
  }
}
output "x"{
  value = var.x
}

output "list1"{
  value = "Training ${list1[0]} starts at ${list1[1]} tought by ${list1[2]}}"
}

output "map1" {
  value = "Traning ${map1["course"]} starts at ${map1["time"]} tought by ${map1["tranner"]}}"
}