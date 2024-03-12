import axios from "axios"

export async function fetchExampleData() {
  try {
    const response = await axios.get("./api/example/data")
    return response.data
  } catch (error) {
    console.error("There was a problem with the fetch operation:", error)
  }
}
