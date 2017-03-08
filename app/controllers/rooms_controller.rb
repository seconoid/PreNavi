class RoomsController < ApplicationController
  def index
  end

  def show
    @room = Room.find(params[:id])
    @positions = rooms(@room.no)
    respond_to do |format|
      format.html
      format.json { render json: @positions }
    end
  end

  def rooms(no)
    json = {}
    if no == 31
      json = [
        {
          exhibit_code: "none",
          x: 0,
          y: 0
        },
        {
          exhibit_code: "IT050",
          x: 1,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 2,
          y: 0
        },
        {
          exhibit_code: "IT044",
          x: 3,
          y: 0
        },
        {
          exhibit_code: "IT009",
          x: 4,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 0
        },
        {
          exhibit_code: "IT010",
          x: 6,
          y: 0
        },
        {
          exhibit_code: "IT011",
          x: 7,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 8,
          y: 0
        },
        {
          exhibit_code: "IT012",
          x: 9,
          y: 0
        },
        {
          exhibit_code: "IT013",
          x: 10,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 11,
          y: 0
        },
        {
          exhibit_code: "IT101",
          x: 12,
          y: 0
        },
        {
          exhibit_code: "IT102",
          x: 13,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 14,
          y: 0
        },
        {
          exhibit_code: "IT103",
          x: 15,
          y: 0
        },
        {
          exhibit_code: "IT104",
          x: 16,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 17,
          y: 0
        },
        {
          exhibit_code: "IT108",
          x: 18,
          y: 0
        },
        {
          exhibit_code: "IT109",
          x: 19,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 20,
          y: 0
        },
        {
          exhibit_code: "IT110",
          x: 21,
          y: 0
        },
        {
          exhibit_code: "IT111",
          x: 22,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 23,
          y: 0
        },
        {
          exhibit_code: "IT049",
          x: 0,
          y: 1
        },
        {
          exhibit_code: "IT112",
          x: 23,
          y: 1
        },
        {
          exhibit_code: "IT145",
          x: 0,
          y: 2
        },
        {
          exhibit_code: "IT047",
          x: 5,
          y: 2
        },
        {
          exhibit_code: "IT048",
          x: 7,
          y: 2
        },
        {
          exhibit_code: "IT007",
          x: 11,
          y: 2
        },
        {
          exhibit_code: "IT014",
          x: 13,
          y: 2
        },
        {
          exhibit_code: "IT071",
          x: 17,
          y: 2
        },
        {
          exhibit_code: "IT203",
          x: 19,
          y: 2
        },
        {
          exhibit_code: "IT113",
          x: 23,
          y: 2
        },
        {
          exhibit_code: "none",
          x: 0,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 6,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 12,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 18,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 23,
          y: 3
        },
        {
          exhibit_code: "IT144",
          x: 0,
          y: 4
        },
        {
          exhibit_code: "IT045",
          x: 5,
          y: 4
        },
        {
          exhibit_code: "IT046",
          x: 7,
          y: 4
        },
        {
          exhibit_code: "IT005",
          x: 11,
          y: 4
        },
        {
          exhibit_code: "IT006",
          x: 13,
          y: 4
        },
        {
          exhibit_code: "IT008",
          x: 17,
          y: 4
        },
        {
          exhibit_code: "IT202",
          x: 19,
          y: 4
        },
        {
          exhibit_code: "IT114",
          x: 23,
          y: 4
        },
        {
          exhibit_code: "IT143",
          x: 0,
          y: 5
        },
        {
          exhibit_code: "IT115",
          x: 23,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 0,
          y: 6
        },
        {
          exhibit_code: "IT043",
          x: 4,
          y: 6
        },
        {
          exhibit_code: "IT051",
          x: 6,
          y: 6
        },
        {
          exhibit_code: "IT003",
          x: 10,
          y: 6
        },
        {
          exhibit_code: "IT004",
          x: 12,
          y: 6
        },
        {
          exhibit_code: "IT107",
          x: 16,
          y: 6
        },
        {
          exhibit_code: "IT201",
          x: 18,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 23,
          y: 6
        },
        {
          exhibit_code: "IT142",
          x: 0,
          y: 7
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 7
        },
        {
          exhibit_code: "none",
          x: 11,
          y: 7
        },
        {
          exhibit_code: "IT601",
          x: 17,
          y: 7
        },
        {
          exhibit_code: "IT116",
          x: 23,
          y: 7
        },
        {
          exhibit_code: "IT141",
          x: 0,
          y: 8
        },
        {
          exhibit_code: "IT041",
          x: 4,
          y: 8
        },
        {
          exhibit_code: "IT042",
          x: 6,
          y: 8
        },
        {
          exhibit_code: "IT001",
          x: 10,
          y: 8
        },
        {
          exhibit_code: "IT002",
          x: 12,
          y: 8
        },
        {
          exhibit_code: "IT105",
          x: 16,
          y: 8
        },
        {
          exhibit_code: "IT106",
          x: 18,
          y: 8
        },
        {
          exhibit_code: "IT117",
          x: 23,
          y: 8
        },
      ]
    end
    if no == 257
      json = [
        {
          exhibit_code: "none",
          x: 1,
          y: 0
        },
        {
          exhibit_code: "IT007",
          x: 2,
          y: 0
        },
        {
          exhibit_code: "IT004",
          x: 4,
          y: 0
        },
        {
          exhibit_code: "IT019",
          x: 5,
          y: 0
        },
        {
          exhibit_code: "IT008",
          x: 7,
          y: 0
        },
        {
          exhibit_code: "IT051",
          x: 8,
          y: 0
        },
        {
          exhibit_code: "IT011",
          x: 10,
          y: 0
        },
        {
          exhibit_code: "IT024",
          x: 11,
          y: 0
        },
        {
          exhibit_code: "IT049",
          x: 13,
          y: 0
        },
        {
          exhibit_code: "IT022",
          x: 14,
          y: 0
        },
        {
          exhibit_code: "IT006",
          x: 16,
          y: 0
        },
        {
          exhibit_code: "IT016",
          x: 17,
          y: 0
        },
        {
          exhibit_code: "IT015",
          x: 19,
          y: 0
        },
        {
          exhibit_code: "IT021",
          x: 20,
          y: 0
        },
        {
          exhibit_code: "none",
          x: 1,
          y: 1
        },
         {
          exhibit_code: "none",
          x: 2,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 4,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 7,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 8,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 10,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 11,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 13,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 14,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 16,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 17,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 19,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 20,
          y: 1
        },
        {
          exhibit_code: "none",
          x: 1,
          y: 2
        },
        {
          exhibit_code: "IT043",
          x: 2,
          y: 2
        },
        {
          exhibit_code: "IT018",
          x: 4,
          y: 2
        },
        {
          exhibit_code: "IT026",
          x: 5,
          y: 2
        },
        {
          exhibit_code: "IT041",
          x: 7,
          y: 2
        },
        {
          exhibit_code: "IT045",
          x: 8,
          y: 2
        },
        {
          exhibit_code: "IT014",
          x: 10,
          y: 2
        },
        {
          exhibit_code: "IT002",
          x: 11,
          y: 2
        },
        {
          exhibit_code: "IT012",
          x: 13,
          y: 2
        },
        {
          exhibit_code: "IT005",
          x: 14,
          y: 2
        },
        {
          exhibit_code: "IT001",
          x: 16,
          y: 2
        },
        {
          exhibit_code: "IT044",
          x: 17,
          y: 2
        },
        {
          exhibit_code: "IT046",
          x: 19,
          y: 2
        },
        {
          exhibit_code: "IT017",
          x: 20,
          y: 2
        },
        {
          exhibit_code: "none",
          x: 1,
          y: 3
        },
         {
          exhibit_code: "none",
          x: 2,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 4,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 7,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 8,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 10,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 11,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 13,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 14,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 16,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 17,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 19,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 20,
          y: 3
        },
        {
          exhibit_code: "none",
          x: 2,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 3,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 4,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 6,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 7,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 8,
          y: 5
        },
        {
          exhibit_code: "IT009",
          x: 14,
          y: 5
        },
        {
          exhibit_code: "IT047",
          x: 15,
          y: 5
        },
        {
          exhibit_code: "IT010",
          x: 16,
          y: 5
        },
        {
          exhibit_code: "IT048",
          x: 17,
          y: 5
        },
        {
          exhibit_code: "IT013",
          x: 18,
          y: 5
        },
        {
          exhibit_code: "IT050",
          x: 19,
          y: 5
        },
        {
          exhibit_code: "none",
          x: 2,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 3,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 4,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 5,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 6,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 7,
          y: 6
        },
        {
          exhibit_code: "none",
          x: 8,
          y: 6
        },
        {
          exhibit_code: "IT020",
          x: 14,
          y: 6
        },
        {
          exhibit_code: "IT003",
          x: 15,
          y: 6
        },
        {
          exhibit_code: "IT071",
          x: 16,
          y: 6
        },
        {
          exhibit_code: "IT025",
          x: 17,
          y: 6
        },
        {
          exhibit_code: "IT023",
          x: 18,
          y: 6
        },
        {
          exhibit_code: "IT042",
          x: 19,
          y: 6
        },
      ]
    end
    json
  end

end
