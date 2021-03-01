import React, { Component }               from 'react'
import PropTypes                          from 'prop-types'
import { Link }                           from 'react-router-dom'

class PostList extends Component {

  // static defaultProps = {
    
  // }

  // static propTypes = {
    
  // }

  state = {
    posts: []
  }

  componentDidMount() {
    fetch('/posts')
      .then(posts => posts.json())
      .then(posts => {
        this.setState({
          posts: posts
        })
      })
    
  }

  renderPosts = () => {
    return this.state.posts.map(post => {
      return (
        <div key={post.id}>
          {post.title} - {post.content}
        </div>
      )
    })
  }

  render() {
    // const {  } = this.state
    // const {  } = this.props
    return (
      <div>
        PostList Component
        {this.renderPosts()}
        <Link to="/posts/new">Add a New Post</Link>
      </div>
    )
  }
}

export default PostList