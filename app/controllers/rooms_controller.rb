class RoomsController < ApplicationController
  def index
    respond_to do |format|
      @room = rooms
      format.html
      format.json { render json: @room }
    end
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
          exhibit_code: "IT050",
          x: 1,
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
          exhibit_code: "IT049",
          x: 0,
          y: 1
        },
        {
          exhibit_code: "IT145",
          x: 0,
          y: 2
        },
        {
          exhibit_code: "IT144",
          x: 0,
          y: 4
        },
        {
          exhibit_code: "IT143",
          x: 0,
          y: 5
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
          exhibit_code: "IT045",
          x: 5,
          y: 4
        },
        {
          exhibit_code: "IT046",
          x: 5,
          y: 7
        },
      ]
    end
    json
  end

end
