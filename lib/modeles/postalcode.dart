
class PostalCode {
    PostalCode({
        this.format,
        this.regex,
    });

    String? format;
    String? regex;

    factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
    );

    Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
    };
}
