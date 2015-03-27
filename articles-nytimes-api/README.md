# How to get article data from the NYTimes API

## Disclaimer

This tutorial was devised to help *E.J. Safra iCorruption Hackathon* participants extract data from the **NYTimes API** (In fact, this can be modified to be used with other similar APIs).

This work is based on the fantastic [Data Science at the Command Line](http://datascienceatthecommandline.com/#dst) book by Jeroen Janssens.

## Get your Data Science Environment

This usually means you need a computer runing UNIX (you'll need your bash terminal) or a virtual machine. If you are not familiar with setting up Virtual machines, you can follow Jeroen's quick setup instructions on **Amazon EC2** [here](http://datasciencetoolbox.org/).

## Request NYTimes API Keys

[developer.nytimes.com](developer.nytimes.com)

Open a free account and project and request API credentials. Now you're all set for the actual fun!

## Let the Fun Begin!

### Get Data on a Given Subject, for a given time range

Let's say we want to gather all the articles on *Institutional Corruption* for the past 5 years. One can try the following query:

    parallel -j1 --progress --delay 0.1 --results results "curl -sL "\
    "'http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Institutional+'"\
    "'Corruption&begin_date={1}0101&end_date={1}1231&page={2}&api-key='"\
    "'<your-api-key>'" ::: {2011..2015} ::: {0..99} > /dev/null

If you were successful, you'll get a neat tree of folders and some data inside.

### Check the tree of results!

    tree results | head -20

With this command you get a better idea of how the first 20 rows of the tree look like. 


### Now we gather all the institutional corruption articles by date, type and title into a nice .csv file

    cat results/1/*/2/*/stdout |
    jq -c '.response.docs[] | {date: .pub_date, type: .document_type, '\
    'title: .headline.main }' | json2csv -p -k date,type,title > institutionalcorruption.csv


### From this point on, you're on your own!

You can use R ([Rstudio/Shiny](http://www.rstudio.com/products/rstudio/)), Python ([IPython/Juypter](https://jupyter.org/)) or [Julia](http://julialang.org/) to get going with an exploratory data analysis on the data you just acquired. 

Remember, it's always better to look at your data before attempting analyses of higher complexity. By doing so, you make sure you're truly dealing with interesting *raw material* that is worth pursuing further.

Good luck in your data explorations!

