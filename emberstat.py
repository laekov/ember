import sst

def init( statFile ):
    sst.setStatisticLoadLevel(16)
    sst.enableAllStatisticsForAllComponents({"type":"sst.AccumulatorStatistic"})

    sst.setStatisticOutput("sst.statOutputCSV")
    sst.setStatisticOutputOptions( {
        "filepath"  : statFile,
        "separator" : ", "
        } )

