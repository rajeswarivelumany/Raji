class  NameListFilter < WillFilter::Filter

  def model_class
    NameList 
  end


  
  def default_filters
    [
     ["Male Only", "male_only"],
     ["Female Only", "female_only"]
    ]
  end
  
  def default_filter_conditions(key)
    return [:gender, :is, "male"] if (key == "male_only")
    return [:gender, :is, "Female"] if (key == "female_only")   
  end
    
end
