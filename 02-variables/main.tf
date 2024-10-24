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
  value = "Training ${var.list1[0]} starts at ${var.list1[1]} tought by ${var.list1[2]}"
}

output "map1" {
  value = "Traning ${var.map1["course"]} starts at ${var.map1["time"]} tought by ${var.map1["tranner"]}"
}