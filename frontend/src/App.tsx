import React, { useState } from "react"
import "./App.css"
import { Button } from "antd"
import { fetchExampleData } from "./services/api"

const App: React.FC = () => {
  const [count, setCount] = useState(0)
  const handleClickButton = async () => {
    setCount((prev) => prev + 1)
    const data = await fetchExampleData()
    console.log(data)
  }

  return (
    <div>
      <p className="text-blue-500 font-bold">Hello, world!</p>
      <Button type="primary" onClick={handleClickButton}>
        Count: {count}
      </Button>
    </div>
  )
}

export default App
