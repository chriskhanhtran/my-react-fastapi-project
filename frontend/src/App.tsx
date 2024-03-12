import React, { useState } from "react"
import "./App.css"
import { Button } from "antd"

const App: React.FC = () => {
  const [count, setCount] = useState(0)

  return (
    <div>
      <p className="text-blue-500 font-bold">Hello, world!</p>
      <Button type="primary" onClick={() => setCount((prev) => prev + 1)}>
        Count: {count}
      </Button>
    </div>
  )
}

export default App
