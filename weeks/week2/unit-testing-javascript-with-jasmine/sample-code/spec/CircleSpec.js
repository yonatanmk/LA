describe("Circle", function() {
  describe("new Circle()", function() {
    it("takes a value for the radius", function() {
      circle = new Circle(5);
      expect(circle).toBeDefined();
      expect(circle.radius).toBe(5);
    });

    it("takes an optional argument for the center point", function() {
      circle = new Circle(5, 1, 2);
      expect(circle).toBeDefined();
      expect(circle.x).toBe(1);
      expect(circle.y).toBe(2);
    });

    it("defaults to the origin point if not provided", function() {
      circle = new Circle(5);
      expect(circle.x).toBe(0);
      expect(circle.y).toBe(0);
    });
  });

  describe("#radius", function() {
    it("returns the value for the radius", function() {
      circle = new Circle(5);
      expect(circle.radius).toBe(5);
    });
  });

  describe("#diameter", function() {
    it("returns 10 when the radius is 5", function() {
      circle = new Circle(5);
      expect(circle.diameter).toBe(10);
    });

    it("returns 20 when the radius is 10", function() {
      circle = new Circle(10);
      expect(circle.diameter).toBe(20);
    });

    it("returns 0.5 when the radius is 0.25", function() {
      circle = new Circle(0.25);
      expect(circle.diameter).toBe(0.5);
    });
  });

  describe(".area()", function() {
    it("returns 314.16 when the radius is 10", function() {
      circle = new Circle(10);
      expect(circle.area()).toBeCloseTo(314.16);
    });

    it("returns 12.57 when the radius is 2", function() {
      circle = new Circle(2);
      expect(circle.area()).toBeCloseTo(12.57);
    });

    it("returns 0.785 when the radius is 0.5", function() {
      circle = new Circle(0.5);
      expect(circle.area()).toBeCloseTo(0.785);
    });
  });

  describe(".perimeter()", function() {
    it("returns 6.283 when the radius is 1", function() {
      circle = new Circle(1);
      expect(circle.perimeter()).toBeCloseTo(6.28);
    });

    it("returns 12.57 when the radius is 2", function() {
      circle = new Circle(2);
      expect(circle.perimeter()).toBeCloseTo(12.57);
    });
  });
});
