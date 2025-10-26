fun reverse(input: String): String {

    if (input.isEmpty()) return input

    val tmp = input.toCharArray()
    tmp.reverse()
    return String(tmp)

}
