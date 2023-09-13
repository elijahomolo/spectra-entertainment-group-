import * as React from "react"
import type { HeadFC, PageProps } from "gatsby"

const pageStyles = {
    backgroundColor: '#000000',
    width: '100vw',
    height: '100vh'
}

const backgroundStyles = {
  backgroundImage: `url("https://specctraent.s3.amazonaws.com/SEG-COMING-SOON.png")`,
  backgroundPosition: 'center',
  backgroundSize: 'contain',
  backgroundRepeat: 'no-repeat',
    width: '100vw',
    height: '100%'

}

const IndexPage: React.FC<PageProps> = () => {
  return (
    <main style={pageStyles}>
      <div style={backgroundStyles}>

      </div>
    </main>
  )
}

export default IndexPage

export const Head: HeadFC = () => <title>Home Page</title>
