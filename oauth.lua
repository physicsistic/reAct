  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>twitter-https/oauth.lua at master · Lerg/twitter-https</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <link rel="assets" href="https://a248.e.akamai.net/assets.github.com/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="636672" name="octolytics-actor-id" /><meta content="physicsistic" name="octolytics-actor-login" /><meta content="3d04b00fae54017193a66ae0f3eee194be61dc067edeb58f8e46d88ce75396d3" name="octolytics-actor-hash" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="b4rvKdEI+P/pgGf/N61DhMqA6VGOKq4kBcpGuSqrJsw=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-87d3d84f70f35bf8eb3dff40b00ad2bd6550393b.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-49e138635eb90f56d083e157e6d9735efe42ba30.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-4c434fa1705bf526e191eec0cd8fab1a5ce3e326.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-796b6ccfd2274fd10e598c443a44d6288c5f4dd5.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="bd65e1f37835b177b15192dc5d405565">

        <link data-pjax-transient rel='permalink' href='/Lerg/twitter-https/blob/f0ae82a856733ab63e85bdd217b46bc2e8d7f07b/oauth.lua'>
    <meta property="og:title" content="twitter-https"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/Lerg/twitter-https"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/c2e15f9b8cea01e9823514ab73241317?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="twitter-https - Twitter and oAuth modules fix for work with https"/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="Lerg/twitter-https"/>

    <meta name="description" content="twitter-https - Twitter and oAuth modules fix for work with https" />


    <meta content="859486" name="octolytics-dimension-user_id" /><meta content="Lerg" name="octolytics-dimension-user_login" /><meta content="8526620" name="octolytics-dimension-repository_id" /><meta content="Lerg/twitter-https" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="8526620" name="octolytics-dimension-repository_network_root_id" /><meta content="Lerg/twitter-https" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Lerg/twitter-https/commits/master.atom" rel="alternate" title="Recent Commits to twitter-https:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob macintosh vis-public env-production  ">
    <div id="wrapper">

      
      
      

      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    <div class="divider-vertical"></div>

    
  <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have unread notifications">
    <span class="mail-status unread"></span>
  </a>
  <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search-icon tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="octicon octicon-gear "></span></a>

  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    data-username="physicsistic"
      data-repo="Lerg/twitter-https"
      data-branch="master"
      data-sha="1cb2bd7e41ff8da888a23f05bff4067e7084c8ce"
  >

    <input type="hidden" name="nwo" value="Lerg/twitter-https" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

  <div class="divider-vertical"></div>

</form>
        <ul class="top-nav">
            <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="http://help.github.com">Help</a></li>
        </ul>
      </div>

    

  

    <ul id="user-links">
      <li>
        <a href="/physicsistic" class="name">
          <img height="20" src="https://secure.gravatar.com/avatar/986bbd5798735af53f90c7395044bd55?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /> physicsistic
        </a>
      </li>

        <li>
          <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo">
            <span class="octicon octicon-repo-create"></span>
          </a>
        </li>

        <li>
          <a href="/settings/profile" id="account_settings"
            class="tooltipped downwards"
            title="Account settings ">
            <span class="octicon octicon-tools"></span>
          </a>
        </li>
        <li>
          <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out">
            <span class="octicon octicon-log-out"></span>
          </a>
        </li>

    </ul>


<div class="js-new-dropdown-contents hidden">
  <ul class="dropdown-menu">
    <li>
      <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
    </li>
    <li>
        <a href="/Lerg/twitter-https/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
    <li>
    </li>
    <li>
      <a href="/organizations/new"><span class="octicon octicon-list-unordered"></span> New organization</a>
    </li>
  </ul>
</div>


    
  </div>
</div>

      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              

<ul class="pagehead-actions">


    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="b4rvKdEI+P/pgGf/N61DhMqA6VGOKq4kBcpGuSqrJsw=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="8526620" />

    <div class="select-menu js-menu-container js-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder js-menu-content">
        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

    <li class="js-toggler-container js-social-container starring-container ">
      <a href="/Lerg/twitter-https/unstar" class="minibutton js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
        <span class="octicon octicon-star-delete"></span>
        <span class="text">Unstar</span>
      </a>
      <a href="/Lerg/twitter-https/star" class="minibutton js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
        <span class="octicon octicon-star"></span>
        <span class="text">Star</span>
      </a>
      <a class="social-count js-social-count" href="/Lerg/twitter-https/stargazers">2</a>
    </li>

        <li>
          <a href="/Lerg/twitter-https/fork" class="minibutton js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span>
            <span class="text">Fork</span>
          </a>
          <a href="/Lerg/twitter-https/network" class="social-count">2</a>
        </li>


</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-octicon octicon-repo"></span>
                <span class="author vcard">
                  <a href="/Lerg" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">Lerg</span>
                  </a></span> /
                <strong><a href="/Lerg/twitter-https" class="js-current-repository">twitter-https</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li class="pulse-nav"><a href="/Lerg/twitter-https/pulse" class="js-selected-navigation-item " data-selected-links="pulse /Lerg/twitter-https/pulse" rel="nofollow"><span class="octicon octicon-pulse"></span></a></li>
    <li><a href="/Lerg/twitter-https" class="js-selected-navigation-item selected" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /Lerg/twitter-https">Code</a></li>
    <li><a href="/Lerg/twitter-https/network" class="js-selected-navigation-item " data-selected-links="repo_network /Lerg/twitter-https/network">Network</a></li>
    <li><a href="/Lerg/twitter-https/pulls" class="js-selected-navigation-item " data-selected-links="repo_pulls /Lerg/twitter-https/pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/Lerg/twitter-https/issues" class="js-selected-navigation-item " data-selected-links="repo_issues /Lerg/twitter-https/issues">Issues <span class='counter'>0</span></a></li>

      <li><a href="/Lerg/twitter-https/wiki" class="js-selected-navigation-item " data-selected-links="repo_wiki /Lerg/twitter-https/wiki">Wiki</a></li>


    <li><a href="/Lerg/twitter-https/graphs" class="js-selected-navigation-item " data-selected-links="repo_graphs repo_contributors /Lerg/twitter-https/graphs">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/Lerg/twitter-https/tags" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_tags /Lerg/twitter-https/tags">Tags <span class="counter blank">0</span></a></li>
    </ul>
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="octicon octicon-git-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">

        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches">

            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item selected">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/Lerg/twitter-https/blob/master/oauth.lua" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
                </div> <!-- /.select-menu-item -->
            </div>

              <div class="select-menu-no-results">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags">
            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

            </div>

            <div class="select-menu-no-results">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/Lerg/twitter-https" class="selected js-selected-navigation-item tabnav-tab" data-selected-links="repo_source /Lerg/twitter-https">Files</a></li>
    <li><a href="/Lerg/twitter-https/commits/master" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_commits /Lerg/twitter-https/commits/master">Commits</a></li>
    <li><a href="/Lerg/twitter-https/branches" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_branches /Lerg/twitter-https/branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:891a47ffb15e10b6bd1473a804cc3d75 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:891a47ffb15e10b6bd1473a804cc3d75 -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Lerg/twitter-https" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">twitter-https</span></a></span></span><span class="separator"> / </span><strong class="final-path">oauth.lua</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="oauth.lua" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
        </div>

      <a href="/Lerg/twitter-https/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/c2e15f9b8cea01e9823514ab73241317?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/Lerg" rel="author">Lerg</a></span>
    <time class="js-relative-date" datetime="2013-03-03T08:28:18-08:00" title="2013-03-03 08:28:18">March 03, 2013</time>
    <div class="commit-title">
        <a href="/Lerg/twitter-https/commit/f0ae82a856733ab63e85bdd217b46bc2e8d7f07b" class="message">Fixes</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/c2e15f9b8cea01e9823514ab73241317?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/Lerg">Lerg</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/Lerg/twitter-https/blob/f0ae82a856733ab63e85bdd217b46bc2e8d7f07b/oauth.lua" data-title="twitter-https/oauth.lua at master · Lerg/twitter-https · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="octicon octicon-file-text"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>144 lines (122 sloc)</span>
                <span>4.83 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                        <a class="minibutton tooltipped leftwards"
                           title="Clicking this button will automatically fork this project so you can edit the file"
                           href="/Lerg/twitter-https/edit/master/oauth.lua"
                           data-method="post" rel="nofollow">Edit</a>
                  <a href="/Lerg/twitter-https/raw/master/oauth.lua" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/Lerg/twitter-https/blame/master/oauth.lua" class="button minibutton ">Blame</a>
                  <a href="/Lerg/twitter-https/commits/master/oauth.lua" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="blob-wrapper data type-lua js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="kd">local</span> <span class="n">_M</span> <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC2'>&nbsp;</div><div class='line' id='LC3'><span class="kd">local</span> <span class="n">crypto</span> <span class="o">=</span> <span class="nb">require</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">crypto&#39;</span><span class="p">)</span></div><div class='line' id='LC4'><span class="kd">local</span> <span class="n">mime</span> <span class="o">=</span> <span class="nb">require</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">mime&#39;</span><span class="p">)</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="c1">-- Replaces unsafe URL characters with %hh (two hex characters)</span></div><div class='line' id='LC7'><span class="kd">local</span> <span class="k">function</span> <span class="nf">encode_parameter</span><span class="p">(</span><span class="n">str</span><span class="p">)</span></div><div class='line' id='LC8'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">str</span><span class="p">:</span><span class="n">gsub</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">[^-%._~a-zA-Z0-9]&#39;</span><span class="p">,</span><span class="k">function</span><span class="p">(</span><span class="n">c</span><span class="p">)</span></div><div class='line' id='LC9'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">string.format</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">%%%02x&#39;</span><span class="p">,</span><span class="n">c</span><span class="p">:</span><span class="n">byte</span><span class="p">()):</span><span class="n">upper</span><span class="p">()</span></div><div class='line' id='LC10'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span><span class="p">)</span></div><div class='line' id='LC11'><span class="k">end</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="kd">local</span> <span class="k">function</span> <span class="nf">sha1</span><span class="p">(</span><span class="n">str</span><span class="p">,</span><span class="n">key</span><span class="p">,</span><span class="n">binary</span><span class="p">)</span></div><div class='line' id='LC14'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">binary</span> <span class="o">=</span> <span class="n">binary</span> <span class="ow">or</span> <span class="kc">false</span></div><div class='line' id='LC15'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">crypto</span><span class="p">.</span><span class="n">hmac</span><span class="p">(</span><span class="n">crypto</span><span class="p">.</span><span class="n">sha1</span><span class="p">,</span><span class="n">str</span><span class="p">,</span><span class="n">key</span><span class="p">,</span><span class="n">binary</span><span class="p">)</span></div><div class='line' id='LC16'><span class="k">end</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><span class="kd">local</span> <span class="k">function</span> <span class="nf">get_nonce</span><span class="p">()</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">mime</span><span class="p">.</span><span class="n">b64</span><span class="p">(</span><span class="n">crypto</span><span class="p">.</span><span class="n">hmac</span><span class="p">(</span><span class="n">crypto</span><span class="p">.</span><span class="n">sha1</span><span class="p">,</span><span class="nb">tostring</span><span class="p">(</span><span class="nb">math.random</span><span class="p">())</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">random&#39;</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">..</span> <span class="nb">tostring</span><span class="p">(</span><span class="nb">os.time</span><span class="p">()),</span><span class="s1">&#39;</span><span class="s">keyyyy&#39;</span><span class="p">))</span></div><div class='line' id='LC21'><span class="k">end</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="kd">local</span> <span class="k">function</span> <span class="nf">get_timestamp</span><span class="p">()</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">tostring</span><span class="p">(</span><span class="nb">os.time</span><span class="p">()</span> <span class="o">+</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC25'><span class="k">end</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="kd">local</span> <span class="k">function</span> <span class="nf">oAuthSign</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">method</span><span class="p">,</span> <span class="n">args</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">)</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">token_secret</span> <span class="o">=</span> <span class="n">args</span><span class="p">.</span><span class="n">oauth_token_secret</span> <span class="ow">or</span> <span class="s1">&#39;</span><span class="s">&#39;</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">args</span><span class="p">.</span><span class="n">oauth_token_secret</span> <span class="o">=</span> <span class="kc">nil</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">keys_and_values</span> <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC31'><br/></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="n">key</span><span class="p">,</span> <span class="n">val</span> <span class="k">in</span> <span class="nb">pairs</span><span class="p">(</span><span class="n">args</span><span class="p">)</span> <span class="k">do</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">table.insert</span><span class="p">(</span><span class="n">keys_and_values</span><span class="p">,</span> <span class="p">{</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">key</span> <span class="o">=</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">key</span><span class="p">),</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">val</span> <span class="o">=</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">val</span><span class="p">)</span> <span class="p">})</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC37'>&nbsp;</div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">table.sort</span><span class="p">(</span><span class="n">keys_and_values</span><span class="p">,</span> <span class="k">function</span><span class="p">(</span><span class="n">a</span><span class="p">,</span><span class="n">b</span><span class="p">)</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">a</span><span class="p">.</span><span class="n">key</span> <span class="o">&lt;</span> <span class="n">b</span><span class="p">.</span><span class="n">key</span> <span class="k">then</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="kc">true</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">elseif</span> <span class="n">a</span><span class="p">.</span><span class="n">key</span> <span class="o">&gt;</span> <span class="n">b</span><span class="p">.</span><span class="n">key</span> <span class="k">then</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="kc">false</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">a</span><span class="p">.</span><span class="n">val</span> <span class="o">&lt;</span> <span class="n">b</span><span class="p">.</span><span class="n">val</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span><span class="p">)</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">key_value_pairs</span> <span class="o">=</span> <span class="p">{}</span></div><div class='line' id='LC49'>&nbsp;</div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="n">_</span><span class="p">,</span> <span class="n">rec</span> <span class="k">in</span> <span class="nb">pairs</span><span class="p">(</span><span class="n">keys_and_values</span><span class="p">)</span> <span class="k">do</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">table.insert</span><span class="p">(</span><span class="n">key_value_pairs</span><span class="p">,</span> <span class="n">rec</span><span class="p">.</span><span class="n">key</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">=&#39;</span> <span class="o">..</span> <span class="n">rec</span><span class="p">.</span><span class="n">val</span><span class="p">)</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">query_string_except_signature</span> <span class="o">=</span> <span class="nb">table.concat</span><span class="p">(</span><span class="n">key_value_pairs</span><span class="p">,</span> <span class="s1">&#39;</span><span class="s">&amp;&#39;</span><span class="p">)</span></div><div class='line' id='LC55'><br/></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">sign_base_string</span> <span class="o">=</span> <span class="n">method</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">&amp;&#39;</span> <span class="o">..</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">url</span><span class="p">)</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">&amp;&#39;</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">..</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">query_string_except_signature</span><span class="p">)</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">key</span> <span class="o">=</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">consumer_secret</span><span class="p">)</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">&amp;&#39;</span> <span class="o">..</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">token_secret</span><span class="p">)</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">hmac_binary</span> <span class="o">=</span> <span class="n">sha1</span><span class="p">(</span><span class="n">sign_base_string</span><span class="p">,</span> <span class="n">key</span><span class="p">,</span> <span class="kc">true</span><span class="p">)</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">hmac_b64</span> <span class="o">=</span> <span class="n">mime</span><span class="p">.</span><span class="n">b64</span><span class="p">(</span><span class="n">hmac_binary</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">query_string</span> <span class="o">=</span> <span class="n">query_string_except_signature</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">&amp;oauth_signature=&#39;</span> <span class="o">..</span> <span class="n">encode_parameter</span><span class="p">(</span><span class="n">hmac_b64</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;</div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">method</span> <span class="o">==</span> <span class="s1">&#39;</span><span class="s">GET&#39;</span> <span class="k">then</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">url</span> <span class="o">..</span> <span class="s1">&#39;</span><span class="s">?&#39;</span> <span class="o">..</span> <span class="n">query_string</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">query_string</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC70'><span class="k">end</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="k">function</span> <span class="nc">_M</span><span class="p">.</span><span class="nf">getRequestToken</span><span class="p">(</span><span class="n">consumer_key</span><span class="p">,</span> <span class="n">token_ready_url</span><span class="p">,</span> <span class="n">request_token_url</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_consumer_key</span>     <span class="o">=</span> <span class="n">consumer_key</span><span class="p">,</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_timestamp</span>        <span class="o">=</span> <span class="n">get_timestamp</span><span class="p">(),</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_version</span>          <span class="o">=</span> <span class="s1">&#39;</span><span class="s">1.0&#39;</span><span class="p">,</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_nonce</span>            <span class="o">=</span> <span class="n">get_nonce</span><span class="p">(),</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_callback</span>         <span class="o">=</span> <span class="n">token_ready_url</span><span class="p">,</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_signature_method</span> <span class="o">=</span> <span class="s1">&#39;</span><span class="s">HMAC-SHA1&#39;</span><span class="p">}</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="n">oAuthSign</span><span class="p">(</span><span class="n">request_token_url</span><span class="p">,</span> <span class="s1">&#39;</span><span class="s">POST&#39;</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">)</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_M</span><span class="p">.</span><span class="n">rawPostRequest</span><span class="p">(</span><span class="n">request_token_url</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="k">function</span> <span class="p">(</span><span class="n">event</span><span class="p">)</span></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="ow">not</span> <span class="n">event</span><span class="p">.</span><span class="n">isError</span> <span class="k">then</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">response</span> <span class="o">=</span> <span class="n">event</span><span class="p">.</span><span class="n">response</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">callback</span><span class="p">{</span><span class="n">isError</span> <span class="o">=</span> <span class="kc">false</span><span class="p">,</span> <span class="n">token</span> <span class="o">=</span> <span class="n">response</span><span class="p">:</span><span class="n">match</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">oauth_token=([^&amp;]+)&#39;</span><span class="p">),</span> <span class="n">token_secret</span> <span class="o">=</span> <span class="n">response</span><span class="p">:</span><span class="n">match</span><span class="p">(</span><span class="s1">&#39;</span><span class="s">oauth_token_secret=([^&amp;]+)&#39;</span><span class="p">)}</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">callback</span><span class="p">{</span><span class="n">isError</span> <span class="o">=</span> <span class="kc">true</span><span class="p">}</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span><span class="p">)</span></div><div class='line' id='LC90'><span class="k">end</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="k">function</span> <span class="nc">_M</span><span class="p">.</span><span class="nf">getAccessToken</span><span class="p">(</span><span class="n">token</span><span class="p">,</span> <span class="n">verifier</span><span class="p">,</span> <span class="n">token_secret</span><span class="p">,</span> <span class="n">consumer_key</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">,</span> <span class="n">access_token_url</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_consumer_key</span> <span class="o">=</span> <span class="n">consumer_key</span><span class="p">,</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_timestamp</span>    <span class="o">=</span> <span class="n">get_timestamp</span><span class="p">(),</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_version</span>      <span class="o">=</span> <span class="s1">&#39;</span><span class="s">1.0&#39;</span><span class="p">,</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_nonce</span>        <span class="o">=</span> <span class="n">get_nonce</span><span class="p">(),</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_token</span>        <span class="o">=</span> <span class="n">token</span><span class="p">,</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_token_secret</span> <span class="o">=</span> <span class="n">token_secret</span><span class="p">,</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_verifier</span>     <span class="o">=</span> <span class="n">verifier</span><span class="p">,</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_signature_method</span> <span class="o">=</span> <span class="s1">&#39;</span><span class="s">HMAC-SHA1&#39;</span><span class="p">}</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="n">oAuthSign</span><span class="p">(</span><span class="n">access_token_url</span><span class="p">,</span> <span class="s1">&#39;</span><span class="s">POST&#39;</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_M</span><span class="p">.</span><span class="n">rawPostRequest</span><span class="p">(</span><span class="n">access_token_url</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="k">function</span> <span class="p">(</span><span class="n">event</span><span class="p">)</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="ow">not</span> <span class="n">event</span><span class="p">.</span><span class="n">isError</span> <span class="k">then</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">callback</span><span class="p">{</span><span class="n">isError</span> <span class="o">=</span> <span class="kc">false</span><span class="p">,</span> <span class="n">response</span> <span class="o">=</span> <span class="n">event</span><span class="p">.</span><span class="n">response</span><span class="p">}</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">callback</span><span class="p">{</span><span class="n">isError</span> <span class="o">=</span> <span class="kc">true</span><span class="p">}</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span><span class="p">)</span></div><div class='line' id='LC110'><span class="k">end</span></div><div class='line' id='LC111'><br/></div><div class='line' id='LC112'><span class="k">function</span> <span class="nc">_M</span><span class="p">.</span><span class="nf">makeRequest</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">body</span><span class="p">,</span> <span class="n">consumer_key</span><span class="p">,</span> <span class="n">token</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">,</span> <span class="n">token_secret</span><span class="p">,</span> <span class="n">method</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_consumer_key</span> <span class="o">=</span> <span class="n">consumer_key</span><span class="p">,</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_nonce</span>        <span class="o">=</span> <span class="n">get_nonce</span><span class="p">(),</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_signature_method</span> <span class="o">=</span> <span class="s1">&#39;</span><span class="s">HMAC-SHA1&#39;</span><span class="p">,</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_token</span>        <span class="o">=</span> <span class="n">token</span><span class="p">,</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_timestamp</span>    <span class="o">=</span> <span class="n">get_timestamp</span><span class="p">(),</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_version</span>      <span class="o">=</span> <span class="s1">&#39;</span><span class="s">1.0&#39;</span><span class="p">,</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">oauth_token_secret</span> <span class="o">=</span> <span class="n">token_secret</span><span class="p">}</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="o">#</span><span class="n">body</span> <span class="k">do</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">post_data</span><span class="p">[</span><span class="n">body</span><span class="p">[</span><span class="n">i</span><span class="p">].</span><span class="n">key</span><span class="p">]</span> <span class="o">=</span> <span class="n">body</span><span class="p">[</span><span class="n">i</span><span class="p">].</span><span class="n">value</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="kd">local</span> <span class="n">post_data</span> <span class="o">=</span> <span class="n">oAuthSign</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">method</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="n">consumer_secret</span><span class="p">)</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">method</span> <span class="o">==</span> <span class="s1">&#39;</span><span class="s">POST&#39;</span> <span class="k">then</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_M</span><span class="p">.</span><span class="n">rawPostRequest</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">post_data</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">_M</span><span class="p">.</span><span class="n">rawGetRequest</span><span class="p">(</span><span class="n">post_data</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC130'><span class="k">end</span></div><div class='line' id='LC131'><br/></div><div class='line' id='LC132'><span class="k">function</span> <span class="nc">_M</span><span class="p">.</span><span class="nf">rawGetRequest</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">network</span><span class="p">.</span><span class="n">request</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="s1">&#39;</span><span class="s">GET&#39;</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC134'><span class="k">end</span></div><div class='line' id='LC135'><br/></div><div class='line' id='LC136'><span class="k">function</span> <span class="nc">_M</span><span class="p">.</span><span class="nf">rawPostRequest</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">rawdata</span><span class="p">,</span> <span class="n">callback</span><span class="p">)</span></div><div class='line' id='LC137'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">network</span><span class="p">.</span><span class="n">request</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="s1">&#39;</span><span class="s">POST&#39;</span><span class="p">,</span> <span class="n">callback</span><span class="p">,</span> <span class="p">{</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">headers</span> <span class="o">=</span> <span class="p">{</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s1">&#39;</span><span class="s">Content-Type&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="s1">&#39;</span><span class="s">application/x-www-form-urlencoded&#39;</span><span class="p">,</span> </div><div class='line' id='LC140'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s1">&#39;</span><span class="s">Content-Length&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="nb">string.len</span><span class="p">(</span><span class="n">rawdata</span><span class="p">)},</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">body</span> <span class="o">=</span> <span class="n">rawdata</span><span class="p">})</span></div><div class='line' id='LC142'><span class="k">end</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><span class="k">return</span> <span class="n">_M</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;">
            <button type="submit" class="button">Go</button>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif" height="64" width="64">
</div>


        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="/about">About us</a></dd>
        <dd><a href="/blog">Blog</a></dd>
        <dd><a href="/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.10127s from fe19.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>
    <ul id="legal">
        <li><a href="/site/terms">Terms of Service</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/Lerg/twitter-https/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="octicon octicon-remove-close ajax-error-dismiss"></a>
    </div>

    
    <span id='server_response_time' data-time='0.10182' data-host='fe19'></span>
    
  </body>
</html>

