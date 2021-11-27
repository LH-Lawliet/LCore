import React from 'react';

import './itemsPanel.css'
import {recursiveAssign} from './../utils.js'
import {getImgFromCode} from './code2url.js'
import {_} from './../label.js'


export default class ItemsPanel extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.data = data.panelData;
        this.startDrag = data.startDrag
        this.setHoveredItem = data.setHoveredItem;
        this.createItemsPanel = this.createItemsPanel.bind(this)
        this.getItemsPanelData = this.getItemsPanelData.bind(this)
    };

    getItemsPanelData() {
        return this.data
    }

    sortItems(items, slotsX, slotsY) {
        let nItems = []
        recursiveAssign(nItems, items)

        let grid = []
        for (let y = 1; y <= slotsY; y++) {
            let line = []
            for (let x = 1; x <= slotsX; x++) {
                line.push(" ")
            }
            grid.push(line)
        }

        for (const key in nItems) {
            let item = nItems[key]
            item.size = item.size || [1,1]
            item.area = (item.size[0]||1)*(item.size[1]||1)
        }

        nItems.sort(function(a, b) {
            return b.area - a.area;
        }); // Sort biggest first

        for (const key in nItems) {
            //console.log("had to put "+.code)
            let item = nItems[key]
            let posOk = true
            for (let lineKey = 0; lineKey < grid.length; lineKey++) {
                let line = grid[lineKey]
                posOk = true
                for (let slotKey = 0; slotKey < line.length; slotKey++) {
                    posOk = true
                    for (let x = 0; x < item.size[1]; x++) {  
                        for (let y = 0; y < item.size[0]; y++) {                           
                            if (!grid[lineKey+y] || !grid[lineKey+y][slotKey+x] || grid[lineKey+y][slotKey+x] !== " ") {
                                posOk = false
                                break
                            }
                        }
                        if (!posOk) {
                            break
                        }
                    }
                    if (posOk) {
                        for (let x = 0; x < item.size[1]; x++) {
                            for (let y = 0; y < item.size[0]; y++) {
                                grid[lineKey+y][slotKey+x] = key
                            }
                        }


                        /*
                            //debugPrint
                        for (const key in grid) {
                            let line = key+' : '
                            for (const char in grid[key]) {
                                line += grid[key][char]+","
                            }
                            console.log(line)
                        }*/


                        break
                    }
                }
                if (posOk) {
                    break
                }
            }
            if (!posOk) {
                console.log("can't fit everything")
                return [[],{}]
            }
        }
        return [grid, nItems]
    }

    calculateTotalWeight(items) {
        let weight = 0
        for (let itemK in items) {
            let item = items[itemK]
            weight += (item.weight || 0)*(item.qtty || 1)
        }
        return weight
    }

    createItemsPanel(data) {
        let itemsTable = []

        let [grid, nItems] = this.sortItems(data.items, data.sizeX, data.sizeY)


        if (data.name) {
            itemsTable.push(<span className="itemPanelTitle unselectable" key={"itemPanelTitle"+data.name}>{data.name}</span>)
            itemsTable.push(<div className="invBreaker unselectable" key={"breakerTitle"+data.name}></div>)
        }


        let weightBar
        if (data.maxWeight) {
            let totalWeight = this.calculateTotalWeight(data.items)

            weightBar = (
                <div 
                    className="weightBarBackground unselectable" 
                    key={"weightBarBackground"+(data.name||Math.random())}
                    style={{
                        "position":"absolute",
                        "width":9.5*data.sizeX+"vh",
                        "left":data.left+"vw",
                        "top":data.top+"vh"
                    }}  
                >
                    <div 
                        className="weightBarFill unselectable" 
                        key={"weightBarFill"+(data.name||Math.random())}
                        style={{
                            "width":(totalWeight/data.maxWeight)*100+"%"
                        }}
                    ></div>

                    <span className="weightText">
                        {totalWeight.toFixed(3)+" / "+data.maxWeight+" kg"}
                    </span>
                </div>
            )
        }

        for (let y = 0; y < grid.length; y++) {
            let line = grid[y]
            for (let x = 0; x < line.length; x++) {
                let item = nItems[line[x]]

                let className = "invItem "

                
                if (x === 0 || line[x-1] !== line[x]) {
                    className += "leftFree "
                } 
                if (x === (data.sizeX-1) || line[x+1] !== line[x]) {
                    className += "rightFree "
                }

                if (y === 0 || grid[y-1][x] !== grid[y][x]) {
                    className += "topFree "
                } 
                if (y === (data.sizeY-1) || grid[y+1][x] !== grid[y][x]) {
                    className += "bottomFree "
                }

                let divContent
                if (item && className.includes("rightFree") && className.includes("bottomFree")) {
                    divContent = (      
                        <div>           
                            <img 
                                src={item.img || getImgFromCode(item.code)} 
                                key={"invItemImg"+x+""+y} 
                                className="unselectable" 
                                alt="itemLogo"
                                draggable="false"
                                style={{
                                    maxWidth:(8*item.size[1])+'vh',
                                    maxHeight:(8*item.size[0])-3+'vh',
                                    right:((9*item.size[1])/2)+'vh',
                                    bottom:((9*item.size[0])/2)+1.5+'vh',
                                }}
                            ></img>
                            
                            <span 
                                key={"invItemQtty"+x+""+y} 
                                className="unselectable itemQtty" 
                            >
                                {item.qtty || 1}
                            </span>

                            <div 
                                className="unselectable itemName" 
                                style={{
                                    right:((9*item.size[1])/2)+'vh',
                                    width:(9*item.size[1])-4.5+'vh',
                                }}
                            >
                                <span key={"invItemName"+x+""+y} 
                                    style={{
                                        maxWidth:((9*item.size[1])/1.5)+'vh',
                                    }}
                                >
                                    {item.customName || _(item.code)}
                                </span>
                            </div>
                        </div>   
                    )
                }

                let setHoveredItem = this.setHoveredItem
                let startDrag = this.startDrag

                itemsTable.push(
                    <div 
                        className={className} 
                        key={"invItem"+x+""+y} 
                        onMouseOver={function () {
                            if (item) {
                                setHoveredItem(item)
                            }
                        }}

                        onMouseDown={function (e) {
                            //console.log(e)
                            if (e.button === 0) {
                                /*let leftCount = 0
                                for (let x2 = x-1; x2 >= 0; x2--) {
                                    if (grid[y][x2] === grid[y][x] ) {
                                        leftCount++
                                    }
                                }

                                let topCount = 0
                                for (let y2 = y-1; y2 >= 0; y2--) {
                                    if (grid[y2][x] === grid[y][x] ) {
                                        topCount++
                                    }
                                }*/
                                startDrag(25, 25)
                            }
                        }}
                        
                        onMouseLeave={function () {
                            if (item) {
                                setHoveredItem()
                            }
                        }}
                    >
                        {divContent}
                    </div>
                )
                if (x === (data.sizeX-1)) {
                    itemsTable.push(<div className="invBreaker" key={"breaker"+y}></div>)
                }
            }
        }

        return [itemsTable, weightBar]
    }

    render() {
        let data = this.getItemsPanelData()
        let items = this.createItemsPanel(data)
        return (      
            <div>
                {items[1]}
                <div className="itemsPanel" style={{"position":"absolute", "top":(data.maxWeight ? (data.top+2.05+"vh"):data.top+"vh" ), "left":data.left+"vw", "maxWidth":data.width+"vh", "height":(data.maxWeight ? (data.height-2.05+"vh"):data.height+"vh")}}>{items[0]}</div>
            </div>
        )
    }
}