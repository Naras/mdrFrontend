<ul class="nav navbar-nav navbar-right">
    <li>
        <g:link uri="/">
            Home
        </g:link>
    </li>
    <li>
        <g:link controller="sitePages" action="aboutproject">
            About The Project
        </g:link>
    </li>
    <li>
<g:link controller="sitePages" action="unqiuenessofproject">
            Uniqueness of the Project
</g:link>
    </li>
    <li>
<g:link controller="sitePages" action="howtouserrepository">
            How to Use this Repository
</g:link>
    </li>
    <li>
<g:link controller="sitePages" action="digitalrepository">

    Digital Repository
</g:link>
</li>
    <li>
        <g:link controller="sitePages" action="achievementsoftheproject">

            Achievements
        </g:link>
    </li>
    %{--<li>
        <a href="">
            Utilities of the Project
        </a>
    </li>--}%
    <li>
        <a href="http://www.samskrti.org/" target="_blank">
            About Samskriti Foundation
        </a>
    </li>
    <li>
        <sec:ifNotLoggedIn>
            <g:link controller="login" action="auth">Login</g:link>
        </sec:ifNotLoggedIn>
        <sec:ifLoggedIn>
        %{--<a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-user" aria-hidden="true"></i> <span class="hidden-md-down text-capitalize"><sec:username/><i class="caret"></i></span>
        </a>--}%
        </sec:ifLoggedIn>
    </li>
</ul>