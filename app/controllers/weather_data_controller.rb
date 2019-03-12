class WeatherDataController < ApplicationController
    def show
        render :json => filter_data
    end
    
    private
    
    def filter_data
        data = nil
        filter_limit = params[:limit]
        if params[:q].present?
            data = WeatherData.select(params[:q].gsub(/\s+|\%20/, ', ')).limit(filter_limit)
        else
            data = WeatherData.all.limit(filter_limit)
        end
        if params[:sort_type].present?
            data = data.order("#{params[:sort_type]} #{params[:sort_order]}")
        end
        return data
    end
end
