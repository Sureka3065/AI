import itertools

def calculate_distance(city1, city2):
    # Function to calculate the Euclidean distance between two cities
    return ((city1[0] - city2[0])**2 + (city1[1] - city2[1])**2)**0.5

def total_distance(route, cities):
    # Function to calculate the total distance of a route
    distance = 0
    for i in range(len(route) - 1):
        distance += calculate_distance(cities[route[i]], cities[route[i + 1]])
    # Add distance from last city back to the starting city
    distance += calculate_distance(cities[route[-1]], cities[route[0]])
    return distance

def traveling_salesman_brute_force(cities):
    # Brute-force approach to solve TSP
    min_distance = float('inf')
    best_route = None
    for route in itertools.permutations(range(len(cities))):
        distance = total_distance(route, cities)
        if distance < min_distance:
            min_distance = distance
            best_route = route
    return min_distance, best_route

# Example usage:
cities = [(0, 0), (1, 2), (3, 1), (5, 3)]  # Example cities with (x, y) coordinates
min_distance, best_route = traveling_salesman_brute_force(cities)
print("Minimum distance:", min_distance)
print("Best route:", best_route)
