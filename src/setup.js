import React, { createContext } from "react";
import  {
    HomeRounded,
    SubjectRounded,
    FormatListNumberedRounded
} from "@material-ui/icons"

export const AppContext = createContext({
    searchInput: "",
    setSearchInput() {},
    searchResults: "",
    setSearchResults() {},
});

export const pages = [
    {
        link: "/",
        title: "Home",
        icon: <HomeRounded />
    },
    {
        link: "/browse",
        title: "Browse",
        icon: <SubjectRounded />
    },
    {
        link: "/top-books",
        title: "Top Books",
        icon: <FormatListNumberedRounded />
    }
];
