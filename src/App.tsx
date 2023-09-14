import './App.css'

declare const API_URL: string | undefined;

function getApiUrl(): string {
  return API_URL || 'http://localhost:3000'
}

function App() {
  return (
    <>
      <p className="read-the-docs">
        API_URL is {getApiUrl()}
      </p>
    </>
  )
}

export default App
