
class Languages {
    Languages({
        this.jpn,
    });

    String? jpn;

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        jpn: json["jpn"],
    );

    Map<String, dynamic> toJson() => {
        "jpn": jpn,
    };
}
