import React from 'react';

import {isEnvBrowser} from './../utils.js'
import {_} from './../label.js'

import Cloths from './Cloths.js'


import './inventory.css'
import ItemsPanel from './ItemsPanel.js';
import {getImgFromCode, getRandomImageKey} from "./code2url"

let debugInv = true

function getDefaultMenu() {
    if (isEnvBrowser() && debugInv) {
        let invData = {
            "playerName":"Mamadou Kanaté",
            "panels":[
                {
                    "sizeX":8,
                    "sizeY":10,
                    "width":77, //vh
                    "height":80,//vh
                    "maxWeight":30, //vw
                    "top":15, //vh
                    "left":5, //vw
                    "items":[
                        //{code:"BREAD", qtty:15, size:[1,2]},
                        //{code:"COKE", customName:'WhiteVagos', qtty:10},
                        //{code:"DOOR", qtty:1, size:[3,2]},
                        //{code:"SEXTOY", qtty:1, size:[2,1]},
                    ]
                },
                {
                    "name":_("FLOOR"),
                    "sizeX":6,
                    "sizeY":1,
                    "width":60, //vh
                    "height":13.5, //vh
                    "top":82, //vh
                    "left":56, //vw
                    "items":[
                        //{code:"BREAD", qtty:15, size:[1,2]},
                        {code:"METH", customName:'O\'Neil Crystal', qtty:10},
                    ]
                },
                {
                    "name":_("WEAPONS"),
                    "sizeX":3,
                    "sizeY":2,
                    "width":30, //vh
                    "height":23, //vh
                    "top":50, //vh
                    "left":73, //vw
                    "items":[
                        {code:"COMBATPISTOL", qtty:1, size:[1,1]},
                        {code:"SNIPERRIFLE", qtty:1, size:[1,3]},
                        {code:"BULLET", qtty:70, size:[1,1]},
                        {code:"BULLET", qtty:8, size:[1,1]},
                    ]
                }
            ]
        }

        for (let i=0;i<10;i++) {
            invData.panels[0].items.push({code:"randomItem"+i, img:getImgFromCode(getRandomImageKey()), weight:(Math.random()/10), qtty:Math.floor(Math.random()*99)+1, size:[Math.floor(Math.random()*4)+1,Math.floor(Math.random()*3)+1]})
        }

        return invData
    } else {
        return {}
    }
}

export default class Inventory extends React.Component {
    state = {};
    constructor () {
        super();
        this.state = {
            invData: getDefaultMenu(),
            invOpen: isEnvBrowser(),
            hoveredItem: null,
            drag: false,
            mousePos: [0,0],
        };

        this.invClose = this.invClose.bind(this)
        this.isVisible = this.isVisible.bind(this)
        this.createInv = this.createInv.bind(this)
        this.getInvData = this.getInvData.bind(this)
        this.setHoveredItem = this.setHoveredItem.bind(this)
        this.startDrag = this.startDrag.bind(this)
        this.stopDrag = this.stopDrag.bind(this)
        this.setMousePos = this.setMousePos.bind(this)
    };

    getInvData() {
        return this.state.invData
    }

    isVisible() {
        return this.state.invOpen
    }

    componentDidMount() {
        let invClose = this.invClose
        let isVisible = this.isVisible
        window.addEventListener('keydown', function (e) {
            if (e.key === "Escape") {
                if (isVisible()) {
                    invClose()
                }
            }
        });

        let setMousePos = this.setMousePos
        document.addEventListener('mousemove', function (e) {
            setMousePos(e.clientX, e.clientY)
        });

        let stopDrag = this.stopDrag
        document.addEventListener('mouseup', function (e) {
            if (e.button === 0) {
                stopDrag()
            }
        });
    }

    invClose() {
        this.setState({invOpen:false})
    }

    setHoveredItem(item) {
        if (!this.state.drag) {
            this.setState({hoveredItem:item})
        }
    }

    startDrag(offsetX, offsetY) {
        this.setState({drag:[offsetX, offsetY]})
    }

    stopDrag() {
        this.setState({drag:false})
    }

    setMousePos(x,y) {
        this.setState({mousePos:[x,y]})
    }

    createInv(invData) {
        let inv = []

        inv.push(<span id="invTitle" key="invTitle" className="unselectable">{_("Inventory")}</span>)
        inv.push(<div id="playerName" key="playerName" className="unselectable"><span>{invData.playerName || "Player Name"}</span></div>)
        inv.push(<Cloths key='cloths'/>)

        let setHoveredItem = this.setHoveredItem
        let startDrag = this.startDrag

        for (const key in invData.panels) {
            inv.push(<ItemsPanel key={'itemsPanel'+key} id={'itemsPanel'+key} panelData={invData.panels[key]} setHoveredItem={setHoveredItem} startDrag={startDrag}/>)
        }

        let item = this.state.hoveredItem

        if (item) {
            if (this.state.drag) {
                let draggedItem = []
                if (item) {
                    for (let y=0; y<item.size[0]; y++) {
                        for (let x=0; x<item.size[1]; x++) {
                            let className = "invItem draggedItem "
                            if (x === 0) {
                                className += "leftFree "
                            } 
                            if (x === (item.size[1]-1)) {
                                className += "rightFree "
                            }
                            if (y === 0) {
                                className += "topFree "
                            } 
                            if (y === (item.size[0]-1)) {
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
                                            style={{
                                                maxWidth:(8*item.size[1])+'vh',
                                                maxHeight:(8*item.size[0])+'vh',
                                                right:((9*item.size[1])/2)+'vh',
                                                bottom:((9*item.size[0])/2)+'vh',
                                            }}
                                        ></img>
                                        
                                        <span 
                                            key={"invItemQtty"+x+""+y} 
                                            className="unselectable itemQtty" 
                                        >
                                            {item.qtty || 1}
                                        </span>
                                    </div>   
                                )
                            }
        
                            draggedItem.push(<div 
                                className={className} 
                                key={"draggedItem"+x+""+y} 
                            >
                                {divContent}
                            </div>)
        
                            if (x === (item.size[1]-1)) {
                                draggedItem.push(<div className="invBreaker" key={"breakerDraggedItem"+y}></div>)
                            }
                        }
                    }
        
                    inv.push(<div key='draggedItemContainer' id="draggedItemContainer" style={{top:this.state.mousePos[1]-this.state.drag[1], left:this.state.mousePos[0]-this.state.drag[0]}}>
                        {draggedItem}
                    </div>)
                }
            } else {
                let hoveredItemDiv = []
                hoveredItemDiv.push(
                    <span id="hoveredItemName" key="hoveredItemName">{item.customName || _(item.code)}</span>
                )

                hoveredItemDiv.push(
                    <span id="hoveredItemWeight" key="hoveredItemWeight">{((item.weight|| 0)*(item.qtty || 1)).toFixed(2)+"kg"}</span>
                )

                hoveredItemDiv.push(
                    <span id="hoveredItemWeightDetail" key="hoveredItemWeightDetail">{"( "+(item.weight|| 0).toFixed(2)+"kg * "+(item.qtty || 1)+" )"}</span>
                )
                hoveredItemDiv.push(
                    <img id="hoveredItemImg" key="hoveredItemImg" alt="hoveredItem" src={item.img || getImgFromCode(item.code)} ></img>
                )

                inv.push(
                    <div
                        key="hoveredItemDiv"
                        className="hoveredItem"
                        style={{
                            "position":"absolute",
                            "left":this.state.mousePos[0]+10+"px",
                            "top":this.state.mousePos[1]-10+"px"
                        }}
                    >
                        {hoveredItemDiv}   
                    </div>
                )
            }
        }

        return inv
    }

    render() {
        let invData = this.getInvData()
        if (invData.show) {
            let inventory = this.createInv(invData)
            return (      
                <div id="Inventory">{inventory}</div>
            )
        } else {
            return (      
                <div id="Inventory" style={{'zIndex':-100}}></div>
            )
        }
        
    }
}