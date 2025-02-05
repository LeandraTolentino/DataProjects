elo_ratings = {
    1975: 2580.20,
    1976: 2573.20,
    1977: 2576.70,
    1978: 2578.10,
    1979: 2578.80,
    1980: 2580.60,
    1981: 2578.00,
    1982: 2580.50,
    1983: 2576.00,
    1984: 2577.70,
    1985: 2577.10,
    1986: 2581.50,
    1987: 2585.70,
    1988: 2597.40,
    1989: 2603.80,
    1990: 2608.80,
    1991: 2620.00,
    1992: 2625.70,
    1993: 2638.60,
    1994: 2638.70,
    1995: 2648.10,
    1996: 2654.40,
    1997: 2657.30,
    1998: 2663.90,
    1999: 2669.42,
    2000: 2673.68,
    2001: 2681.28,
    2002: 2681.84,
    2003: 2683.72,
    2004: 2687.30,
    2005: 2689.00,
    2006: 2694.64,
    2007: 2696.94,
    2008: 2708.36,
    2009: 2717.20,
    2010: 2720.46,
    2011: 2726.76,
    2012: 2730.58,
    2013: 2733.96,
    2014: 2735.56,
    2015: 2736.72,
    2016: 2736.48,
    2017: 2738.22,
    2018: 2738.04,
    2019: 2735.16,
    2020: 2732.64,
    2021: 2731.98,
    2022: 2728.70,
    2023: 2727.70,
    2024: 2725.50,
    2025: 2722.46
}

def calculate_inflation(year1, year2):
    if year1 not in elo_ratings or year2 not in elo_ratings:
        print("Invalid years. Please enter years between 1975 and 2025.")
        return
    
    if year1 > year2:
        print("Sorry, time doesn't go backwards :)")
        return
    
    x = elo_ratings[year1]
    y = elo_ratings[year2]
    inflation = (1 - (x / y)) * 100
    
    print(f"Inflation from {year1} to {year2} is {inflation:.2f}%")

if __name__ == "__main__":
    while True:
        print("For what years would you like to see ELO inflation?")
        years = input("").split('-')
        
        try:
            year1, year2 = map(int, years)
            calculate_inflation(year1, year2)
        except ValueError:
            print("Invalid input format. Please enter years in 'YYYY-YYYY' format :)")
