package mdrv

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
        "/branches-of-science"(controller: "sitePages", action: "branchesOfScience")
        "/branches-of-science/applied-sciences"(controller: "sitePages", action: "appliedSciences")
        "/branches-of-science/formal-sciences"(controller: "sitePages", action: "formalSciences")
        "/branches-of-science/natural-sciences"(controller: "sitePages", action: "naturalSciences")
        "/branches-of-science/natural-sciences/astronomy"(controller: "sitePages", action: "astronomy")
        "/branches-of-science/natural-sciences/chemistry"(controller: "sitePages", action: "chemistry")
        "/branches-of-science/natural-sciences/ecology"(controller: "sitePages", action: "ecology")
        "/branches-of-science/natural-sciences/earth-sciences"(controller: "sitePages", action: "earthsciences")
        "/branches-of-science/natural-sciences/physics"(controller: "sitePages", action: "physics")
        "/branches-of-science/social-sciences"(controller: "sitePages", action: "socialSciences")
    }
}
