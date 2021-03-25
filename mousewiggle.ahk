min = 5 ;Number of minutes to wait

loop {
    sleep, % min*60*1000
    mousemove, 10, 0, 20, R
    mousemove, -10, 0, 20, R
}
