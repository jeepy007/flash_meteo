class Name {
    Name({
        this.common,
        this.official,
        
    });

    String? common;
    String? official;
    

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        
    };
}
