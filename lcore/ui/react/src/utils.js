let resourceName = "unknown resourceName"

export function isEnvBrowser() {
    if (window.invokeNative) {
        if (resourceName === "unknown resourceName") {
            resourceName = window.GetParentResourceName()
        }
        return false
    }
    return true
} 

export function recursiveAssign(element1,element2) {
    for (let k in element2) {
        if (typeof element2[k] === "object") {
            if (element1[k] && (typeof element1[k] === "object")) {
                recursiveAssign(element1[k],element2[k])
            } else {
                element1[k] = element2[k]
            }
        } else {
            element1[k] = element2[k]
        }
    }
}


// browser-side JS
export function callFivemCallback(name, data) {
    if (!isEnvBrowser()) {
        fetch(`https://${resourceName}/${name}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify(data)
        }).then(resp => resp.json()).then(resp => console.log(resp));
    } else {
        console.log("Should call fivemNuiCallback but we are in regular browser with name '", name, "' and data ", data)
    }
}
