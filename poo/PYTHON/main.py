from Car import Car
if __name__ == "__main__":
    print("HOlis")
    car = Car()
    car.id = 2345656
    car.license = "HKJ567"
    car.passenger = 4
    car.driver = "El Andresito"
    print(vars(car))

    car1 = Car()
    car1.id = 298378
    car1.license = "SJP987"
    car1.passenger = 4
    car1.driver = "La laurita"
    print(vars(car1))
