class SightingSerializer

    def initialize(sighting_obj)
        @sighting = sighting_obj
    end

    def to_serialized_json
        @sighting.to_json(
            :include => {
                :bird => {:only => [:name, :species]},
                :location => {:only => [:latitude, :longitude]}},
            :except => [:updated_at])
    end
end
