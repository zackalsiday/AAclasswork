import React from 'react'

class Tabs extends React.Component{
    constructor(props){
        super(props)
        this.state = {selectedTab: 0}
        this.changeTab = this.changeTab.bind(this)
    }

    changeTab(num) {
      this.setState({selectedTab: num})
    }

 

    render() {
       return (
        <div className='tab'>
           <h1 className='tab-title'>Tabs</h1>
           <ul className='allTabs'>
               {this.props.listTab.map((tab, idx) => 
                   <h1 className='tab-item' id={tab.title} onClick={() => this.changeTab(idx)} >{tab.title}</h1>
               )}
               
           </ul>
               <article className='content'>{this.props.listTab[this.state.selectedTab].content}</article>
     </div>
       )
    }
}

export default Tabs 