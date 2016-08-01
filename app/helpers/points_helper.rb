module PointsHelper

def get_point_style(point)
    
    if point.side == "right"
        side = "panel panel-info"
        
    elsif point.side == "left" 
         side = "panel panel-danger" 
         
     elsif point.side == "neutral" 
         side = "panel panel-success" 
    
    else 
        side = "panel panel-warning" 
    
    end 
    
end

def get_new_point_style(side)
    
    if side == "left"
        "panel panel-danger"
    
    elsif side == "right"
        "panel panel-info"
    
    elsif side == "neutral"
        "panel panel-success"
    
    else
        "pane panel-warning"  
    end

end

end